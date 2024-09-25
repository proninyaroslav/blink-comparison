// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:blink_comparison/core/fs/thumbnails_migrator.dart';
import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/core/settings/shared_pref_listenable.dart';
import 'package:blink_comparison/core/thumbnailer.dart';
import 'package:file/file.dart';
import 'package:file/memory.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;

import '../mock/mock.dart';

const _prefKey = 'thumbnails_v1_2_0_did_migrate';
const _appDataDirName = '/';
const _dirName = 'thumbnails';

void main() {
  group('Thumbnails migrator', () {
    late PlatformInfo mockPlatform;
    late FileSystem fs;
    late Thumbnailer mockThumbnailer;
    late SharedPreferencesAsyncListenable mockPref;
    late ThumbnailsMigrator migrator;

    setUp(() {
      mockPlatform = MockPlatformInfo();
      fs = MemoryFileSystem();
      mockThumbnailer = MockThumbnailer();
      mockPref = MockSharedPreferencesAsyncListenable();
      migrator = ThumbnailsMigrator(
        mockPlatform,
        fs,
        mockThumbnailer,
        mockPref,
      );
    });

    test('Success migration', () async {
      const thumbnailName = '123';
      final bytesBefore = Uint8List.fromList([1, 2, 3, 4, 5]);
      final bytesAfter = Uint8List.fromList([1, 2, 3]);

      final thumbnailFile = await fs
          .file(path.join(_appDataDirName, _dirName, thumbnailName))
          .create(recursive: true);
      await thumbnailFile.writeAsBytes(bytesBefore);

      when(() => mockPref.getBool(_prefKey)).thenAnswer((_) async => null);
      when(() => mockPref.setBool(_prefKey, true)).thenAnswer((_) async {});
      when(() => mockPlatform.getApplicationDocumentsDirectory())
          .thenAnswer((_) async => _appDataDirName);
      when(() => mockThumbnailer.build(bytesBefore))
          .thenAnswer((_) async => bytesAfter);

      expect(await migrator.didMigrate, isNull);
      expect(await migrator.migrate(), const ThumbnailsMigratorResult.success());

      when(() => mockPref.getBool(_prefKey)).thenAnswer((_) async => true);
      expect(await migrator.didMigrate, true);
      expect(await thumbnailFile.readAsBytes(), bytesAfter);
    });

    test('Migration failed', () async {
      const thumbnailName = '123';
      final bytesBefore = Uint8List.fromList([1, 2, 3, 4, 5]);
      final expection = Exception();

      final thumbnailFile = await fs
          .file(path.join(_appDataDirName, _dirName, thumbnailName))
          .create(recursive: true);
      await thumbnailFile.writeAsBytes(bytesBefore);

      when(() => mockPref.getBool(_prefKey)).thenAnswer((_) async => null);
      when(() => mockPref.setBool(_prefKey, true)).thenAnswer((_) async {});
      when(() => mockPlatform.getApplicationDocumentsDirectory())
          .thenAnswer((_) async => _appDataDirName);
      when(() => mockThumbnailer.build(bytesBefore)).thenThrow(expection);

      expect(await migrator.didMigrate, isNull);
      switch (await migrator.migrate()) {
        case ThumbnailsMigratorResultSomeFailed(errors: [(final e, _)]):
          expect(e, expection);
        case ThumbnailsMigratorResultSomeFailed():
        case ThumbnailsMigratorResultSuccess():
          fail('Invalid state');
      }
      when(() => mockPref.getBool(_prefKey)).thenAnswer((_) async => true);
      expect(await migrator.didMigrate, true);
    });

    test('Already migrated', () async {
      when(() => mockPref.getBool(_prefKey)).thenAnswer((_) async => true);
      expect(await migrator.migrate(), const ThumbnailsMigratorResult.success());
    });
  });
}
