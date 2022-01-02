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
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/fs/ref_image_fs.dart';
import 'package:blink_comparison/core/service/save_ref_image_service.dart';
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

    const key = SecureKey.password('123');

    setUp(() {
      mockFs = MockRefImageFs();
      mockEncryptProvider = MockEncryptModuleProvider();
      mockModule = MockEncryptModule();
      mockService = MockSaveRefImageService();
      secureStorage = RefImageSecureStorageImpl(
        mockFs,
        mockEncryptProvider,
        mockService,
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

      final addRes = await secureStorage.add(info, file);
      addRes.when(
        (_) => throw 'Cannot return a successful result',
        error: (e) {
          expect(e is SecStorageErrorNoKey, isTrue);
        },
      );

      final getRes = await secureStorage.get(info);
      getRes.when(
        (_) => throw 'Cannot return a successful result',
        error: (e) {
          expect(e is SecStorageErrorNoKey, isTrue);
        },
      );
    });

    test('Add', () async {
      final file = XFile(path.join('foo', 'bar'));
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );

      when(
        () => mockService.save(info: info, srcImage: file, key: key),
      ).thenAnswer((_) async => {});

      secureStorage.setSecureKey(key);
      expect(
        await secureStorage.add(info, file),
        SecStorageResult.empty,
      );
      verify(
        () => mockService.save(info: info, srcImage: file, key: key),
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

      when(() => mockEncryptProvider.getByKey(key)).thenReturn(mockModule);
      when(
        () => mockModule.decrypt(src: any(named: 'src'), info: info),
      ).thenAnswer(
        (_) async => DecryptResult.success(bytes: decBytes),
      );
      when(
        () => mockFs.read(info),
      ).thenAnswer((_) async => FsResult(srcBytes));

      secureStorage.setSecureKey(key);
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
