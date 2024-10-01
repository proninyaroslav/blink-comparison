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

import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/injector.dart';
import 'package:blink_comparison/ui/components/portrait_only_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/symbols.dart';

class FlipCameraButton extends StatelessWidget {
  final bool show;
  final VoidCallback onTap;

  const FlipCameraButton({
    super.key,
    required this.show,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (!show) {
      return const SizedBox(
        width: 40.0,
        height: 40.0,
      );
    }
    return PortraitOnlyWidget(
      direction: RotateDirection.clockwise,
      child: Material(
        shape: const CircleBorder(),
        color: Colors.black38,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            HapticFeedback.lightImpact();
            onTap();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              getIt<PlatformInfo>().isAndroid
                  ? Symbols.flip_camera_android
                  : Symbols.flip_camera_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
