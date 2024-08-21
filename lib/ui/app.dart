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

import 'package:auto_route/auto_route.dart';
import 'package:blink_comparison/core/crash_report/crash_report_manager.dart';
import 'package:blink_comparison/core/notification_manager.dart';
import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/components/intl_locale_bridge.dart';
import 'package:blink_comparison/ui/model/app_cubit.dart';
import 'package:blink_comparison/ui/model/app_state.dart';
// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../injector.dart';
import '../locale.dart';
import '../logger.dart';
import 'routes/routes.dart';
import 'theme.dart';

class App extends StatefulWidget {
  final bool enableDevicePreview;
  final GlobalKey<NavigatorState> navigatorKey;

  const App({
    super.key,
    required this.enableDevicePreview,
    required this.navigatorKey,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final _appRouter = AppRouter(
    navigatorKey: widget.navigatorKey,
  );

  @override
  void initState() {
    super.initState();
    final notifyManager = getIt<NotificationManager>();
    final platform = getIt<PlatformInfo>();

    notifyManager.listenOnSelectNotification().listen(
      (action) {
        action.when(
          reportCrash: _onReport,
          openRefImageList: () {
            context.replaceRoute(const RefImageListRoute());
          },
        );
      },
      onError: (e, StackTrace stackTrace) {
        log().e('Unable to handle notification action',
            error: e, stackTrace: stackTrace);
      },
    );

    // TODO: Desktop support
    if (platform.isAndroid || platform.isIOS) {
      notifyManager.getAppLaunchDetails().then(
        (action) {
          if (action == null) {
            return;
          }
          action.when(
            reportCrash: _onReport,
            openRefImageList: () {
              context.replaceRoute(const RefImageListRoute());
            },
          );
        },
        onError: (e, StackTrace stackTrace) {
          log().e(
            'Unable to launch the app from the notification',
            error: e,
            stackTrace: stackTrace,
          );
        },
      );
    }
  }

  Future<void> _onReport(CrashInfo info) async {
    final res = await getIt<CrashReportManager>().sendReport(info);
    await res.maybeWhen(
      emailUnsupported: () =>
          getIt<NotificationManager>().sendReportErrorNotify(info),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.enableDevicePreview && kDebugMode
        ? _buildDevicePreview()
        : _buildApp(context);
  }

  Widget _buildDevicePreview() {
    return DevicePreview(
      availableLocales: AppLocalizations.supportedLocales,
      builder: (context) => _buildApp(
        context,
        locale: DevicePreview.locale(context),
        useInheritedMediaQuery: true,
        themeMode: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? ThemeMode.dark
            : ThemeMode.light,
      ),
    );
  }

  Widget _buildApp(
    BuildContext context, {
    Locale? locale,
    bool useInheritedMediaQuery = false,
    ThemeMode? themeMode,
  }) {
    return BlocProvider.value(
      value: getIt<AppCubit>(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Blink Comparison',
            themeMode: themeMode ?? _mapThemeMode(state.theme),
            theme: AppTheme.getThemeData(),
            darkTheme: AppTheme.getThemeData(dark: true),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: locale ?? _mapLocale(state.locale),
            routerDelegate: AutoRouterDelegate(
              _appRouter,
              navigatorObservers: () => [
                SystemUIModeObserver(
                  fullscreenMode: state.cameraFullscreenMode,
                ),
              ],
            ),
            builder: (context, child) {
              return InltLocaleBridge(child: child);
            },
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }

  ThemeMode _mapThemeMode(AppThemeType theme) {
    return theme.when(
      light: () => ThemeMode.light,
      dark: () => ThemeMode.dark,
      system: () => ThemeMode.system,
    );
  }

  Locale? _mapLocale(AppLocaleType locale) {
    return locale.when(
      system: () => null,
      inner: (locale) => Locale(
        locale.languageCode,
        locale.countryCode,
      ),
    );
  }
}

class SystemUIModeObserver extends AutoRouterObserver {
  final bool fullscreenMode;

  SystemUIModeObserver({required this.fullscreenMode});

  @override
  void didPush(Route route, Route? previousRoute) {
    final name = route.settings.name;
    if (fullscreenMode &&
        (name == RefImagePreviewRoute.name ||
            name == CameraPickerRoute.name ||
            name == BlinkComparisonRoute.name)) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else if (route.settings.name != null) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [
          SystemUiOverlay.top,
          SystemUiOverlay.bottom,
        ],
      );
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    final name = route.settings.name;
    if (name == RefImagePreviewRoute.name ||
        name == CameraPickerRoute.name ||
        name == BlinkComparisonRoute.name) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [
          SystemUiOverlay.top,
          SystemUiOverlay.bottom,
        ],
      );
    }
  }
}
