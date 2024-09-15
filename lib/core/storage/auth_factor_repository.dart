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

import 'package:blink_comparison/core/entity/auth_factor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_factor_repository.freezed.dart';

abstract class AuthFactorRepository {
  AuthFactorModifyResult set(MutableAuthFactor key);

  AuthFactorModifyResult remove();

  AuthFactor? get();

  bool hasSecureKey();
}

@freezed
sealed class AuthFactorModifyResult with _$AuthFactorModifyResult {
  factory AuthFactorModifyResult.success() = AuthFactorModifyResultSuccess;

  factory AuthFactorModifyResult.failed({
    required Object error,
    required StackTrace stackTrace,
  }) = AuthFactorModifyResultFailed;
}

@Singleton(as: AuthFactorRepository)
class AuthFactorRepositoryImpl implements AuthFactorRepository {
  MutableAuthFactor? _key;

  @override
  AuthFactorModifyResult set(MutableAuthFactor key) {
    try {
      _key?.dispose();
      _key = key;
      return AuthFactorModifyResult.success();
    } catch (e, stackTrace) {
      return AuthFactorModifyResult.failed(error: e, stackTrace: stackTrace);
    }
  }

  @override
  AuthFactorModifyResult remove() {
    try {
      _key?.dispose();
      _key = null;
      return AuthFactorModifyResult.success();
    } catch (e, stackTrace) {
      return AuthFactorModifyResult.failed(error: e, stackTrace: stackTrace);
    }
  }

  @override
  AuthFactor? get() => _key?.toImmutable();

  @override
  bool hasSecureKey() => _key != null;
}
