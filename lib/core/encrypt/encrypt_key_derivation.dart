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

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_sodium/flutter_sodium.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'encrypt_key_derivation.freezed.dart';

abstract class EncryptKeyDerivation {
  Future<Uint8List> derive({
    required String password,
    required Uint8List salt,
    required int keyLength,
  });

  Uint8List deriveSync({
    required String password,
    required Uint8List salt,
    required int keyLength,
  });
}

const _sodiumOpslimitModerate = 2;
const _sodiumMemlimitModerate = 67108864; // 64 MiB

@Injectable(as: EncryptKeyDerivation)
class EncryptKeyDerivationImpl implements EncryptKeyDerivation {
  /// Used Argon2id 1.3 algorithm. Requires 64 MiB of dedicated RAM.
  @override
  Future<Uint8List> derive({
    required String password,
    required Uint8List salt,
    required int keyLength,
  }) async {
    return compute(
      _calculate,
      _SodiumHashInfo(
        password: password,
        salt: salt,
        keyLength: keyLength,
      ),
    );
  }

  @override
  Uint8List deriveSync({
    required String password,
    required Uint8List salt,
    required int keyLength,
  }) =>
      _calculate(
        _SodiumHashInfo(
          password: password,
          salt: salt,
          keyLength: keyLength,
        ),
      );
}

@freezed
class _SodiumHashInfo with _$_SodiumHashInfo {
  const factory _SodiumHashInfo({
    required String password,
    required Uint8List salt,
    required int keyLength,
  }) = _SodiumHashInfoData;
}

Uint8List _calculate(_SodiumHashInfo info) {
  final hash = PasswordHash.hashString(
    info.password,
    info.salt,
    outlen: info.keyLength,
    opslimit: _sodiumOpslimitModerate,
    memlimit: _sodiumMemlimitModerate,
    alg: PasswordHashAlgorithm.Argon2id13,
  );
  return hash;
}
