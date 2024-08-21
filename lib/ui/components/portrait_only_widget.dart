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

enum RotateDirection {
  clockwise,
  counterclockwise,
}

class PortraitOnlyWidget extends StatelessWidget {
  final Widget child;
  final RotateDirection direction;

  const PortraitOnlyWidget({
    super.key,
    required this.child,
    this.direction = RotateDirection.counterclockwise,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, _) {
        // Get global (device) orientation
        final orientation = MediaQuery.of(context).orientation;
        return RotatedBox(
          quarterTurns:
              orientation == Orientation.portrait ? 0 : _getTurnsDirection(),
          child: child,
        );
      },
    );
  }

  int _getTurnsDirection() {
    switch (direction) {
      case RotateDirection.clockwise:
        return 1;
      case RotateDirection.counterclockwise:
        return -1;
    }
  }
}
