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
import 'dart:typed_data';

import 'package:blink_comparison/core/entity/secure_key.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sodium_libs/sodium_libs_sumo.dart';

part 'encrypt_key_derivation.freezed.dart';

abstract class EncryptKeyDerivation {
  Future<SecureKey> derive({
    required ImmutableSecureKey password,
    required Uint8List salt,
    required int keyLength,
  });
}

const _sodiumOpslimitModerate = 2;
const _sodiumMemlimitModerate = 67108864; // 64 MiB

@Injectable(as: EncryptKeyDerivation)
class EncryptKeyDerivationImpl implements EncryptKeyDerivation {
  final SodiumSumo _sodium;

  EncryptKeyDerivationImpl(this._sodium);

  /// Used Argon2id 1.3 algorithm. Requires 64 MiB of dedicated RAM.
  @override
  Future<SecureKey> derive({
    required ImmutableSecureKey password,
    required Uint8List salt,
    required int keyLength,
  }) async => _sodium.runIsolated(
    (sodium, secureKeys, keyPairs) => _calculate(
      sodium,
      _SodiumHashInfo(
        password: secureKeys.first,
        salt: salt,
        keyLength: keyLength,
      ),
    ),
    secureKeys: [password],
  );
}

// Runs in Isolate
Future<SecureKey> _calculate(SodiumSumo sodium, _SodiumHashInfo info) async =>
    sodium.crypto.pwhash(
      password: Int8List.fromList(info.password.extractBytes()),
      salt: info.salt,
      outLen: info.keyLength,
      opsLimit: _sodiumOpslimitModerate,
      memLimit: _sodiumMemlimitModerate,
      alg: CryptoPwhashAlgorithm.argon2id13,
    );

@freezed
abstract class _SodiumHashInfo with _$SodiumHashInfo {
  const factory _SodiumHashInfo({
    required SecureKey password,
    required Uint8List salt,
    required int keyLength,
  }) = _SodiumHashInfoData;
}
