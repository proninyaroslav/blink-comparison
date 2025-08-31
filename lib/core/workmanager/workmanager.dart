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

import 'dart:async';

import 'package:blink_comparison/core/crash_catcher/crash_catcher.dart';
import 'package:blink_comparison/core/crash_catcher/hook/flutter_crash_hook.dart';
import 'package:blink_comparison/core/date_time_provider.dart';
import 'package:blink_comparison/env.dart';
import 'package:blink_comparison/injector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:workmanager/workmanager.dart' as wm;

import '../crash_catcher/handler/notification_crash_handler.dart';
import '../notification_manager.dart';
import '../platform_info.dart';
import 'registered_workers.dart';
import 'worker.dart';

export 'worker.dart';

abstract class WorkManager {
  Future<void> init();

  Future<void> registerPeriodic({
    required String workId,
    required String workerName,

    /// **iOS doesn't support this**. >= 15 min.
    Duration? frequency,
    WorkParams? params,
  });

  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  });

  Future<void> cancelById(String workId);
}

@Singleton(as: WorkManager, env: [Env.prod])
class WorkManagerImpl extends _WorkManagerImpl {
  WorkManagerImpl(super.platform, super.workersProvider, super.dateTimeProvider)
    : super(isDebug: false);
}

@Singleton(as: WorkManager, env: [Env.dev])
class DebugWorkManagerImpl extends _WorkManagerImpl {
  DebugWorkManagerImpl(
    PlatformInfo platform,
    DateTimeProvider dateTimeProvider,
    WorkersProvider workersProvider,
  ) : super(platform, workersProvider, dateTimeProvider, isDebug: true);
}

abstract class _PlatformWorkManager extends WorkManager {
  Future<void> execute();
}

class _WorkManagerImpl implements WorkManager {
  final WorkManager _platformWm;
  final WorkersProvider _workersProvider;

  _WorkManagerImpl(
    PlatformInfo platform,
    this._workersProvider,
    DateTimeProvider dateTimeProvider, {
    required bool isDebug,
  }) : _platformWm = _getPlatfowmWm(
         platform,
         _workersProvider,
         dateTimeProvider,
         isDebug: isDebug,
       );

  @override
  Future<void> init() async => _platformWm.init();

  static _PlatformWorkManager _getPlatfowmWm(
    PlatformInfo platform,
    WorkersProvider workersProvider,
    DateTimeProvider dateTimeProvider, {
    required bool isDebug,
  }) {
    if (platform.isIOS || platform.isAndroid) {
      return _MobileWorkManager(
        workersProvider,
        dateTimeProvider,
        isDebug: isDebug,
      );
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  @override
  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  }) async {
    _checkRegisteredOrThrow(workerName);
    await _platformWm.registerOneTime(
      workId: workId,
      workerName: workerName,
      params: params,
      initialDelay: initialDelay,
    );
  }

  @override
  Future<void> registerPeriodic({
    required String workId,
    required String workerName,
    Duration? frequency,
    WorkParams? params,
  }) async {
    _checkRegisteredOrThrow(workerName);
    await _platformWm.registerPeriodic(
      workId: workId,
      workerName: workerName,
      params: params,
    );
  }

  void _checkRegisteredOrThrow(String workerName) {
    final worker = _workersProvider.getWorkerByName(workerName);
    if (worker == null) {
      throw UnsupportedError('Worker named "$workerName" is not registered');
    }
  }

  @override
  Future<void> cancelById(String workId) async =>
      _platformWm.cancelById(workId);
}

final _crashHandlers = [DefaultCrashHandler(), NotificationCrashHandler()];

final _debugCrashHandlers = [DefaultCrashHandler()];

@pragma('vm:entry-point')
Future<void> callbackDispatcher() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future<void> dispatcher() async {
    await initInjector(kDebugMode ? Env.dev : Env.prod);
    await getIt<NotificationManager>().init();

    final platform = getIt<PlatformInfo>();
    final workersProvider = getIt<WorkersProvider>();
    final dateTimeProvider = getIt<DateTimeProvider>();
    final platformWm = _WorkManagerImpl._getPlatfowmWm(
      platform,
      workersProvider,
      dateTimeProvider,
      isDebug: kDebugMode,
    );
    await platformWm.execute();
  }

  if (kDebugMode) {
    return dispatcher();
  } else {
    return crashCatcher(
      hooks: [
        ZonedCrashHook(mainEntry: dispatcher),
        IsolateCrashHook(),
        FlutterCrashHook(),
      ],
      handlers: _crashHandlers,
    );
  }
}

class _MobileWorkManager implements _PlatformWorkManager {
  final WorkersProvider _workersProvider;
  final bool _isDebug;
  final wm.Workmanager _wm;

  _MobileWorkManager(
    this._workersProvider,
    DateTimeProvider dateTimeProvider, {
    required bool isDebug,
  }) : _isDebug = isDebug,
       _wm = wm.Workmanager();

  @override
  Future<void> init() async {
    await _wm.initialize(callbackDispatcher, isInDebugMode: _isDebug);
  }

  @override
  Future<void> registerOneTime({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? initialDelay,
  }) async {
    await _wm.registerOneOffTask(
      workId,
      workerName,
      constraints: _convertConstraints(params?.constraints),
      inputData: params?.inputData?.asMap(),
      existingWorkPolicy: _convertWorkPolicy(params?.existingWorkPolicy),
      initialDelay: initialDelay ?? const Duration(),
    );
  }

  @override
  Future<void> registerPeriodic({
    required String workId,
    required String workerName,
    WorkParams? params,
    Duration? frequency,
  }) async {
    await wm.Workmanager().registerPeriodicTask(
      workId,
      workerName,
      frequency: frequency,
      constraints: _convertConstraints(params?.constraints),
      inputData: params?.inputData?.asMap(),
      existingWorkPolicy: _convertPeriodicWorkPolicy(
        params?.existingWorkPolicy,
      ),
    );
  }

  @override
  Future<void> cancelById(String workId) async {
    await _wm.cancelByUniqueName(workId);
  }

  @override
  Future<void> execute() async {
    wm.Workmanager().executeTask((taskName, inputData) async {
      await crashCatcher(
        hooks: [
          _WorkmanagerCrashHook(
            taskHandler: () async {
              if (taskName == wm.Workmanager.iOSBackgroundTask) {
                throw 'Unsupported platform';
              } else {
                final worker = _workersProvider.getWorkerByName(taskName);
                if (worker == null) {
                  throw _WorkFailedException();
                }
                final workerData = _convertData(inputData);
                final result = await worker.doWork(workerData);

                if (result case WorkResultFailure()) {
                  throw _WorkFailedException();
                }
              }
            },
          ),
        ],
        handlers: [
          _WorkmanagerCrashHandler(
            handlers: kDebugMode ? _debugCrashHandlers : _crashHandlers,
          ),
        ],
      );

      return true;
    });
  }

  wm.Constraints? _convertConstraints(WorkConstraints? constraints) {
    if (constraints == null) {
      return null;
    }

    final networkType = _convertNetworkType(constraints.networkType);

    return networkType == null
        ? null
        : wm.Constraints(networkType: networkType);
  }

  wm.NetworkType? _convertNetworkType(NetworkType? type) {
    if (type == null) {
      return null;
    }

    switch (type) {
      case NetworkType.connected:
        return wm.NetworkType.connected;
      case NetworkType.metered:
        return wm.NetworkType.metered;
      case NetworkType.notRequired:
        return wm.NetworkType.notRequired;
      case NetworkType.notRoaming:
        return wm.NetworkType.notRoaming;
      case NetworkType.unmetered:
        return wm.NetworkType.unmetered;
    }
  }

  static WorkData? _convertData(Map<String, dynamic>? data) =>
      data == null ? null : WorkData(data);

  wm.ExistingWorkPolicy? _convertWorkPolicy(ExistingWorkPolicy? policy) {
    if (policy == null) {
      return null;
    }

    switch (policy) {
      case ExistingWorkPolicy.keep:
        return wm.ExistingWorkPolicy.keep;
      case ExistingWorkPolicy.replace:
        return wm.ExistingWorkPolicy.replace;
    }
  }

  wm.ExistingPeriodicWorkPolicy? _convertPeriodicWorkPolicy(
    ExistingWorkPolicy? policy,
  ) {
    if (policy == null) {
      return null;
    }

    switch (policy) {
      case ExistingWorkPolicy.keep:
        return wm.ExistingPeriodicWorkPolicy.keep;
      case ExistingWorkPolicy.replace:
        return wm.ExistingPeriodicWorkPolicy.replace;
    }
  }
}

class _WorkFailedException implements Exception {
  final String? message = null;

  _WorkFailedException();

  @override
  String toString() =>
      message == null ? 'WorkFailedException' : 'WorkFailedException: $message';
}

class _WorkmanagerCrashHook implements CrashHook {
  final Future<void> Function() taskHandler;

  _WorkmanagerCrashHook({required this.taskHandler});

  @override
  Future<void> setup({required List<CrashHandler> handlers}) async {
    try {
      await taskHandler();
    } catch (error, stackTrace) {
      await Future.wait(
        handlers.map((handler) => handler.handle(error, stackTrace)),
      );
      // Needed for correct finishing of WorkManager.executeTask
      rethrow;
    }
  }
}

class _WorkmanagerCrashHandler implements CrashHandler {
  final List<CrashHandler> handlers;

  _WorkmanagerCrashHandler({required this.handlers});

  @override
  Future<void> handle(Object error, StackTrace? stackTrace) async {
    if (error is! _WorkFailedException) {
      await Future.wait(
        handlers.map((handler) => handler.handle(error, stackTrace)),
      );
    }
  }
}
