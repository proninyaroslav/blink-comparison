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
import 'package:blink_comparison/core/fs/thumbnail_fs.dart';
import 'package:blink_comparison/core/platform_info.dart';
import 'package:file/file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;

import '../mock/mock.dart';

void main() {
  group('Thumbnails FS |', () {
    late final PlatformInfo mockPlatform;
    late FileSystem mockFs;
    late File mockFile;
    late ThumbnailFS thumbnailsFs;

    const dataDir = '/foo/bar';
    const imagesDir = '$dataDir/thumbnails';

    setUpAll(() {
      mockPlatform = MockPlatformInfo();

      when(
        () => mockPlatform.getApplicationDocumentsDirectory(),
      ).thenAnswer((_) async => dataDir);
    });

    setUp(() {
      mockFs = MockFileSystem();
      thumbnailsFs = ThumbnailFSImpl(mockPlatform, mockFs);
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
      var res = await thumbnailsFs.save(info, Uint8List.fromList(bytes));
      expect(res is FsResultValue, isTrue);

      when(() => mockFile.exists()).thenAnswer((_) async => true);
      res = await thumbnailsFs.save(info, Uint8List.fromList(bytes));
      expect(res is FsResultValue, isTrue);

      verify(() => mockFile.writeAsBytes(bytes)).called(2);
    });

    test('Get', () async {
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime.now(),
        encryptSalt: 'salt',
      );
      final expectedPath = path.join(imagesDir, info.id);

      final res = await thumbnailsFs.get(info);
      res.when(
        (value) => expect(value.path, expectedPath),
        error: (e) => throw e,
      );
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

      final res = await thumbnailsFs.delete(info);
      expect(res is FsResultValue, isTrue);
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

      final res = await thumbnailsFs.exists(info);
      res.when(
        (value) => expect(value, isTrue),
        error: (e) => throw e,
      );
    });
  });
}
