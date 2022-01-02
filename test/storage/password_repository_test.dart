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

import 'dart:typed_data';

import 'package:blink_comparison/core/encrypt/encrypt.dart';
import 'package:blink_comparison/core/encrypt/password_hasher.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/app_database.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_memory.dart';

import '../mock/mock.dart';

void main() {
  group('Password repository |', () {
    late Database db;
    late SaltGenerator mockSaltGenerator;
    late PasswordHasher mockHasher;
    late PasswordRepository repo;

    setUp(() async {
      db = await newDatabaseFactoryMemory().openDatabase('test.db');
      mockSaltGenerator = MockSaltGenerator();
      mockHasher = MockPasswordHasher();
      repo = PasswordRepositoryImpl(
        AppDatabaseImpl(db),
        mockSaltGenerator,
        mockHasher,
      );
    });

    tearDown(() {
      db.close();
    });

    test('Insert encrypt key', () async {
      const password = 'test';
      final salt = Uint8List.fromList([1, 2, 3]);
      final expectedInfo = PasswordInfo(
        id: 'encrypt_key',
        hash: 'hash',
        salt: hex.encode(salt),
      );
      when(
        () => mockSaltGenerator.randomBytes(),
      ).thenReturn(salt);
      when(
        () => mockHasher.calculate(password: password, salt: salt),
      ).thenAnswer((_) async => expectedInfo.hash);

      expect(
        await repo.insert(
          type: const PasswordType.encryptKey(),
          password: password,
        ),
        StorageResult(expectedInfo),
      );
      expect(
        await repo.getByType(const PasswordType.encryptKey()),
        StorageResult<PasswordInfo?>(expectedInfo),
      );
    });

    test('Replace existing encrypt key', () async {
      const password = 'test';
      final salt = Uint8List.fromList([1, 2, 3]);
      final expectedInfo1 = PasswordInfo(
        id: 'encrypt_key',
        hash: 'hash1',
        salt: hex.encode(salt),
      );
      final expectedInfo2 = PasswordInfo(
        id: 'encrypt_key',
        hash: 'hash2',
        salt: hex.encode(salt),
      );
      when(
        () => mockSaltGenerator.randomBytes(),
      ).thenReturn(salt);
      when(
        () => mockHasher.calculate(password: password, salt: salt),
      ).thenAnswer((_) async => expectedInfo1.hash);

      expect(
        await repo.insert(
          type: const PasswordType.encryptKey(),
          password: password,
        ),
        StorageResult(expectedInfo1),
      );
      expect(
        await repo.getByType(const PasswordType.encryptKey()),
        StorageResult<PasswordInfo?>(expectedInfo1),
      );

      when(
        () => mockHasher.calculate(password: password, salt: salt),
      ).thenAnswer((_) async => expectedInfo2.hash);

      expect(
        await repo.insert(
          type: const PasswordType.encryptKey(),
          password: password,
        ),
        StorageResult(expectedInfo2),
      );
      expect(
        await repo.getByType(const PasswordType.encryptKey()),
        StorageResult<PasswordInfo?>(expectedInfo2),
      );
    });

    test('Delete', () async {
      const password = 'test';
      final salt = Uint8List.fromList([1, 2, 3]);
      final expectedInfo = PasswordInfo(
        id: 'encrypt_key',
        hash: 'hash',
        salt: hex.encode(salt),
      );
      when(
        () => mockSaltGenerator.randomBytes(),
      ).thenReturn(salt);
      when(
        () => mockHasher.calculate(password: password, salt: salt),
      ).thenAnswer((_) async => expectedInfo.hash);

      expect(
        await repo.insert(
          type: const PasswordType.encryptKey(),
          password: password,
        ),
        StorageResult(expectedInfo),
      );
      expect(
        await repo.getByType(const PasswordType.encryptKey()),
        StorageResult<PasswordInfo?>(expectedInfo),
      );

      expect(await repo.delete(expectedInfo), StorageResult.empty);
      expect(
        await repo.getByType(const PasswordType.encryptKey()),
        const StorageResult<PasswordInfo?>(null),
      );
    });
  });
}
