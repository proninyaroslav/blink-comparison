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

import 'dart:async';
import 'dart:convert';

import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../locale.dart';
import 'crash_report/crash_report_manager.dart';
import 'platform_info.dart';
import 'service/save_ref_image_job.dart';

part 'notification_manager.freezed.dart';
part 'notification_manager.g.dart';

abstract class NotificationManager {
  Future<void> init();

  Future<void> requestPermissions();

  Future<NotificationAction?> getAppLaunchDetails();

  Stream<NotificationAction> listenOnSelectNotification();

  Future<void> crashReportNotify(CrashInfo info);

  Future<void> sendReportErrorNotify(CrashInfo info);

  Future<void> saveRefImageError({
    required String imageId,
    required SaveRefImageError error,
  });
}

@freezed
sealed class NotificationAction with _$NotificationAction {
  const factory NotificationAction.reportCrash({
    required CrashInfo info,
  }) = NotificationActionReportCrash;

  const factory NotificationAction.openRefImageList() =
      NotificationActionOpenRefImageList;

  factory NotificationAction.fromJson(Map<String, dynamic> json) =>
      _$NotificationActionFromJson(json);
}

NotificationAction? _parsePayload(String? payload) {
  final json = payload == null ? null : jsonDecode(payload);
  return json == null
      ? null
      : NotificationAction.fromJson(json as Map<String, dynamic>);
}

// TODO: Desktop support
@Singleton(as: NotificationManager)
class NotificationManagerImpl implements NotificationManager {
  final PlatformInfo _platformInfo;

  String? _currentLocale;
  AppLocalizations? _currentAppLocale;

  final _notifyPlugin = FlutterLocalNotificationsPlugin();
  final _onNotifySelected = StreamController<NotificationAction>.broadcast();

  NotificationManagerImpl(this._platformInfo);

  @override
  Future<void> init() async {
    const initSettingsAndroid = AndroidInitializationSettings(
      'ic_app_notification',
    );
    const initSettingsIOS = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
      android: initSettingsAndroid,
      iOS: initSettingsIOS,
    );

    await _notifyPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (details) {
        final action = _parsePayload(details.payload);
        if (action != null) {
          _onNotifySelected.add(action);
        }
      },
    );
  }

  @override
  Future<void> requestPermissions() async {
    if (_platformInfo.isAndroid) {
      _notifyPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    }
  }

  @override
  Future<NotificationAction?> getAppLaunchDetails() async {
    final details = await _notifyPlugin.getNotificationAppLaunchDetails();
    if (details == null || !details.didNotificationLaunchApp) {
      return null;
    } else {
      return _parsePayload(details.notificationResponse?.payload);
    }
  }

  @override
  Stream<NotificationAction> listenOnSelectNotification() {
    return _onNotifySelected.stream;
  }

  Future<AppLocalizations> _getAppLocale() async {
    final oldLocale = _currentLocale;
    _currentLocale = await _platformInfo.currentLocale;
    if (_currentAppLocale == null || _currentLocale != oldLocale) {
      return _currentAppLocale = await loadLocale(_currentLocale!);
    } else {
      return _currentAppLocale!;
    }
  }

  @override
  Future<void> crashReportNotify(CrashInfo info) async {
    final locale = await _getAppLocale();
    final defaultChannel = _AndroidChannel.defaultChan(locale);

    final title = '🐞 ${locale.error}';
    final body = locale.crashDialogSummary;
    final androidDetails = AndroidNotificationDetails(
      defaultChannel.id,
      defaultChannel.name,
      channelDescription: defaultChannel.description,
      ticker: title,
      styleInformation: BigTextStyleInformation(body),
    );
    final details = NotificationDetails(
      android: androidDetails,
    );
    await _notifyPlugin.show(
      info.hashCode,
      title,
      body,
      details,
      payload: jsonEncode(
        NotificationAction.reportCrash(info: info),
      ),
    );
  }

  @override
  Future<void> sendReportErrorNotify(CrashInfo info) async {
    final locale = await _getAppLocale();
    final defaultChannel = _AndroidChannel.defaultChan(locale);

    final title = '🐞 ${locale.error}';
    final body = locale.crashDialogNoEmailApp(
      CrashReportManager.reportEmail,
      locale.projectIssuesPage,
    );
    final androidDetails = AndroidNotificationDetails(
      defaultChannel.id,
      defaultChannel.name,
      channelDescription: defaultChannel.description,
      ticker: title,
      styleInformation: BigTextStyleInformation(body),
    );
    final details = NotificationDetails(
      android: androidDetails,
    );
    await _notifyPlugin.show(
      info.hashCode,
      title,
      body,
      details,
    );
  }

  @override
  Future<void> saveRefImageError({
    required String imageId,
    required SaveRefImageError error,
  }) async {
    final locale = await _getAppLocale();
    final defaultChannel = _AndroidChannel.defaultChan(locale);

    final title = '⛔ ${locale.saveImageError}';
    final body = switch (error) {
      SaveRefImageErrorFs(:final error) => switch (error) {
          FsErrorIO() => locale.ioError,
        },
      SaveRefImageErrorEncrypt() => locale.encryptionError,
    };
    final androidDetails = AndroidNotificationDetails(
      defaultChannel.id,
      defaultChannel.name,
      channelDescription: defaultChannel.description,
      ticker: title,
      icon: 'ic_error_outline_white_24',
    );
    final details = NotificationDetails(
      android: androidDetails,
    );
    await _notifyPlugin.show(
      imageId.hashCode,
      title,
      body,
      details,
      payload: jsonEncode(
        const NotificationAction.openRefImageList(),
      ),
    );
  }
}

class _AndroidChannel {
  final String id;
  final String name;
  final String description;

  _AndroidChannel._({
    required this.id,
    required this.name,
    required this.description,
  });

  _AndroidChannel.defaultChan(AppLocalizations locale)
      : this._(
          id: 'org.proninyaroslav.blink_comparison.DEFAULT_CHANNEL',
          name: locale.defaultNotifyChannelTitle,
          description: locale.defaultNotifyChannelDescription,
        );
}
