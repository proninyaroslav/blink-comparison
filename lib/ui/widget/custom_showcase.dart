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

import 'package:blink_comparison/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class CustomShowcase extends StatelessWidget {
  final GlobalKey showcaseKey;
  final Widget child;
  final String? title;
  final String? description;
  final ShapeBorder targetShapeBorder;

  const CustomShowcase({
    super.key,
    required this.showcaseKey,
    required this.child,
    this.title,
    required this.description,
    this.targetShapeBorder = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.getThemeData();
    return Showcase(
      key: showcaseKey,
      title: title,
      description: description,
      descTextStyle: TextStyle(
        fontSize: 18,
        color: theme.colorScheme.onSurface,
      ),
      tooltipBackgroundColor: theme.colorScheme.surface,
      textColor: theme.colorScheme.onSurface,
      tooltipPadding: const EdgeInsets.all(12.0),
      onToolTipClick: () => ShowCaseWidget.of(context).completed(showcaseKey),
      targetShapeBorder: targetShapeBorder,
      child: child,
    );
  }
}
