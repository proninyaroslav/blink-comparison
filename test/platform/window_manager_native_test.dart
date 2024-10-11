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

import 'package:blink_comparison/core/window_manager.dart';
import 'package:blink_comparison/platform/window_manager_native.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Native WindowManager test |', () {
    final List<MethodCall> log = <MethodCall>[];
    late WindowManagerNative windowManagerNative;

    setUp(() {
      final binaryMessenger =
          TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
      windowManagerNative = WindowManagerNative();

      binaryMessenger.setMockMethodCallHandler(
        windowManagerNative.channel,
        (methodCall) async {
          log.add(methodCall);
          return null;
        },
      );
      log.clear();
    });

    tearDown(() {
      log.clear();
    });

    test('Set secure flag', () async {
      await windowManagerNative.setSecureFlag(true);
      await windowManagerNative.setSecureFlag(false);
      expect(
        log,
        [
          isMethodCall('setSecureFlag', arguments: true),
          isMethodCall('setSecureFlag', arguments: false),
        ],
      );
    });

    test('Set secure flag', () async {
      await windowManagerNative.setRotationAnimation(
        RotationAnimtation.seamless,
      );
      await windowManagerNative.setRotationAnimation(
        RotationAnimtation.rotate,
      );
      expect(
        log,
        [
          isMethodCall('setRotationAnimation', arguments: 3),
          isMethodCall('setRotationAnimation', arguments: 0),
        ],
      );
    });
  });
}
