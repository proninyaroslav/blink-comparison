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

import 'package:flutter_windowmanager_plus/flutter_windowmanager_plus.dart';
import 'package:injectable/injectable.dart';

abstract class WindowManager {
  /// Allow/disallow screenshots
  Future<bool> setSecureFlag(bool enable);
}

@Singleton(as: WindowManager)
class WindowManagerImpl implements WindowManager {
  @override
  Future<bool> setSecureFlag(bool enable) async {
    if (enable) {
      return FlutterWindowManagerPlus.addFlags(
        FlutterWindowManagerPlus.FLAG_SECURE,
      );
    } else {
      return FlutterWindowManagerPlus.clearFlags(
        FlutterWindowManagerPlus.FLAG_SECURE,
      );
    }
  }
}