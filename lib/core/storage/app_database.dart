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

import 'package:blink_comparison/core/entity/ref_image.dart';
import 'package:blink_comparison/core/storage/dao/persistent_auth_factor_dao.dart';
import 'package:blink_comparison/env.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

import 'dao/dao.dart';

abstract class AppDatabase {
  RefImageDao get referenceImageDao;

  PersistentAuthFactorDao get persistentAuthFactorDao;
}

@Singleton(as: AppDatabase, env: [Env.dev, Env.prod])
class AppDatabaseImpl implements AppDatabase {
  final Database _db;

  AppDatabaseImpl(this._db);

  @override
  RefImageDao get referenceImageDao => RefImageDao(_db);

  @override
  PersistentAuthFactorDao get persistentAuthFactorDao =>
      PersistentAuthFactorDao(_db);
}

Future<void> appDatabaseMigration(
  Database db,
  int oldVersion,
  int newVersion,
) async {
  if (oldVersion < 2) {
    await migration1To2(db);
  }
}

Future<void> migration1To2(
  Database db,
) async {
  final store = stringMapStoreFactory.store('RefImageInfo');
  final snapshots = await store.find(db);

  for (final RecordSnapshot(:key, value: image) in snapshots) {
    if (image case {'encryptSalt': String encryptSalt}) {
      final encryption = RefImageEncryption.password(
        encryptSalt: encryptSalt,
      );
      final newValue = {
        'encryption': encryption.toJson(),
        for (final key in image.keys)
          if (key != 'encryptSalt') key: image[key]
      };
      await store.record(key).update(db, newValue);
    }
  }
}
