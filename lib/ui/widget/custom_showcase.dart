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

import 'package:blink_comparison/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class CustomShowcase extends StatelessWidget {
  final GlobalKey showcaseKey;
  final Widget child;
  final String? title;
  final String? description;
  final ShapeBorder? shapeBorder;
  final BorderRadius? radius;
  final TextStyle? titleTextStyle;
  final TextStyle? descTextStyle;
  final EdgeInsets? contentPadding;
  final Color overlayColor;
  final double overlayOpacity;
  final Color? showcaseBackgroundColor;
  final Color? textColor;
  final bool showArrow;
  final Duration animationDuration;
  final VoidCallback? onToolTipClick;
  final VoidCallback? onTargetClick;
  final bool? disposeOnTap;
  final bool disableAnimation;
  final EdgeInsets overlayPadding;
  final double? blurValue;

  const CustomShowcase({
    Key? key,
    required this.showcaseKey,
    required this.child,
    this.title,
    required this.description,
    this.shapeBorder,
    this.overlayColor = Colors.black45,
    this.overlayOpacity = 0.75,
    this.titleTextStyle,
    this.descTextStyle,
    this.showcaseBackgroundColor,
    this.textColor,
    this.showArrow = true,
    this.onTargetClick,
    this.disposeOnTap,
    this.animationDuration = const Duration(milliseconds: 2000),
    this.disableAnimation = false,
    this.contentPadding,
    this.onToolTipClick,
    this.overlayPadding = EdgeInsets.zero,
    this.blurValue,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.getThemeData();
    return Showcase(
      key: showcaseKey,
      child: child,
      title: title,
      description: description,
      shapeBorder: shapeBorder,
      overlayColor: overlayColor,
      overlayOpacity: overlayOpacity,
      titleTextStyle: titleTextStyle,
      descTextStyle: descTextStyle ??
          TextStyle(
            fontSize: 18,
            color: textColor ?? theme.colorScheme.onBackground,
          ),
      showcaseBackgroundColor:
          showcaseBackgroundColor ?? theme.colorScheme.background,
      textColor: textColor ?? theme.colorScheme.onBackground,
      showArrow: showArrow,
      onTargetClick: onTargetClick,
      disposeOnTap: disposeOnTap,
      animationDuration: animationDuration,
      contentPadding: contentPadding ?? const EdgeInsets.all(12.0),
      onToolTipClick: onToolTipClick ??
          () => ShowCaseWidget.of(context)?.completed(showcaseKey),
      overlayPadding: overlayPadding,
      blurValue: blurValue,
      radius: radius,
    );
  }
}
