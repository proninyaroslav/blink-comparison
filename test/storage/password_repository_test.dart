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

import 'package:blink_comparison/core/encrypt/encrypt.dart';
import 'package:blink_comparison/core/encrypt/password_hasher.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/app_database.dart';
import 'package:blink_comparison/core/storage/persistent_auth_factor_repository.dart';
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
    late PersistentAuthFactorRepository repo;

    setUp(() async {
      db = await newDatabaseFactoryMemory().openDatabase('test.db');
      mockSaltGenerator = MockSaltGenerator();
      mockHasher = MockPasswordHasher();
      repo = PersistentAuthFactorRepositoryImpl(
        AppDatabaseImpl(db),
        mockSaltGenerator,
        mockHasher,
      );
    });

    tearDown(() {
      db.close();
    });

    test('Insert encrypt key', () async {
      final password = TestSecureKey.fromList(utf8.encode('test'));
      final mutableFactor = MutableAuthFactor.password(value: password);
      final factor = mutableFactor.toImmutable();
      final salt = Uint8List.fromList([1, 2, 3]);
      final expectedInfo = PersistentAuthFactor.password(
        hash: hex.encode(password.list),
        salt: hex.encode(salt),
      );
      final expectedKey = MockSecureKey();
      when(() => expectedKey.extractBytes()).thenReturn(password.list);
      when(
        () => mockSaltGenerator.randomBytes(),
      ).thenReturn(salt);
      when(
        () => mockHasher.calculate(
          password: mutableFactor.value.toImmutable(),
          salt: salt,
        ),
      ).thenAnswer((_) async => expectedKey);

      expect(
        await repo.insert(factor),
        StorageResult(expectedInfo),
      );
      expect(
        await repo.getById(PersistentAuthFactorId.password),
        StorageResult<PersistentAuthFactor?>(expectedInfo),
      );
    });

    test('Replace existing encrypt key', () async {
      final password1 = TestSecureKey.fromList(utf8.encode('test1'));
      final password2 = TestSecureKey.fromList(utf8.encode('test2'));
      final mutableFactor1 = MutableAuthFactor.password(value: password1);
      final mutableFactor2 = MutableAuthFactor.password(value: password2);
      final factor1 = mutableFactor1.toImmutable();
      final factor2 = mutableFactor2.toImmutable();
      final salt = Uint8List.fromList([1, 2, 3]);
      final expectedInfo1 = PersistentAuthFactor.password(
        hash: hex.encode(password1.list),
        salt: hex.encode(salt),
      );
      final expectedInfo2 = PersistentAuthFactor.password(
        hash: hex.encode(password2.list),
        salt: hex.encode(salt),
      );
      final expectedKey1 = MockSecureKey();
      final expectedKey2 = MockSecureKey();
      when(() => expectedKey1.extractBytes()).thenReturn(password1.list);
      when(() => expectedKey2.extractBytes()).thenReturn(password2.list);
      when(
        () => mockSaltGenerator.randomBytes(),
      ).thenReturn(salt);
      when(
        () => mockHasher.calculate(
          password: mutableFactor1.value.toImmutable(),
          salt: salt,
        ),
      ).thenAnswer((_) async => expectedKey1);

      expect(
        await repo.insert(factor1),
        StorageResult(expectedInfo1),
      );
      expect(
        await repo.getById(PersistentAuthFactorId.password),
        StorageResult<PersistentAuthFactor?>(expectedInfo1),
      );

      when(
        () => mockHasher.calculate(
          password: mutableFactor2.value.toImmutable(),
          salt: salt,
        ),
      ).thenAnswer((_) async => expectedKey2);

      expect(
        await repo.insert(factor2),
        StorageResult(expectedInfo2),
      );
      expect(
        await repo.getById(PersistentAuthFactorId.password),
        StorageResult<PersistentAuthFactor?>(expectedInfo2),
      );
    });

    test('Delete', () async {
      final password = TestSecureKey.fromList(utf8.encode('test'));
      final mutableFactor = MutableAuthFactor.password(value: password);
      final factor = mutableFactor.toImmutable();
      final salt = Uint8List.fromList([1, 2, 3]);
      final expectedInfo = PersistentAuthFactor.password(
        hash: hex.encode(password.list),
        salt: hex.encode(salt),
      );
      final expectedKey = MockSecureKey();
      when(() => expectedKey.extractBytes()).thenReturn(password.list);
      when(
        () => mockSaltGenerator.randomBytes(),
      ).thenReturn(salt);
      when(
        () => mockHasher.calculate(
          password: mutableFactor.value.toImmutable(),
          salt: salt,
        ),
      ).thenAnswer((_) async => expectedKey);

      expect(
        await repo.insert(factor),
        StorageResult(expectedInfo),
      );
      expect(
        await repo.getById(PersistentAuthFactorId.password),
        StorageResult<PersistentAuthFactor?>(expectedInfo),
      );

      expect(await repo.delete(expectedInfo), StorageResult.empty);
      expect(
        await repo.getById(PersistentAuthFactorId.password),
        const StorageResult<PersistentAuthFactor?>(null),
      );
    });
  });
}
