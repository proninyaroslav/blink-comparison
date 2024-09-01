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
import 'package:blink_comparison/core/encrypt/encrypt_module.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sodium_libs/sodium_libs_sumo.dart';

import '../mock/mock.dart';
import 'load_sodium.dart';

void main() {
  group('Encrypt module |', () {
    late EncryptKeyDerivation mockDerivation;
    late final SodiumSumo sodium;

    setUpAll(() async {
      sodium = await loadSodiumSumo();
      mockDerivation = MockEncryptKeyDerivation();
    });

    setUp(() {
      mockDerivation = MockEncryptKeyDerivation();
    });

    group('Password-based encryption (PBE) |', () {
      test('Encrypt and decrypt', () async {
        const keyLength = 32;
        // 16 KB + 1 byte (unaligned size)
        final bytes = Uint8List.fromList(List.generate(16385, (i) => i));
        final pwValue = SecureKey.fromList(sodium, utf8.encode('password'));
        final password = MutableAuthFactor.password(value: pwValue);
        final pbe = PBEModule(
          sodium,
          password.toImmutable() as AuthFactorPassword,
          mockDerivation,
        );
        final info = RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryptSalt: '01234567890abcdf',
        );
        when(
          () => mockDerivation.derive(
            password: password.value.toImmutable(),
            salt: Uint8List.fromList(hex.decode(info.encryptSalt)),
            keyLength: keyLength,
          ),
        ).thenAnswer(
          (_) async => SecureKey.fromList(
            sodium,
            Uint8List.fromList(List.generate(keyLength, (i) => i)),
          ),
        );

        final res = await pbe.encrypt(src: bytes, info: info);
        await res.when(
          success: (encBytes) async {
            final res = await pbe.decrypt(src: encBytes, info: info);
            res.when(
              success: (decBytes) => expect(decBytes, bytes),
              fail: (error) => throw error,
            );
          },
          fail: (error) => throw error,
        );
      });

      test('Decrypt with wrong key', () async {
        const keyLength = 32;
        final bytesList = List.generate(keyLength, (i) => i);
        final key = SecureKey.fromList(sodium, Uint8List.fromList(bytesList));
        bytesList
          ..removeLast()
          ..add(0);
        final wrongKey = SecureKey.fromList(
          sodium,
          Uint8List.fromList(bytesList),
        );
        // 16 KB + 1 byte (unaligned size)
        final bytes = Uint8List.fromList(List.generate(16385, (i) => i));
        final pwValue = SecureKey.fromList(sodium, utf8.encode('password'));
        final password = MutableAuthFactor.password(value: pwValue);
        final pbe = PBEModule(
          sodium,
          password.toImmutable() as AuthFactorPassword,
          mockDerivation,
        );
        final info = RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryptSalt: '01234567890abcdf',
        );
        final keys = [key, wrongKey];
        final iter = keys.iterator;
        when(
          () => mockDerivation.derive(
            password: password.value.toImmutable(),
            salt: Uint8List.fromList(hex.decode(info.encryptSalt)),
            keyLength: keyLength,
          ),
        ).thenAnswer((_) async {
          iter.moveNext();
          return iter.current;
        });

        final res = await pbe.encrypt(src: bytes, info: info);
        await res.when(
          success: (encBytes) async {
            final res = await pbe.decrypt(src: encBytes, info: info);
            return res.when(
              success: (decBytes) => fail('Decryption should not succeed'),
              fail: (error) {},
            );
          },
          fail: (error) => throw error,
        );
      });

      test('Decrypt unencrypted data ', () async {
        const keyLength = 32;
        // 16 KB + 1 byte (unaligned size)
        final bytes = Uint8List.fromList(List.generate(16385, (i) => i));
        final pwValue = SecureKey.fromList(sodium, utf8.encode('password'));
        final password = MutableAuthFactor.password(value: pwValue);
        final pbe = PBEModule(
          sodium,
          password.toImmutable() as AuthFactorPassword,
          mockDerivation,
        );
        final info = RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryptSalt: '01234567890abcdf',
        );
        when(
          () => mockDerivation.derive(
            password: password.value.toImmutable(),
            salt: Uint8List.fromList(hex.decode(info.encryptSalt)),
            keyLength: keyLength,
          ),
        ).thenAnswer(
          (_) async => SecureKey.fromList(
            sodium,
            Uint8List.fromList(List.generate(keyLength, (i) => i)),
          ),
        );

        final res = await pbe.decrypt(src: bytes, info: info);
        res.when(
          success: (decBytes) => fail('Decryption should not succeed'),
          fail: (error) {},
        );
      });
    });
  });
}
