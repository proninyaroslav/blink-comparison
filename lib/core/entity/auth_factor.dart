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

import 'package:blink_comparison/core/annotations/annotations.dart';
import 'package:blink_comparison/core/entity/converter/secure_key_converter.dart';
import 'package:blink_comparison/core/entity/secure_key.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_factor.freezed.dart';
part 'auth_factor.g.dart';

@Freezed(
  equal: true,
  addImplicitFinal: false,
  makeCollectionsUnmodifiable: false,
  copyWith: false,
  toStringOverride: false,
)
sealed class MutableAuthFactor with _$MutableAuthFactor {
  MutableAuthFactor._();

  factory MutableAuthFactor.password({
    @SecureKeyConverter() required SecureKey value,
    @JsonKeyIgnore() @Default(false) @protected bool isDisposed,
  }) = MutableAuthFactorPassword;

  void dispose() {
    isDisposed = true;
    value.dispose();
  }

  MutableAuthFactor? copy() => switch (this) {
        MutableAuthFactorPassword(:final value, :final isDisposed) =>
          isDisposed ? null : MutableAuthFactor.password(value: value.copy())
      };

  AuthFactor toImmutable() {
    final key = this;
    return switch (key) {
      MutableAuthFactorPassword() => AuthFactorPassword(key)
    };
  }

  factory MutableAuthFactor.fromJson(Map<String, dynamic> json) =>
      _$MutableAuthFactorFromJson(json);
}

sealed class AuthFactor<K extends MutableAuthFactor> with EquatableMixin {
  final K _key;

  AuthFactor(this._key);

  MutableAuthFactor? copy() => _key.isDisposed ? null : _key.copy();
}

class AuthFactorPassword extends AuthFactor<MutableAuthFactorPassword> {
  AuthFactorPassword(super.key);

  ImmutableSecureKey? get value =>
      _key.isDisposed ? null : _key.value.toImmutable();

  @override
  List<Object?> get props => [_key];
}
