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
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/fs/ref_image_fs.dart';
import 'package:blink_comparison/core/service/save_ref_image_service.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/ref_image_secure_storage.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;

import '../mock/mock.dart';

void main() {
  group('Secure storage of the reference images |', () {
    late RefImageFS mockFs;
    late EncryptModuleProvider mockEncryptProvider;
    late EncryptModule mockModule;
    late SaveRefImageService mockService;
    late RefImageSecureStorage secureStorage;
    late AuthFactorRepository mockAppSecureKeyRepo;

    final key = MutableAuthFactor.password(
      value: TestSecureKey.fromList(utf8.encode('123')),
    );
    final keyImmutable = key.toImmutable();

    setUp(() {
      mockFs = MockRefImageFs();
      mockEncryptProvider = MockEncryptModuleProvider();
      mockModule = MockEncryptModule();
      mockService = MockSaveRefImageService();
      mockAppSecureKeyRepo = MockAppSecureKeyRepository();
      secureStorage = RefImageSecureStorageImpl(
        mockFs,
        mockEncryptProvider,
        mockService,
        mockAppSecureKeyRepo,
      );
    });

    setUpAll(() {
      registerFallbackValue(Uint8List(0));
    });

    test('No key', () async {
      final file = XFile(path.join('foo', 'bar'));
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime.now(),
        encryptSalt: 'salt',
      );

      when(() => mockAppSecureKeyRepo.hasSecureKey()).thenReturn(false);

      final addRes = await secureStorage.add(info, file);
      switch (addRes) {
        case SecStorageResultSuccess():
          throw 'Cannot return a successful result';
        case SecStorageResultError(:final error):
          expect(error is SecStorageErrorNoKey, isTrue);
      }

      final getRes = await secureStorage.get(info);
      switch (getRes) {
        case SecStorageResultSuccess():
          throw 'Cannot return a successful result';
        case SecStorageResultError(:final error):
          expect(error is SecStorageErrorNoKey, isTrue);
      }
    });

    test('Add', () async {
      final file = XFile(path.join('foo', 'bar'));
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );

      when(() => mockAppSecureKeyRepo.hasSecureKey()).thenReturn(true);
      when(() => mockAppSecureKeyRepo.get()).thenReturn(keyImmutable);
      when(
        () => mockService.save(info: info, srcImage: file),
      ).thenAnswer((_) async => {});

      expect(
        await secureStorage.add(info, file),
        SecStorageResult.empty,
      );
      verify(
        () => mockService.save(info: info, srcImage: file),
      ).called(1);
    });

    test('Get', () async {
      final srcBytes = Uint8List.fromList(List.generate(256, (index) => index));
      final decBytes = Uint8List.fromList(srcBytes.reversed.toList());
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );
      final expectedImage = RefImage(info: info, bytes: decBytes);

      when(() => mockAppSecureKeyRepo.hasSecureKey()).thenReturn(true);
      when(() => mockAppSecureKeyRepo.get()).thenReturn(keyImmutable);
      when(() => mockEncryptProvider.getByKey(keyImmutable))
          .thenReturn(mockModule);
      when(
        () => mockModule.decrypt(src: any(named: 'src'), info: info),
      ).thenAnswer(
        (_) async => DecryptResult.success(bytes: decBytes),
      );
      when(
        () => mockFs.read(info),
      ).thenAnswer((_) async => FsResult(srcBytes));

      expect(
        await secureStorage.get(info),
        SecStorageResult(expectedImage),
      );
      verify(() => mockFs.read(info)).called(1);
    });

    test('Delete', () async {
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );
      when(
        () => mockFs.delete(info),
      ).thenAnswer((_) async => FsResult.empty);

      expect(
        await secureStorage.delete(info),
        SecStorageResult.empty,
      );
      verify(() => mockFs.delete(info)).called(1);
    });
  });
}
