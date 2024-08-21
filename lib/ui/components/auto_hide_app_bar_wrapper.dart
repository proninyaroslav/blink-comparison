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

import 'package:async/async.dart';
import 'package:flutter/material.dart';

class AutoHideAppBarWrapper extends StatefulWidget
    implements PreferredSizeWidget {
  final PreferredSizeWidget child;
  final bool transformHitTests;
  final bool showFirstTime;

  const AutoHideAppBarWrapper({
    super.key,
    required this.child,
    this.transformHitTests = true,
    this.showFirstTime = true,
  });

  @override
  Size get preferredSize => child.preferredSize;

  @override
  State<AutoHideAppBarWrapper> createState() => AutoHideAppBarWrapperState();
}

class AutoHideAppBarWrapperState extends State<AutoHideAppBarWrapper>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final _animation = Tween<Offset>(
    begin: const Offset(0, -1),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ),
  );
  RestartableTimer? _timer;
  bool _visible = false;
  bool _offstage = true;

  @override
  void initState() {
    super.initState();

    _controller.addListener(_controllerListener);
    if (widget.showFirstTime) {
      reset();
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerListener);
    _controller.dispose();
    super.dispose();
  }

  void _controllerListener() {
    if (_controller.status == AnimationStatus.forward) {
      setState(() => _offstage = false);
    } else if (_controller.isDismissed) {
      setState(() => _offstage = true);
    }
  }

  void reset() {
    if (!mounted || _visible || _timer?.isActive == true) {
      return;
    }
    _visible = true;
    _slide();
    if (_timer == null) {
      _timer = RestartableTimer(const Duration(milliseconds: 2500), _switch);
    } else {
      _timer?.reset();
    }
  }

  void _switch() {
    _visible = !_visible;
    _slide();
  }

  void _slide() {
    if (!mounted) {
      return;
    }
    _visible ? _controller.forward() : _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      transformHitTests: widget.transformHitTests,
      child: Offstage(
        offstage: _offstage,
        child: widget.child,
      ),
    );
  }
}
