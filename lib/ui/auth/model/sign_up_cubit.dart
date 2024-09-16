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

import 'dart:convert';

import 'package:blink_comparison/core/encrypt/secure_key_factory.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/core/utils.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_state.dart';
import 'package:bloc/bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final PasswordRepository _passwordRepo;
  final AuthFactorRepository _factorRepo;
  final SecureKeyFactory _keyFactory;

  SignUpCubit(this._passwordRepo, this._factorRepo, this._keyFactory)
      : super(const SignUpState.initial());

  void passwordChanged(String value) {
    _handleCurrentState((password, repeatPassword) {
      emit(
        SignUpState.passwordChanged(
          password: Password(value: value),
          repeatPassword: repeatPassword,
        ),
      );
    });
  }

  void repeatPasswordChanged(String value) {
    _handleCurrentState((password, repeatPassword) {
      emit(
        SignUpState.passwordChanged(
          password: password,
          repeatPassword: RepeatPassword(value: value),
        ),
      );
    });
  }

  Future<void> submit() async {
    if (state
        case SignUpStateInitial(:final password, :final repeatPassword) ||
            SignUpStatePasswordChanged(
              :final password,
              :final repeatPassword
            ) ||
            SignUpStateInvalidPassword(
              :final password,
              :final repeatPassword
            ) ||
            SignUpStatePasswordMismatch(
              :final password,
              :final repeatPassword
            ) ||
            SignUpStateSavePasswordFailed(
              :final password,
              :final repeatPassword
            )) {
      await _submit(password, repeatPassword);
    }
  }

  Future<void> _submit(
    Password password,
    RepeatPassword repeatPassword,
  ) async {
    final _PasswordValidationResult(
      password: passwordStr,
      repeatPassword: repeatPasswordStr,
      :passErr,
      :repeatPassErr
    ) = _validate(password, repeatPassword);

    if (passwordStr == null || repeatPasswordStr == null) {
      emit(
        SignUpState.invalidPassword(
          password: password.copyWith(error: passErr),
          repeatPassword: repeatPassword.copyWith(error: repeatPassErr),
        ),
      );
      return;
    }

    if (passwordStr != repeatPasswordStr) {
      emit(
        SignUpState.passwordMismatch(
          password: password,
          repeatPassword: repeatPassword.copyWith(
            error: const RepeatPasswordError.mismatch(),
          ),
        ),
      );
      return;
    }

    emit(const SignUpState.savingPassword());
    final pwBytes = utf8.encode(passwordStr);
    late final SecureKey pwKey;
    try {
      pwKey = _keyFactory.fromList(pwBytes);
      final res = await _passwordRepo.insert(
        type: const PasswordType.encryptKey(),
        password: pwKey.toImmutable(),
      );
      switch (res) {
        case StorageResultValue():
          final res = _factorRepo.set(MutableAuthFactor.password(value: pwKey));
          final newState = switch (res) {
            AuthFactorModifyResultSuccess() =>
              const SignUpState.savedAndAuthorized(),
            AuthFactorModifyResultFailed(:final error, :final stackTrace) =>
              SignUpState.savePasswordFailed(
                password: password,
                repeatPassword: repeatPassword,
                error: error,
                stackTrace: stackTrace,
              ),
          };
          emit(newState);
        case StorageResultError(:final error):
          final newState = switch (error) {
            StorageErrorDatabase(:final exception, :final stackTrace) =>
              SignUpState.savePasswordFailed(
                password: password,
                repeatPassword: repeatPassword,
                error: exception,
                stackTrace: stackTrace,
              ),
            StorageErrorFs(:final error) => switch (error) {
                FsErrorIO(:final exception, :final stackTrace) =>
                  SignUpState.savePasswordFailed(
                    password: password,
                    repeatPassword: repeatPassword,
                    error: exception,
                    stackTrace: stackTrace,
                  ),
              },
          };
          emit(newState);
      }
    } finally {
      pwBytes.zeroing();
    }
  }

  _PasswordValidationResult _validate(
    Password password,
    RepeatPassword repeatPassword,
  ) {
    final passRes = PasswordValidator.of(password).validate();
    final repeatPassRes = RepeatPasswordValidator.of(repeatPassword).validate();

    PasswordError? passErr;
    RepeatPasswordError? repeatPassErr;
    String? passwordStr;
    String? repeatPasswordStr;

    switch (passRes) {
      case PasswordValidateResultSuccess(:final password):
        passwordStr = password;
      case PasswordValidateResultError(:final reason):
        passErr = reason;
    }
    switch (repeatPassRes) {
      case RepeatPasswordValidateResultSuccess(:final password):
        repeatPasswordStr = password;
      case RepeatPasswordValidateResultError(:final reason):
        repeatPassErr = reason;
    }

    return _PasswordValidationResult(
      password: passwordStr,
      repeatPassword: repeatPasswordStr,
      passErr: passErr,
      repeatPassErr: repeatPassErr,
    );
  }

  void _handleCurrentState(void Function(Password, RepeatPassword) onEmit) {
    if (state
        case SignUpStateInitial(
              :final password,
              :final repeatPassword,
            ) ||
            SignUpStatePasswordChanged(
              :final password,
              :final repeatPassword,
            ) ||
            SignUpStateInvalidPassword(
              :final password,
              :final repeatPassword,
            ) ||
            SignUpStateSavePasswordFailed(
              :final password,
              :final repeatPassword,
            ) ||
            SignUpStatePasswordMismatch(
              :final password,
              :final repeatPassword,
            )) {
      onEmit(password, repeatPassword);
    }
  }
}

class _PasswordValidationResult {
  final String? password;
  final String? repeatPassword;
  final PasswordError? passErr;
  final RepeatPasswordError? repeatPassErr;

  _PasswordValidationResult({
    required this.password,
    required this.repeatPassword,
    required this.passErr,
    required this.repeatPassErr,
  });
}
