// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:flutter/foundation.dart';

import '../crash_catcher.dart';

/// Note: before creating an object, needs call one of the following methods:
/// [WidgetsFlutterBinding.ensureInitialized()]
/// [TestWidgetsFlutterBinding.ensureInitialized()]
class FlutterCrashHook implements CrashHook {
  @override
  Future<void> setup({
    required List<CrashHandler> handlers,
  }) async {
    FlutterError.onError = (details) async {
      await Future.wait(handlers.map(
        (handler) => handler.handle(details.exception, details.stack),
      ));
    };
  }
}
