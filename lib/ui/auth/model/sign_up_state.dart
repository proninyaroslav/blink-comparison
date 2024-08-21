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

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

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
