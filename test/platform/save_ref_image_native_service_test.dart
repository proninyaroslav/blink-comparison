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

import 'dart:convert';
import 'dart:ui';

import 'package:blink_comparison/core/encrypt/encrypt.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/core/service/save_ref_image_service.dart';
import 'package:blink_comparison/locale.dart';
import 'package:blink_comparison/platform/save_ref_image_native_service.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;

import '../mock/mock.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Save reference image native service |', () {
    late SaveRefImageNativeService service;
    late PlatformInfo mockPlatform;
    final List<MethodCall> log = <MethodCall>[];
    final expectedRequest = ServiceRequest(
      info: RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      ),
      srcFile: XFile(path.join('foo', 'bar')),
      key: const AppSecureKey.password('123'),
    );
    final expectedResult = ServiceResult.success(
      request: expectedRequest,
    );

    setUpAll(() {
      mockPlatform = MockPlatformInfo();
      when(() => mockPlatform.isAndroid).thenReturn(true);
    });

    setUp(() {
      final binaryMessenger =
          TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
      service = SaveRefImageNativeService(mockPlatform);

      binaryMessenger.setMockMethodCallHandler(
        service.channel,
        (methodCall) async {
          log.add(methodCall);
          switch (methodCall.method) {
            case 'isRunning':
              return true;
            case 'getAllInProgress':
              return [jsonEncode(expectedRequest.toJson())];
          }
          return null;
        },
      );
      log.clear();
      binaryMessenger.setMockMethodCallHandler(
        MethodChannel(service.queueChannel.name),
        (methodCall) async {
          switch (methodCall.method) {
            case 'listen':
              await binaryMessenger.handlePlatformMessage(
                service.queueChannel.name,
                service.queueChannel.codec.encodeSuccessEnvelope(
                  jsonEncode(expectedRequest.toJson()),
                ),
                (_) {},
              );
              break;
            case 'cancel':
            default:
              return null;
          }
          return null;
        },
      );
      binaryMessenger.setMockMethodCallHandler(
        MethodChannel(service.resultChannel.name),
        (methodCall) async {
          switch (methodCall.method) {
            case 'listen':
              await binaryMessenger.handlePlatformMessage(
                service.resultChannel.name,
                service.resultChannel.codec.encodeSuccessEnvelope(
                  jsonEncode(expectedResult.toJson()),
                ),
                (_) {},
              );
              break;
            case 'cancel':
            default:
              return null;
          }
          return null;
        },
      );
    });

    tearDown(() {
      log.clear();
    });

    test('Start', () async {
      when(
        () => mockPlatform.currentLocale,
      ).thenAnswer((_) async => 'en_US');
      final handle = PluginUtilities.getCallbackHandle(callbackDispatcher);
      final locale = await loadLocale('en_US');
      await service.start(callbackDispatcher: callbackDispatcher);
      expect(log, [
        isMethodCall(
          'start',
          arguments: {
            'callbackHandle': handle!.toRawHandle(),
            'notificationTitle': locale.saveRefImageNotificationTitle,
            'notificationChannelName': locale.foregroundNotificationChannel,
          },
        )
      ]);
    });

    test('Stop', () async {
      await service.stop();
      expect(log, [isMethodCall('stop', arguments: null)]);
    });

    test('Is running', () async {
      expect(await service.isRunning(), true);
      expect(log, [isMethodCall('isRunning', arguments: null)]);
    });

    test('Push to queue', () async {
      await service.pushQueue(expectedRequest);
      expect(log, [
        isMethodCall(
          'pushQueue',
          arguments: expectedRequest.toJson(),
        )
      ]);
    });

    test('Listen queue', () async {
      final request = await service.observeQueue().first;
      expect(request.info, expectedRequest.info);
      expect(request.key, expectedRequest.key);
      expect(request.srcFile.path, expectedRequest.srcFile.path);
    });

    test('Get all in progress', () async {
      final requestList = await service.getAllInProgress();
      expect(requestList[0].info, expectedRequest.info);
      expect(requestList[0].key, expectedRequest.key);
      expect(requestList[0].srcFile.path, expectedRequest.srcFile.path);
    });

    test('Observe result', () async {
      final result = await service.observeResult().first;
      expect(result.request.info, expectedRequest.info);
      expect(result.request.key, expectedRequest.key);
      expect(result.request.srcFile.path, expectedRequest.srcFile.path);
    });

    test('Send result', () async {
      await service.sendResult(expectedResult);
      expect(log, [
        isMethodCall(
          'sendResult',
          arguments: {
            'saveImageRequest': expectedRequest.toJson(),
            'saveImageResult': expectedResult.toJson(),
          },
        )
      ]);
    });
  });
}
