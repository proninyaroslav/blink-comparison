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

import 'package:blink_comparison/core/crash_catcher/handler/notification_crash_handler.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/window_manager.dart';
import 'package:blink_comparison/core/workmanager/thumbnails_migrator_worker.dart';
import 'package:blink_comparison/core/workmanager/workmanager.dart';
import 'package:blink_comparison/ui/model/app_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/crash_catcher/crash_catcher.dart';
import 'core/crash_catcher/hook/flutter_crash_hook.dart';
import 'core/notification_manager.dart';
import 'env.dart';
import 'injector.dart';
import 'ui/app.dart';
import 'ui/crash_report_dialog/model/dialog_crash_handler.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

Future<void> _main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjector(kDebugMode ? Env.dev : Env.prod);
  GestureBinding.instance.resamplingEnabled = true;

  final notificationManager = getIt<NotificationManager>();
  await notificationManager.init();
  notificationManager.requestPermissions();

  await getIt<WorkManager>().init();

  await ThumbnailsMigratorWorker.schedule();

  runApp(
    BlocProvider(
      create: (context) => AppCubit(
        getIt<AppSettings>(),
        getIt<WindowManager>(),
      ),
      child: App(
        enableDevicePreview: false,
        navigatorKey: _navigatorKey,
      ),
    ),
  );
}

Future<void> main() async {
  if (kDebugMode) {
    return _main();
  } else {
    return crashCatcher(
      hooks: [
        ZonedCrashHook(mainEntry: _main),
        IsolateCrashHook(),
        FlutterCrashHook(),
      ],
      handlers: [
        DefaultCrashHandler(),
        DialogCrashHandler(
          navigatorKey: _navigatorKey,
          fallbackHandler: NotificationCrashHandler(),
        ),
      ],
    );
  }
}
