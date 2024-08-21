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

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

mixin ExtendedImageDoubleClickMixin<T extends StatefulWidget> on State<T>
    implements TickerProvider {
  late AnimationController _doubleClickAnimationController;
  late VoidCallback _doubleClickAnimationListener;
  Animation<double>? _doubleClickAnimation;

  @override
  void initState() {
    super.initState();

    _doubleClickAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _doubleClickAnimationController.dispose();

    super.dispose();
  }

  void onDoubleTap({
    required double scaleUp,
    required double scaleDown,
    required ExtendedImageGestureState state,
  }) {
    final Offset? pointerDownPosition = state.pointerDownPosition;
    final double? begin = state.gestureDetails!.totalScale;
    double end;

    _doubleClickAnimation?.removeListener(_doubleClickAnimationListener);
    _doubleClickAnimationController.stop();
    _doubleClickAnimationController.reset();

    if (begin == scaleDown) {
      end = scaleUp;
    } else {
      end = scaleDown;
    }

    _doubleClickAnimationListener = () {
      state.handleDoubleTap(
        scale: _doubleClickAnimation!.value,
        doubleTapPosition: pointerDownPosition,
      );
    };
    _doubleClickAnimation = _doubleClickAnimationController.drive(
      Tween<double>(
        begin: begin,
        end: end,
      ),
    );

    _doubleClickAnimation!.addListener(_doubleClickAnimationListener);
    _doubleClickAnimationController.forward();
  }
}
