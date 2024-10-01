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

class TakePictureFlash extends StatefulWidget {
  const TakePictureFlash({super.key});

  @override
  State<TakePictureFlash> createState() => TakePictureFlashState();
}

class TakePictureFlashState extends State<TakePictureFlash>
    with SingleTickerProviderStateMixin {
  final animationDuration = Durations.short1;
  late final controller = AnimationController(
    duration: animationDuration,
    vsync: this,
  )..addStatusListener(statusListener);
  bool hide = true;

  late final opacityAnimation = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(
    CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    ),
  );

  void statusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      controller.reverse();
    } else if (status == AnimationStatus.reverse) {
      setState(() {
        hide = true;
      });
    }
  }

  void startFlash() {
    setState(() {
      hide = false;
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.removeStatusListener(statusListener);
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: hide,
      child: FadeTransition(
        opacity: opacityAnimation,
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}
