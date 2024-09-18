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

import 'package:blink_comparison/injector.dart';
import 'package:injectable/injectable.dart';

import 'thumbnails_migrator_worker.dart';
import 'worker.dart';

// ignore: avoid_classes_with_only_static_members
/// WARNING: do not change existing worker names
abstract class WorkersList {
  static const thumbnailsMigratorWorker = 'ThumbnailMigratorWorker';

  /// `key` - unique worker name, `value` - worker object.
  /// The same worker can have many keys
  static final Map<String, Worker?> _workers = {
    thumbnailsMigratorWorker: getIt<ThumbnailsMigratorWorker>(),
  };
}

abstract class WorkersProvider {
  Worker? getWorkerByName(String name);
}

@Injectable(as: WorkersProvider)
class WorkersProviderImpl implements WorkersProvider {
  @override
  Worker? getWorkerByName(String name) => WorkersList._workers[name];
}
