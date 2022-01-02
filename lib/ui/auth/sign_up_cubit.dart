// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_cubit.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial({
    @Default(Password()) Password password,
    @Default(RepeatPassword()) RepeatPassword repeatPassword,
  }) = SignUpStateInitial;

  const factory SignUpState.passwordChanged({
    required Password password,
    required RepeatPassword repeatPassword,
  }) = SignUpStatePasswordChanged;

  const factory SignUpState.invalidPassword({
    required Password password,
    required RepeatPassword repeatPassword,
  }) = SignUpStateInvalidPassword;

  const factory SignUpState.passwordMismatch({
    required Password password,
    required RepeatPassword repeatPassword,
  }) = SignUpStatePasswordMismatch;

  const factory SignUpState.savingPassword() = SignUpStateSavingPassword;

  const factory SignUpState.passwordSaved() = SignUpStatePasswordSaved;

  const factory SignUpState.savePasswordFailed({
    required Password password,
    required RepeatPassword repeatPassword,
    Exception? exception,
    StackTrace? stackTrace,
  }) = SignUpStateSavePasswordFailed;
}

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final PasswordRepository _passwordRepo;

  SignUpCubit(this._passwordRepo) : super(const SignUpState.initial());

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
    await state.when(
      initial: _submit,
      passwordChanged: _submit,
      invalidPassword: _submit,
      savePasswordFailed: (password, repeatPassword, exception, stackTrace) =>
          _submit(password, repeatPassword),
      savingPassword: () {},
      passwordSaved: () {},
      passwordMismatch: (password, repeatPassword) =>
          _submit(password, repeatPassword),
    );
  }

  Future<void> _submit(
    Password password,
    RepeatPassword repeatPassword,
  ) async {
    final passRes = PasswordValidator.of(password).validate();
    final repeatPassRes = RepeatPasswordValidator.of(repeatPassword).validate();

    PasswordError? passErr;
    RepeatPasswordError? repeatPassErr;
    String? passwordStr;
    String? repeatPasswordStr;

    passRes.when(
      success: (value) {
        passwordStr = value;
      },
      error: (reason) {
        passErr = reason;
      },
    );
    repeatPassRes.when(
      success: (value) {
        repeatPasswordStr = value;
      },
      error: (reason) {
        repeatPassErr = reason;
      },
    );

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
    final res = await _passwordRepo.insert(
      type: const PasswordType.encryptKey(),
      password: passwordStr!,
    );
    res.when(
      (value) => emit(const SignUpState.passwordSaved()),
      error: (e) => e.when(
        database: (exception, stackTrace) {
          emit(
            SignUpState.savePasswordFailed(
              password: password,
              repeatPassword: repeatPassword,
              exception: exception,
              stackTrace: stackTrace,
            ),
          );
        },
        fs: (e) => e.when(io: (e, stackTrace) {
          emit(
            SignUpState.savePasswordFailed(
              password: password,
              repeatPassword: repeatPassword,
              exception: e,
              stackTrace: stackTrace,
            ),
          );
        }),
      ),
    );
  }

  void _handleCurrentState(void Function(Password, RepeatPassword) onEmit) {
    state.when(
      initial: onEmit,
      passwordChanged: onEmit,
      invalidPassword: onEmit,
      savePasswordFailed: (password, repeatPassword, exception, stackTrace) =>
          onEmit(password, repeatPassword),
      passwordMismatch: (password, repeatPassword) =>
          onEmit(password, repeatPassword),
      savingPassword: () {},
      passwordSaved: () {},
    );
  }
}

@freezed
class Password with _$Password {
  static const minLength = 4;

  static const maxLength = 128;

  const factory Password({
    @Default('') String value,
    PasswordError? error,
  }) = _Password;
}

@freezed
class RepeatPassword with _$RepeatPassword {
  const factory RepeatPassword({
    @Default('') String value,
    RepeatPasswordError? error,
  }) = _RepeatPassword;
}

@freezed
class PasswordError with _$PasswordError {
  const factory PasswordError.empty() = PasswordErrorEmpty;

  const factory PasswordError.tooShort() = PasswordErrorTooShort;

  const factory PasswordError.tooLong() = PasswordErrorTooLong;
}

@freezed
class RepeatPasswordError with _$RepeatPasswordError {
  const factory RepeatPasswordError.empty() = RepeatPasswordErrorEmpty;

  const factory RepeatPasswordError.mismatch() = RepeatPasswordErrorMismatch;
}

@freezed
class PasswordValidateResult with _$PasswordValidateResult {
  const factory PasswordValidateResult.success({
    required String password,
  }) = PasswordValidateResultSuccess;
  const factory PasswordValidateResult.error({
    required PasswordError reason,
  }) = PasswordValidateResultError;
}

class PasswordValidator {
  final Password password;

  PasswordValidator.of(this.password);

  PasswordValidateResult validate() {
    if (password.value.isEmpty) {
      return const PasswordValidateResult.error(
        reason: PasswordError.empty(),
      );
    } else if (_tooShort(password)) {
      return const PasswordValidateResult.error(
        reason: PasswordError.tooShort(),
      );
    } else if (_tooLong(password)) {
      return const PasswordValidateResult.error(
        reason: PasswordError.tooLong(),
      );
    }
    return PasswordValidateResult.success(
      password: password.value,
    );
  }

  bool _tooShort(Password password) =>
      password.value.length < Password.minLength;

  bool _tooLong(Password password) =>
      password.value.length > Password.maxLength;
}

@freezed
class RepeatPasswordValidateResult with _$RepeatPasswordValidateResult {
  const factory RepeatPasswordValidateResult.success({
    required String password,
  }) = RepeatPasswordValidateResultSuccess;
  const factory RepeatPasswordValidateResult.error({
    required RepeatPasswordError reason,
  }) = RepeatPasswordValidateResultError;
}

class RepeatPasswordValidator {
  final RepeatPassword password;

  RepeatPasswordValidator.of(this.password);

  RepeatPasswordValidateResult validate() {
    if (password.value.isEmpty) {
      return const RepeatPasswordValidateResult.error(
        reason: RepeatPasswordError.empty(),
      );
    }
    return RepeatPasswordValidateResult.success(
      password: password.value,
    );
  }
}
