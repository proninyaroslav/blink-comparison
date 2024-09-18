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
import 'package:blink_comparison/core/workmanager/registered_workers.dart';
import 'package:blink_comparison/core/workmanager/workmanager.dart';
import 'package:blink_comparison/injector.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThumbnailsMigratorWorker implements Worker {
  final ThumbnailsMigrator _migrator;

  ThumbnailsMigratorWorker(this._migrator);

  static Future<void> schedule() async {
    if (await getIt<ThumbnailsMigrator>().didMigrate ?? false) {
      return;
    }
    await getIt<WorkManager>().registerOneTime(
      workId: WorkersList.thumbnailsMigratorWorker,
      workerName: WorkersList.thumbnailsMigratorWorker,
    );
  }

  @override
  Future<WorkResult> doWork(WorkData? inputData) async {
    final res = await _migrator.migrate();
    return switch (res) {
      ThumbnailsMigratorResultSuccess() => const WorkResult.success(),
      ThumbnailsMigratorResultSomeFailed() => const WorkResult.failure(),
    };
  }
}
