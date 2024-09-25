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
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/ui/auth_lifecycle_observer.dart';
import 'package:blink_comparison/ui/components/intl_locale_bridge.dart';
import 'package:blink_comparison/ui/model/app_cubit.dart';
import 'package:blink_comparison/ui/model/app_state.dart';
import 'package:blink_comparison/ui/model/utils.dart';
import 'package:blink_comparison/ui/system_ui_mode_observer.dart';
// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
  late final _appRouter = AppRouter(navigatorKey: widget.navigatorKey);
  late final AuthLifecycleObserver authLifecycleObserver;

  @override
  void dispose() {
    authLifecycleObserver.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    final notifyManager = getIt<NotificationManager>();
    final platform = getIt<PlatformInfo>();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<AppCubit>().load();
    });

    authLifecycleObserver = AuthLifecycleObserver(
      getIt<AuthFactorRepository>(),
      onReevaluateGuards: () => _appRouter.reevaluateGuards(),
    );

    notifyManager.listenOnSelectNotification().listen(
      (action) {
        switch (action) {
          case NotificationActionReportCrash(:final info):
            _onReport(info);
          case NotificationActionOpenRefImageList():
            if (context.mounted) {
              // ignore: use_build_context_synchronously
              context.replaceRoute(const RefImageListRoute());
            }
        }
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
          switch (action) {
            case null:
              return;
            case NotificationActionReportCrash(:final info):
              _onReport(info);
            case NotificationActionOpenRefImageList():
              if (context.mounted) {
                // ignore: use_build_context_synchronously
                context.replaceRoute(const RefImageListRoute());
              }
          }
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
    if (res case CrashReportSendResultEmailUnsupported()) {
      await getIt<NotificationManager>().sendReportErrorNotify(info);
    }
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
        themeMode: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? ThemeMode.dark
            : ThemeMode.light,
      ),
    );
  }

  Widget _buildApp(
    BuildContext context, {
    Locale? locale,
    ThemeMode? themeMode,
  }) {
    final appTheme = AppTheme(Theme.of(context).textTheme);

    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) async {
        if (state case AppStateEncryptPreferenceChanged(:final encrypt)
            when encrypt is! EncryptionPreferenceNone) {
          await _appRouter.reevaluateGuards();
        }
      },
      buildWhen: (prev, next) => next is! AppStateEncryptPreferenceChanged,
      builder: (context, state) {
        switch (state) {
          case AppStateInitial():
            return _Loading(theme: appTheme);
          case AppStateLoaded(
                  locale: var sLocale,
                  :final theme,
                  :final cameraFullscreenMode
                ) ||
                AppStateChanged(
                  locale: var sLocale,
                  :final theme,
                  :final cameraFullscreenMode
                ):
            return AppThemeBuilder(
              builder: (light, dark, black) {
                return MaterialApp.router(
                  title: 'Blink Comparison',
                  themeMode: themeMode ?? _mapThemeMode(theme),
                  theme: light,
                  darkTheme: dark,
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: locale ?? _mapLocale(sLocale),
                  routerDelegate: AutoRouterDelegate(
                    _appRouter,
                    navigatorObservers: () => [
                      SystemUIModeObserver(
                        fullscreenMode: cameraFullscreenMode,
                      ),
                    ],
                  ),
                  builder: (context, child) => InltLocaleBridge(child: child),
                  routeInformationParser: _appRouter.defaultRouteParser(),
                );
              },
            );
          case AppStateEncryptPreferenceChanged():
            neverCase(state);
        }
      },
    );
  }

  ThemeMode _mapThemeMode(AppThemeType theme) => switch (theme) {
        AppThemeTypeLight() => ThemeMode.light,
        AppThemeTypeDark() => ThemeMode.dark,
        AppThemeTypeSystem() => ThemeMode.system,
      };

  Locale? _mapLocale(AppLocaleType locale) => switch (locale) {
        AppLocaleTypeSystem() => null,
        AppLocaleTypeInner(:final locale) =>
          Locale(locale.languageCode, locale.countryCode),
      };
}

class _Loading extends StatelessWidget {
  final AppTheme theme;

  const _Loading({required this.theme});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: switch (MediaQuery.of(context).platformBrightness) {
        Brightness.dark => theme.dark(),
        Brightness.light => theme.light(),
      },
      child: const Material(
        child: Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
