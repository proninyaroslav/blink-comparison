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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/fs/ref_image_fs.dart';
import 'package:blink_comparison/core/platform_info.dart';
import 'package:file/file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;

import '../mock/mock.dart';

void main() {
  group('Reference image FS |', () {
    late final PlatformInfo mockPlatform;
    late FileSystem mockFs;
    late File mockFile;
    late RefImageFS imageFs;

    const dataDir = '/foo/bar';
    const imagesDir = '$dataDir/ref_images';

    setUpAll(() {
      mockPlatform = MockPlatformInfo();

      when(
        () => mockPlatform.getApplicationDocumentsDirectory(),
      ).thenAnswer((_) async => dataDir);
    });

    setUp(() {
      mockFs = MockFileSystem();
      imageFs = RefImageFSImpl(mockPlatform, mockFs);
      mockFile = MockFile();
    });

    test('Save', () async {
      final bytes = List.generate(256, (i) => i);
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime.now(),
        encryptSalt: 'salt',
      );

      when(
        () => mockFs.file(path.join(imagesDir, info.id)),
      ).thenReturn(mockFile);
      when(
        () => mockFile.create(recursive: true),
      ).thenAnswer((_) async => mockFile);
      when(
        () => mockFile.writeAsBytes(bytes),
      ).thenAnswer((_) async => mockFile);

      when(() => mockFile.exists()).thenAnswer((_) async => false);
      var res = await imageFs.save(info, Uint8List.fromList(bytes));
      expect(res is FsResultSuccess, isTrue);

      when(() => mockFile.exists()).thenAnswer((_) async => true);
      res = await imageFs.save(info, Uint8List.fromList(bytes));
      expect(res is FsResultSuccess, isTrue);

      verify(() => mockFile.writeAsBytes(bytes)).called(2);
    });

    test('Read', () async {
      final bytes = List.generate(256, (i) => i);
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime.now(),
        encryptSalt: 'salt',
      );

      when(
        () => mockFs.file(path.join(imagesDir, info.id)),
      ).thenReturn(mockFile);
      when(
        () => mockFile.readAsBytes(),
      ).thenAnswer((_) async => Uint8List.fromList(bytes));

      final res = await imageFs.read(info);
      switch (res) {
        case FsResultSuccess(:final value):
          expect(value, bytes);
        case FsResultError(:final error):
          throw error;
      }
    });

    test('Read non existen file', () async {
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime.now(),
        encryptSalt: 'salt',
      );

      when(
        () => mockFs.file(path.join(imagesDir, info.id)),
      ).thenReturn(mockFile);
      when(
        () => mockFile.readAsBytes(),
      ).thenAnswer((_) async => Uint8List(0));

      final res = await imageFs.read(info);
      switch (res) {
        case FsResultSuccess(:final value):
          expect(value, Uint8List(0));
        case FsResultError(:final error):
          throw error;
      }
    });

    test('Delete', () async {
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime.now(),
        encryptSalt: 'salt',
      );

      when(
        () => mockFs.file(path.join(imagesDir, info.id)),
      ).thenReturn(mockFile);
      when(
        () => mockFile.delete(),
      ).thenAnswer((_) async => mockFile);

      final res = await imageFs.delete(info);
      expect(res is FsResultSuccess, isTrue);
    });

    test('Exists', () async {
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime.now(),
        encryptSalt: 'salt',
      );

      when(
        () => mockFs.file(path.join(imagesDir, info.id)),
      ).thenReturn(mockFile);
      when(
        () => mockFile.exists(),
      ).thenAnswer((_) async => true);

      final res = await imageFs.exists(info);
      switch (res) {
        case FsResultSuccess(:final value):
          expect(value, isTrue);
        case FsResultError(:final error):
          throw error;
      }
    });
  });
}
