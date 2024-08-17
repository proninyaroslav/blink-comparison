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
import 'dart:typed_data';

import 'package:blink_comparison/core/encrypt/encrypt_key_derivation.dart';
import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';

import 'load_sodium.dart';

void main() {
  group('Encrypt key derivation |', () {
    late final EncryptKeyDerivation hasher;

    setUpAll(() async {
      hasher = EncryptKeyDerivationImpl(await loadSodiumSumo());
    });

    test('Derive', () async {
      final expectedKey = Uint8List.fromList(
        hex.decode('d5a502df3c21c4e50659134bd41b756e'),
      );
      final salt = Uint8List.fromList(utf8.encode('01234567890abcdf'));
      expect(
        await hasher.derive(password: 'test', salt: salt, keyLength: 16),
        expectedKey,
      );
    });
  });
}
