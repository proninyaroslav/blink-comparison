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

import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/core/thumbnailer.dart';
import 'package:file/file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:shared_preferences/shared_preferences.dart';

import '../../logger.dart';

part 'thumbnails_migrator.freezed.dart';

const _dirName = "thumbnails";

@freezed
sealed class ThumbnailsMigratorResult with _$ThumbnailsMigratorResult {
  factory ThumbnailsMigratorResult.success() = ThumbnailsMigratorResultSuccess;
  factory ThumbnailsMigratorResult.someFailed(
    List<(Exception, StackTrace)> errors,
  ) = ThumbnailsMigratorResultSomeFailed;
}

const _prefKey = 'thumbnails_v1_2_0_did_migrate';

@injectable
class ThumbnailsMigrator {
  final PlatformInfo _platform;
  final FileSystem _fs;
  final Thumbnailer _thumbnailer;
  final SharedPreferencesAsync _pref;

  ThumbnailsMigrator(this._platform, this._fs, this._thumbnailer, this._pref);

  Future<bool?> get didMigrate => _pref.getBool(_prefKey);

  Future<ThumbnailsMigratorResult> migrate() async {
    if (await didMigrate ?? false) {
      return ThumbnailsMigratorResult.success();
    }
    List<(Exception, StackTrace)> errors = [];
    int migrateCount = 0;
    final dir = _fs.directory(await _getDirPath(_dirName));
    if (await dir.exists()) {
      await for (final entity in dir.list()) {
        try {
          ++migrateCount;
          // Compress old thumbnails to smaller size
          await _compressAndWrite(entity: entity, dir: dir);
        } on Exception catch (e, stackTrace) {
          log().e('Unable to migrate thumbnail ${entity.basename}',
              error: e, stackTrace: stackTrace);
          errors.add((e, stackTrace));
        }
      }
    }
    await _pref.setBool(_prefKey, true);

    if (migrateCount > 0) {
      log().i('[ThumbnailMigrator] Migration completed');
    }
    if (errors.isEmpty) {
      return ThumbnailsMigratorResult.success();
    } else {
      return ThumbnailsMigratorResult.someFailed(errors);
    }
  }

  Future<void> _compressAndWrite({
    required FileSystemEntity entity,
    required Directory dir,
  }) async {
    final file = dir.childFile(entity.basename);
    final bytes = await file.readAsBytes();
    final compressedBytes = await _thumbnailer.build(bytes);
    await file.writeAsBytes(compressedBytes, mode: FileMode.writeOnly);
  }

  Future<String> _getDirPath(String dirName) async =>
      path.join(await _platform.getApplicationDocumentsDirectory(), dirName);
}
