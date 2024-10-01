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

class CameraPauseProgress extends StatefulWidget {
  final bool visible;

  const CameraPauseProgress({super.key, required this.visible});

  @override
  State<CameraPauseProgress> createState() => _CameraPauseProgressState();
}

class _CameraPauseProgressState extends State<CameraPauseProgress>
    with SingleTickerProviderStateMixin {
  late bool visible = widget.visible;
  late AnimationController controller;
  late final opacityAnimation = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(
    CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    ),
  );

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Durations.medium3,
    );
  }

  @override
  void didUpdateWidget(CameraPauseProgress oldWidget) {
    if (oldWidget.visible != widget.visible) {
      setState(() {
        visible = widget.visible;
      });
      runAnimation();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    setState(() {
      visible = widget.visible;
    });
    runAnimation();

    super.didChangeDependencies();
  }

  void runAnimation() {
    if (visible) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !visible,
      child: FadeTransition(
        opacity: opacityAnimation,
        child: Container(
          color: Colors.black45,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
