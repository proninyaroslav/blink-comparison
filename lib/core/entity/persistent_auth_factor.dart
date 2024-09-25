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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'persistent_auth_factor.freezed.dart';
part 'persistent_auth_factor.g.dart';

@freezed
sealed class PersistentAuthFactor with _$PersistentAuthFactor {
  const factory PersistentAuthFactor.password({
    @Default(PersistentAuthFactorId.password) PersistentAuthFactorId id,

    /// Currently used Argon2id hash
    required String hash,

    /// HEX-encoded salt.
    required String salt,
  }) = PersistentAuthFactorPassword;

  factory PersistentAuthFactor.fromJson(Map<String, dynamic> json) =>
      _$PersistentAuthFactorFromJson(json);
}

enum PersistentAuthFactorId {
  @JsonValue('encrypt_key')
  password._('encrypt_key');

  final String value;

  const PersistentAuthFactorId._(this.value);
}
