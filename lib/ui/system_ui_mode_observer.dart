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
import 'package:blink_comparison/ui/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemUIModeObserver extends AutoRouterObserver {
  final bool fullscreenMode;

  SystemUIModeObserver({required this.fullscreenMode});

  @override
  void didPush(Route route, Route? previousRoute) {
    final name = route.settings.name;
    if (fullscreenMode &&
        (name == RefImagePreviewRoute.name ||
            name == CameraPickerRoute.name ||
            name == BlinkComparisonRoute.name ||
            name == CameraConfirmationRoute.name)) {
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
