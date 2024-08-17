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

import 'dart:async';

import 'package:blink_comparison/ui/widget/widget.dart';
import 'package:flutter/material.dart';

import '../../locale.dart';

const _animDuration = Duration(milliseconds: 250);
final _startCollapseDuration = Duration(
  milliseconds: (_animDuration.inMilliseconds / 2).ceil(),
);

class DropdownFab extends StatefulWidget {
  final Widget icon;
  final Widget label;
  final List<Widget> menuChildren;
  final double menuWidth;

  const DropdownFab({
    super.key,
    required this.icon,
    required this.label,
    required this.menuChildren,
    this.menuWidth = double.infinity,
  });

  @override
  State<DropdownFab> createState() => _DropdownFabState();
}

class _DropdownFabState extends State<DropdownFab>
    with TickerProviderStateMixin {
  final _fabKey = GlobalKey(debugLabel: 'add_ref_image');
  late AnimationController _animationController;
  bool _showMenu = false;
  late Size _fabSize;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: _animDuration,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MeasureSize(
      onChange: (size) => setState(() => _fabSize = size),
      child: FloatingActionButton.extended(
        key: _fabKey,
        onPressed: _showMenu
            ? null
            : () {
                _showMenuContainer();
                setState(() => _showMenu = true);
              },
        label: widget.label,
        icon: widget.icon,
        disabledElevation: 0.0,
        highlightElevation: 0.0,
      ),
    );
  }

  void _showMenuContainer() {
    if (_fabKey.currentContext == null) {
      return;
    }
    final box = _fabKey.currentContext!.findRenderObject() as RenderBox;
    final globalPos = box.localToGlobal(Offset.zero);
    final size = MediaQuery.of(context)
        .removePadding(
          removeTop: true,
          removeBottom: true,
          removeLeft: true,
          removeRight: true,
        )
        .size;

    showDialog(
      context: context,
      builder: (context) {
        return Stack(
          children: [
            PopScope(
              canPop: false,
              onPopInvokedWithResult: (didPop, result) async {
                _animationController.reverse();
                setState(() => _showMenu = false);
              },
              child: Positioned.directional(
                textDirection: Directionality.of(context),
                end: size.width - globalPos.dx - _fabSize.width,
                bottom: size.height - globalPos.dy - _fabSize.height,
                child: _AnimatedMenu(
                  controller: _animationController,
                  collapsedSize: _fabSize,
                  revealedWidth: widget.menuWidth,
                  onCollapsed: () {
                    Navigator.of(context).pop();
                    setState(() => _showMenu = false);
                  },
                  children: widget.menuChildren,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class DropdownFabMenuItem extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final VoidCallback onTap;

  const DropdownFabMenuItem({
    super.key,
    required this.leading,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      onTap: () async {
        final menuState = context.findAncestorStateOfType<_AnimatedMenuState>();
        await menuState?.collapse();
        onTap();
      },
    );
  }
}

class _AnimatedMenu extends StatefulWidget {
  final List<Widget> children;
  final AnimationController controller;
  final Size collapsedSize;
  final double revealedWidth;
  final VoidCallback onCollapsed;

  const _AnimatedMenu({
    required this.children,
    required this.controller,
    required this.collapsedSize,
    required this.revealedWidth,
    required this.onCollapsed,
  });

  @override
  _AnimatedMenuState createState() => _AnimatedMenuState();
}

class _AnimatedMenuState extends State<_AnimatedMenu> {
  late Animation<double>? _sizeAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_animationListener);

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(widget.controller);
    _sizeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(widget.controller);

    widget.controller.forward();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_animationListener);

    super.dispose();
  }

  void _animationListener() {
    if (isCollapsed) {
      widget.onCollapsed.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fabTheme = theme.floatingActionButtonTheme;
    _colorAnimation = ColorTween(
      begin: fabTheme.backgroundColor,
      end: theme.cardTheme.color,
    ).animate(
      CurvedAnimation(
        curve: Curves.ease,
        parent: widget.controller,
      ),
    );
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, index) {
        return FadeTransition(
          opacity: _fadeAnimation,
          child: Material(
            color: _colorAnimation.value,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            elevation: fabTheme.elevation ?? 6,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: widget.collapsedSize.width,
                minHeight: widget.collapsedSize.height,
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                heightFactor: _sizeAnimation!.value,
                widthFactor: _sizeAnimation!.value,
                child: SizedBox(
                  width: widget.revealedWidth,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      const SizedBox(height: 8.0),
                      ...widget.children,
                      _CloseButton(
                        onPressed: () => collapse(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  bool get isCollapsed => widget.controller.status == AnimationStatus.dismissed;

  Future<void> collapse() async {
    await Future.delayed(_startCollapseDuration);
    if (isCollapsed) {
      return;
    }
    return widget.controller.reverse();
  }
}

class _CloseButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _CloseButton({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fabTheme = theme.floatingActionButtonTheme;
    final foregroundColor = theme.colorScheme.onSecondary;
    return ListTileTheme(
      iconColor: foregroundColor,
      child: ListTile(
        leading: const Icon(Icons.close),
        tileColor: fabTheme.backgroundColor,
        title: Text(
          S.of(context).close,
          style: theme.textTheme.labelLarge?.copyWith(color: foregroundColor),
        ),
        onTap: onPressed,
      ),
    );
  }
}
