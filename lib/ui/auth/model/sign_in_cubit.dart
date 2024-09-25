// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/core/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:convert/convert.dart';

import 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  static const _authFailedDelay = Duration(seconds: 3);

  final PasswordRepository _passwordRepo;
  final PasswordHasher _hasher;
  final DateTimeProvider _dateTimeProvider;
  final AuthFactorRepository _factorRepo;
  final SecureKeyFactory _keyFactory;

  SignInCubit(
    this._passwordRepo,
    this._hasher,
    this._dateTimeProvider,
    this._factorRepo,
    this._keyFactory,
  ) : super(const SignInState.initial());

  Future<void> load() async {
    final res = await _passwordRepo.getByType(const PasswordType.encryptKey());
    final newState = switch (res) {
      StorageResultValue(:final value?) =>
        SignInState.passwordLoaded(info: value),
      StorageResultValue() => const SignInState.noPasswordError(),
      StorageResultError(:final error) => switch (error) {
          StorageErrorDatabase(:final exception, :final stackTrace) =>
            SignInState.loadPasswordFailed(
              exception: exception,
              stackTrace: stackTrace,
            ),
          StorageErrorFs(:final error) => switch (error) {
              FsErrorIO(:final exception, :final stackTrace) =>
                SignInState.loadPasswordFailed(
                  exception: exception,
                  stackTrace: stackTrace,
                ),
            }
        }
    };
    emit(newState);
  }

  Future<void> auth(String password) async {
    switch (state) {
      case SignInStatePasswordLoaded(:final info) ||
            SignInStateAuthFailed(:final info):
        await _auth(password, info);
      case SignInStateAuthInProgress() || SignInStateAuthSuccess():
        break;
      case _:
        emit(const SignInState.passwordNotLoaded());
    }
  }

  Future<void> _auth(String password, PasswordInfo info) async {
    emit(SignInState.authInProgress(info: info));
    if (password.isEmpty) {
      emit(SignInState.authFailed(
        info: info,
        reason: const SignInError.emptyPassword(),
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
          AuthFactorModifyResultSuccess() =>
            SignInState.authSuccess(info: info),
          AuthFactorModifyResultFailed(:final error, :final stackTrace) =>
            SignInState.authFailed(
              info: info,
              reason: SignInError.exception(
                error: error,
                stackTrace: stackTrace,
              ),
            )
        });
      } else {
        await _delayAfterFailed(startTime);
        emit(SignInState.authFailed(
          info: info,
          reason: const SignInError.wrongPassword(),
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
