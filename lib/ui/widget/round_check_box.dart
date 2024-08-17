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

class RoundCheckBox extends StatefulWidget {
  static const animationDuration = Duration(milliseconds: 150);

  final bool isSelected;
  final VoidCallback? onSelected;
  final bool animate;
  final BorderSide? side;

  const RoundCheckBox({
    super.key,
    this.isSelected = false,
    this.onSelected,
    this.animate = true,
    this.side,
  });

  @override
  State<RoundCheckBox> createState() => _RoundCheckBoxState();
}

class _RoundCheckBoxState extends State<RoundCheckBox>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: RoundCheckBox.animationDuration,
    vsync: this,
  )..addStatusListener(_statusListener);

  late final _pressAnimation = Tween(
    begin: 1.2,
    end: 0.6,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInBack,
    ),
  );

  void _statusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();

    _setControllerDuration();
  }

  @override
  void dispose() {
    _controller.removeStatusListener(_statusListener);
    _controller.dispose();

    super.dispose();
  }

  @override
  void didUpdateWidget(covariant RoundCheckBox oldWidget) {
    if (oldWidget.animate != widget.animate) {
      _setControllerDuration();
    }
    if (oldWidget.isSelected != widget.isSelected) {
      _controller.forward();
    }

    super.didUpdateWidget(oldWidget);
  }

  void _setControllerDuration() {
    _controller.duration =
        widget.animate ? RoundCheckBox.animationDuration : Duration.zero;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pressAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _pressAnimation.value,
          child: Checkbox(
            value: widget.isSelected,
            fillColor: WidgetStateProperty.all(
              Theme.of(context).colorScheme.secondary,
            ),
            checkColor: Theme.of(context).colorScheme.onSecondary,
            side: widget.side,
            onChanged: widget.onSelected == null
                ? null
                : (value) {
                    _controller.forward();
                    widget.onSelected?.call();
                  },
            shape: const CircleBorder(),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        );
      },
    );
  }
}
