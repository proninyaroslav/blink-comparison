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

import 'package:blink_comparison/core/entity/entity.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
sealed class SignInState with _$SignInState {
  const factory SignInState.initial() = SignInStateInitial;

  const factory SignInState.passwordNotLoaded() = SignInStatePasswordNotLoaded;

  const factory SignInState.passwordLoaded({
    required PersistentAuthFactor info,
  }) = SignInStatePasswordLoaded;

  const factory SignInState.noPasswordError() = SignInStateNoPasswordError;

  const factory SignInState.loadPasswordFailed({
    Exception? exception,
    StackTrace? stackTrace,
  }) = SignInStateLoadPasswordFailed;

  const factory SignInState.authInProgress({
    required PersistentAuthFactor info,
  }) = SignInStateAuthInProgress;

  const factory SignInState.authSuccess({
    required PersistentAuthFactor info,
  }) = SignInStateAuthSuccess;

  const factory SignInState.authFailed({
    required PersistentAuthFactor info,
    required SignInError reason,
  }) = SignInStateAuthFailed;
}

@freezed
sealed class SignInError with _$SignInError {
  const factory SignInError.emptyPassword() = SignInErrorEmptyPassword;

  const factory SignInError.wrongPassword() = SignInErrorWrongPassword;

  const factory SignInError.exception({
    required Object error,
    required StackTrace stackTrace,
  }) = SignInErrorException;
}
