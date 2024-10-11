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

import 'package:blink_comparison/platform/window_manager_native.dart';
import 'package:injectable/injectable.dart';

abstract class WindowManager {
  /// Allow/disallow screenshots
  Future<void> setSecureFlag(bool enable);

  /// Define the exit and entry animations used on this window when the device is rotated.
  /// This only has an affect if the incoming and outgoing topmost opaque windows
  /// have the #FLAG_FULLSCREEN bit set and are not covered by other windows.
  /// All other situations default to the [RotationAnimtation.rotate] behavior.
  Future<void> setRotationAnimation(RotationAnimtation animation);
}

enum RotationAnimtation {
  /// Window will visually rotate in or out following a rotation.
  rotate(0),

  /// Window will fade in or out following a rotation.
  crossfade(1),

  /// Window will immediately disappear or appear following a rotation.
  jumpcut(2),

  /// This works like [jumpcut] but will fall back to [crossfade] if
  /// rotation can't be applied without pausing the screen. For example,
  /// this is ideal for Camera apps which don't want the viewfinder contents to
  /// ever rotate or fade (and rather to be seamless) but also don't want
  /// [jumpcut] during app transition scenarios where seamless rotation can't be applied.
  seamless(3);

  final int value;

  const RotationAnimtation(this.value);

  static RotationAnimtation defaultValue = rotate;
}

@Singleton(as: WindowManager)
class WindowManagerImpl implements WindowManager {
  final WindowManagerNative _windowManager;

  WindowManagerImpl(this._windowManager);

  @override
  Future<void> setSecureFlag(bool enable) async =>
      _windowManager.setSecureFlag(enable);

  @override
  Future<void> setRotationAnimation(RotationAnimtation animation) async =>
      _windowManager.setRotationAnimation(animation);
}
