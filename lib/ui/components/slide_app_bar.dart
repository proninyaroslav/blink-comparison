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
import 'package:swipe/swipe.dart';

import 'auto_hide_app_bar_wrapper.dart';

class SlideAppBar extends StatefulWidget {
  final List<Widget>? actions;
  final bool showFirstTime;
  final Widget? leading;

  const SlideAppBar({
    super.key,
    this.actions,
    this.showFirstTime = true,
    this.leading,
  });

  @override
  State<SlideAppBar> createState() => _SlideAppBarState();
}

class _SlideAppBarState extends State<SlideAppBar> {
  final _appBarKey = GlobalKey<AutoHideAppBarWrapperState>();

  @override
  Widget build(BuildContext context) {
    final color =
        Theme.of(context).appBarTheme.backgroundColor?.withOpacity(0.54);
    final appBar = AppBar(
      backgroundColor: color,
      actions: widget.actions,
      leading: widget.leading,
    );
    return Swipe(
      behavior: HitTestBehavior.opaque,
      verticalMaxWidthThreshold: 100,
      verticalMinVelocity: 50,
      onSwipeDown: () => _appBarKey.currentState?.reset(),
      child: Container(
        constraints: BoxConstraints(
          minHeight: appBar.preferredSize.height,
        ),
        child: AutoHideAppBarWrapper(
          key: _appBarKey,
          transformHitTests: false,
          showFirstTime: widget.showFirstTime,
          child: appBar,
        ),
      ),
    );
  }
}
