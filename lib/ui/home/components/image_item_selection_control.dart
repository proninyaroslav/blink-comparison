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

import '../../components/widget.dart';

class ImageItemSelectionControl extends StatefulWidget {
  final bool show;
  final bool isSelected;
  final VoidCallback? onSelected;

  const ImageItemSelectionControl({
    super.key,
    this.show = false,
    this.isSelected = false,
    this.onSelected,
  });

  @override
  State<ImageItemSelectionControl> createState() =>
      _ImageItemSelectionControlState();
}

class _ImageItemSelectionControlState extends State<ImageItemSelectionControl>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: RoundCheckBox.animationDuration,
    vsync: this,
  );

  late final _showAnimation = CurvedAnimation(
    parent: _controller,
    curve: Curves.ease,
  );

  @override
  void initState() {
    super.initState();

    _switchShow();
  }

  @override
  void didUpdateWidget(ImageItemSelectionControl oldWidget) {
    if (widget.show != oldWidget.show) {
      _switchShow();
    }

    super.didUpdateWidget(oldWidget);
  }

  void _switchShow() {
    if (widget.show) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ScaleTransition(
      scale: _showAnimation,
      child: RoundCheckBox(
        isSelected: widget.isSelected,
        onSelected: widget.onSelected,
        animate: !_controller.isAnimating,
        fillColor: WidgetStateProperty.all(theme.colorScheme.tertiaryContainer),
        checkColor: theme.colorScheme.onTertiaryContainer,
      ),
    );
  }
}
