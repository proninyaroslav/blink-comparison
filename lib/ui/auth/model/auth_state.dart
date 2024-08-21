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

import 'package:blink_comparison/core/entity/entity.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthStateInitial;

  const factory AuthState.noPassword() = AuthStateNoPassword;

  const factory AuthState.passwordNotLoaded() = AuthStatePasswordNotLoaded;

  const factory AuthState.passwordLoaded({
    required PasswordInfo info,
  }) = AuthStatePasswordLoaded;

  const factory AuthState.loadPasswordFailed({
    Exception? exception,
    StackTrace? stackTrace,
  }) = AuthStateLoadPasswordFailed;

  const factory AuthState.authInProgress({
    required PasswordInfo info,
  }) = AuthStateAuthInProgress;

  const factory AuthState.authSuccess({
    required PasswordInfo info,
  }) = AuthStateAuthSuccess;

  const factory AuthState.authFailed({
    required PasswordInfo info,
    required AuthError reason,
  }) = AuthStateAuthFailed;
}

@freezed
class AuthError with _$AuthError {
  const factory AuthError.emptyPassword() = _AuthErrorEmptyPassword;

  const factory AuthError.wrongPassword() = _AuthErrorWrongPassword;
}
