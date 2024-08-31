// Copyright (C) 2022-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
//
// This file is part of Blink Comparison.
//
// Blink Comparison is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Blink Comparison is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Blink Comparison.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:blink_comparison/core/date_time_provider.dart';
import 'package:blink_comparison/core/encrypt/password_hasher.dart';
import 'package:blink_comparison/core/encrypt/secure_key_factory.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/core/utils.dart';
import 'package:blink_comparison/ui/auth/model/auth_state.dart';
import 'package:bloc/bloc.dart';
import 'package:convert/convert.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  static const _authFailedDelay = Duration(seconds: 3);

  final PasswordRepository _passwordRepo;
  final PasswordHasher _hasher;
  final DateTimeProvider _dateTimeProvider;
  final AuthFactorRepository _factorRepo;
  final SecureKeyFactory _keyFactory;

  AuthCubit(
    this._passwordRepo,
    this._hasher,
    this._dateTimeProvider,
    this._factorRepo,
    this._keyFactory,
  ) : super(const AuthState.initial());

  Future<void> loadPassword() async {
    final res = await _passwordRepo.getByType(const PasswordType.encryptKey());
    res.when(
      (info) {
        emit(
          info == null
              ? const AuthState.noPassword()
              : AuthState.passwordLoaded(info: info),
        );
      },
      error: (e) => e.when(
        database: (e, stackTrace) {
          emit(
            AuthState.loadPasswordFailed(
              exception: e,
              stackTrace: stackTrace,
            ),
          );
        },
        fs: (e) => e.when(io: (e, stackTrace) {
          emit(
            AuthState.loadPasswordFailed(
              exception: e,
              stackTrace: stackTrace,
            ),
          );
        }),
      ),
    );
  }

  Future<void> auth(String password) async {
    await state.maybeWhen(
      passwordLoaded: (info) => _auth(password, info),
      authInProgress: (info) {},
      authSuccess: (info) {},
      authFailed: (info, reason) => _auth(password, info),
      orElse: () async => emit(const AuthState.passwordNotLoaded()),
    );
  }

  Future<void> _auth(String password, PasswordInfo info) async {
    emit(AuthState.authInProgress(info: info));
    if (password.isEmpty) {
      emit(AuthState.authFailed(
        info: info,
        reason: const AuthError.emptyPassword(),
      ));
      return;
    }
    final startTime = _dateTimeProvider.now().toUtc();
    final pwBytes = utf8.encode(password);
    late final SecureKey pwKey;
    late final SecureKey pwHashKey;
    try {
      pwKey = _keyFactory.fromList(pwBytes);
      pwHashKey = await _hasher.calculate(
        password: pwKey.toImmutable(),
        salt: Uint8List.fromList(hex.decode(info.salt)),
      );
      final hash = hex.encode(pwHashKey.extractBytes());
      if (hash == info.hash) {
        final res = _factorRepo.set(
          MutableAuthFactor.password(
            value: _keyFactory.fromList(pwBytes),
          ),
        );
        emit(switch (res) {
          AuthFactorModifyResultSuccess() => AuthState.authSuccess(info: info),
          AuthFactorModifyResultFailed(:final error, :final stackTrace) =>
            AuthState.authFailed(
              info: info,
              reason: AuthError.exception(
                error: error,
                stackTrace: stackTrace,
              ),
            )
        });
      } else {
        await _delayAfterFailed(startTime);
        emit(AuthState.authFailed(
          info: info,
          reason: const AuthError.wrongPassword(),
        ));
      }
    } finally {
      pwBytes.zeroing();
      pwKey.dispose();
      pwHashKey.dispose();
    }
  }

  Future<void> _delayAfterFailed(DateTime startTime) async {
    final endTime = _dateTimeProvider.now().toUtc();
    final calcDuration = endTime.difference(startTime);
    final delay = _authFailedDelay - calcDuration;
    if (!delay.isNegative) {
      await Future.delayed(delay);
    }
  }
}
