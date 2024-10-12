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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_device_orientation/native_device_orientation.dart';

enum RotateDirection {
  clockwise,
  counterclockwise,
}

class PortraitOnlyWidget extends StatelessWidget {
  late final Widget? _child;
  late final Widget Function(BuildContext, DeviceOrientation?)? _builder;
  final RotateDirection direction;

  PortraitOnlyWidget({
    super.key,
    required Widget child,
    this.direction = RotateDirection.counterclockwise,
  }) {
    _child = child;
    _builder = null;
  }

  PortraitOnlyWidget.builder({
    super.key,
    required Widget Function(BuildContext, DeviceOrientation?) builder,
    this.direction = RotateDirection.counterclockwise,
  }) {
    _child = null;
    _builder = builder;
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, _) {
        return FutureBuilder(
            future: NativeDeviceOrientationCommunicator().orientation(),
            builder: (context, snapshot) {
              final orientation = snapshot.data;
              return RotatedBox(
                quarterTurns:
                    orientation == null ? 0 : _getTurnsDirection(orientation),
                child: _child ??
                    _builder!(
                      context,
                      orientation?.deviceOrientation,
                    ),
              );
            });
      },
    );
  }

  int _getTurnsDirection(NativeDeviceOrientation orientation) =>
      switch (direction) {
        RotateDirection.clockwise => -_turns[orientation]!,
        RotateDirection.counterclockwise => _turns[orientation]!,
      };
}

final Map<NativeDeviceOrientation, int> _turns = {
  NativeDeviceOrientation.portraitUp: 0,
  NativeDeviceOrientation.landscapeRight: 1,
  NativeDeviceOrientation.portraitDown: 2,
  NativeDeviceOrientation.landscapeLeft: 3,
};
