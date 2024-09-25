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

import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/core/storage/app_database.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:sembast/sembast.dart';
import 'package:sembast_sqflite/sembast_sqflite.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:sqflite_common_ffi/sqflite_ffi.dart' as sqflite_ffi;

const _dbName = 'blink_comparison.db';

@module
abstract class SembastModule {
  @singleton
  @preResolve
  Future<Database> db(PlatformInfo platform) async {
    final dir = await platform.getApplicationDocumentsDirectoryFile();
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }
    late final sqflite.DatabaseFactory factory;
    if (platform.isAndroid || platform.isIOS) {
      factory = sqflite.databaseFactory;
    } else if (platform.isLinux || platform.isMacOS || platform.isWindows) {
      factory = sqflite_ffi.databaseFactoryFfi;
    } else {
      throw UnsupportedError('Platform is not supported');
    }
    return getDatabaseFactorySqflite(factory).openDatabase(
      path.join(dir.path, _dbName),
      version: 2,
      onVersionChanged: appDatabaseMigration,
    );
  }
}
