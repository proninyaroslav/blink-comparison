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

import 'package:blink_comparison/core/entity/converter/date_time_epoch_converter.dart';
import 'package:blink_comparison/core/entity/ref_image.dart';
import 'package:blink_comparison/core/storage/app_database.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sembast/sembast_io.dart';

import '../test_utils.dart';

void main() {
  group('App database |', () {
    group('Migration |', () {
      const dbName = 'blink_comparison_test_database.db';
      late Database db;
      late Directory tmpDir;
      late FileSystem fs;

      setUpAll(() async {
        TestWidgetsFlutterBinding.ensureInitialized();

        fs = const LocalFileSystem();
        tmpDir = fs.directory(await getTemporaryDirPath())
          ..create(recursive: true);
        final dbFile = tmpDir.childFile(dbName);
        if (await dbFile.exists()) {
          await dbFile.delete();
        }
      });

      tearDown(() async {
        await db.close();
        await tmpDir.childFile(dbName).delete();
      });

      test('1 -> 2', () async {
        final store = stringMapStoreFactory.store('RefImageInfo');
        final newImage = RefImageInfo(
          id: '123',
          dateAdded: const DateTimeEpochConverter()
              .fromJson(DateTime.now().millisecondsSinceEpoch),
          encryption: const RefImageEncryption.password(encryptSalt: '123'),
        );
        final oldImageMap = {
          'id': newImage.id,
          'dateAdded':
              const DateTimeEpochConverter().toJson(newImage.dateAdded),
          'encryptSalt':
              (newImage.encryption as RefImageEncryptionPassword).encryptSalt,
        };

        onVersionChanged(db, oldVersion, newVersion) async {
          if (oldVersion == 0) {
            await store
                .record(oldImageMap['id'] as String)
                .add(db, oldImageMap);
          } else {
            await appDatabaseMigration(db, oldVersion, newVersion);
          }
        }

        db = await databaseFactoryIo.openDatabase(
          tmpDir.childFile(dbName).path,
          onVersionChanged: onVersionChanged,
          version: 1,
        );
        expect(await store.record(newImage.id).get(db), oldImageMap);
        await db.close();

        db = await databaseFactoryIo.openDatabase(
          tmpDir.childFile(dbName).path,
          onVersionChanged: onVersionChanged,
          version: 2,
        );
        final record = await store.record(newImage.id).get(db);
        expect(record, isNotNull);
        expect(RefImageInfo.fromJson(record!), newImage);
      });
    });
  });
}
