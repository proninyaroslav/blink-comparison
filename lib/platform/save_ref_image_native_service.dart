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
import 'dart:ui';

import 'package:blink_comparison/core/entity/auth_factor.dart';
import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/core/service/save_ref_image_service.dart';
import 'package:blink_comparison/core/utils.dart';
import 'package:blink_comparison/locale.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveRefImageNativeService {
  @visibleForTesting
  final channel = const MethodChannel(
    'org.proninyaroslav.blink_comparison/save_ref_image_service',
  );
  final queueChannel = const EventChannel(
    'org.proninyaroslav.blink_comparison/save_ref_image_service/queue',
  );
  final resultChannel = const EventChannel(
    'org.proninyaroslav.blink_comparison/save_ref_image_service/result',
  );

  final PlatformInfo _platform;
  late final Stream<ServiceResult> _resultStream;
  late final Stream<ServiceQueueItem> _queueStream;

  SaveRefImageNativeService(this._platform) {
    _resultStream = resultChannel.receiveBroadcastStream('observeResult').map(
          (json) => ServiceResult.fromJson(
            (json as Map<Object?, Object?>).deepCast(),
          ),
        );
    _queueStream = queueChannel
        .receiveBroadcastStream('observeQueue')
        .map((json) => ServiceQueueItem.fromJson(
              (json as Map<Object?, Object?>).deepCast(),
            ));
  }

  Future<void> start({
    required Function callbackDispatcher,
  }) async {
    final handle = PluginUtilities.getCallbackHandle(callbackDispatcher);
    if (handle == null) {
      throw 'Callback must be a static or top-level function';
    }

    final locale = await loadLocale(
      await _platform.currentLocale ?? 'en_US',
    );
    await channel.invokeMethod(
      'start',
      {
        'callbackHandle': handle.toRawHandle(),
        'notificationTitle': locale.saveRefImageNotificationTitle,
        'notificationChannelName': locale.foregroundNotificationChannel,
      },
    );
  }

  Future<void> stop() async {
    await channel.invokeMethod('stop');
  }

  Future<bool> isRunning() async {
    return await channel.invokeMethod('isRunning');
  }

  /// Push [factor] only on first time.
  Future<void> pushQueue(
    ServiceRequest info, {
    required MutableAuthFactor? factor,
  }) async {
    await channel.invokeMethod('pushQueue', [info.toJson(), factor?.toJson()]);
  }

  Stream<ServiceQueueItem> observeQueue() => _queueStream;

  Future<List<ServiceRequest>> getAllInProgress() async {
    final List<Object?> list = await channel.invokeMethod('getAllInProgress');
    return list
        .map(
          (json) => ServiceRequest.fromJson(
            (json as Map<Object?, Object?>).deepCast(),
          ),
        )
        .toList();
  }

  Future<void> sendResult(ServiceResult result) async {
    await channel.invokeMethod(
      'sendResult',
      {
        'saveImageRequest': result.request.toJson(),
        'saveImageResult': result.toJson(),
      },
    );
  }

  Stream<ServiceResult> observeResult() => _resultStream;
}
