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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class WindowManagerNative {
  @visibleForTesting
  final channel = MethodChannel(
    'org.proninyaroslav.blink_comparison/window_manager',
  );

  Future<void> setSecureFlag(bool enable) async {
    await channel.invokeMethod('setSecureFlag', enable);
  }

  Future<void> setRotationAnimation(RotationAnimtation animtaion) async {
    await channel.invokeMethod('setRotationAnimation', animtaion.value);
  }
}
