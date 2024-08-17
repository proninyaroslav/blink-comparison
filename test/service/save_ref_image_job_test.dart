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

import 'dart:typed_data';

import 'package:blink_comparison/core/encrypt/encrypt.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/fs/ref_image_fs.dart';
import 'package:blink_comparison/core/service/save_ref_image_job.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Save reference image job |', () {
    late EncryptModuleProvider mockEncryptProvider;
    late EncryptModule mockModule;
    late RefImageFS mockImageFs;
    late SaveRefImageJob job;

    const key = AppSecureKey.password('123');

    setUp(() {
      mockEncryptProvider = MockEncryptModuleProvider();
      mockModule = MockEncryptModule();
      mockImageFs = MockRefImageFs();
      job = SaveRefImageJobImpl(mockEncryptProvider, mockImageFs);
    });

    test('Save', () async {
      final srcBytes = Uint8List.fromList(List.generate(256, (index) => index));
      final srcFile = XFile.fromData(srcBytes);
      final encBytes = Uint8List.fromList(srcBytes.reversed.toList());
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );

      when(() => mockEncryptProvider.getByKey(key)).thenReturn(mockModule);
      when(
        () => mockModule.encrypt(src: srcBytes, info: info),
      ).thenAnswer((_) async => EncryptResult.success(bytes: encBytes));
      when(
        () => mockImageFs.save(info, encBytes),
      ).thenAnswer((_) async => FsResult.empty);

      expect(
        await job.run(info: info, file: srcFile, key: key),
        const SaveRefImageResult.success(),
      );
      verify(() => mockImageFs.save(info, encBytes)).called(1);
    });

    test('Encrypt error', () async {
      final srcBytes = Uint8List.fromList(List.generate(256, (index) => index));
      final srcFile = XFile.fromData(srcBytes);
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );

      when(() => mockEncryptProvider.getByKey(key)).thenReturn(mockModule);
      when(
        () => mockModule.encrypt(src: srcBytes, info: info),
      ).thenAnswer((_) async => const EncryptResult.fail(EncryptError()));

      expect(
        await job.run(info: info, file: srcFile, key: key),
        const SaveRefImageResult.error(
          SaveRefImageError.encrypt(
            error: EncryptError(),
          ),
        ),
      );
    });

    test('File system error', () async {
      final srcBytes = Uint8List.fromList(List.generate(256, (index) => index));
      final srcFile = XFile.fromData(srcBytes);
      final encBytes = Uint8List.fromList(srcBytes.reversed.toList());
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );

      when(() => mockEncryptProvider.getByKey(key)).thenReturn(mockModule);
      when(
        () => mockModule.encrypt(src: srcBytes, info: info),
      ).thenAnswer((_) async => EncryptResult.success(bytes: encBytes));
      when(
        () => mockImageFs.save(info, encBytes),
      ).thenAnswer(
        (_) async => const FsResult.error(FsError.io()),
      );

      expect(
        await job.run(info: info, file: srcFile, key: key),
        SaveRefImageResult.error(
          SaveRefImageError.fs(
            path: srcFile.path,
            error: const FsError.io(),
          ),
        ),
      );
    });
  });
}
