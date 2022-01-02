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

import 'package:auto_route/auto_route.dart';
import 'package:blink_comparison/ui/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../injector.dart';
import '../utils.dart';
import 'auth_cubit.dart';
import 'sign_in_page.dart';
import 'sign_up_cubit.dart';
import 'sign_up_page.dart';

const _pagePadding =
    EdgeInsets.fromLTRB(16.0, 16.0, 16.0, UiUtils.fabBottomMargin);

const _pageAnimationDuration = Duration(milliseconds: 500);

class AuthPage extends StatefulWidget implements AutoRouteWrapper {
  final VoidCallback? onAuthSuccess;

  const AuthPage({
    Key? key,
    this.onAuthSuccess,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => getIt<AuthCubit>(),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => getIt<SignUpCubit>(),
        ),
      ],
      child: this,
    );
  }

  @override
  _AuthPageState createState() => _AuthPageState();
}

enum _PageType {
  signIn,
  signUp,
}

class _AuthPageState extends State<AuthPage> {
  late final PageController _controller;
  late final TextEditingController _passwordFieldController;
  _PageType _currentPage = _PageType.signIn;
  late final List<Widget> _pages;
  late final Map<_PageType, Widget> _buttons;

  @override
  void initState() {
    super.initState();

    _controller = PageController();
    _passwordFieldController = TextEditingController();
    _pages = [
      SignInPage(passwordFieldController: _passwordFieldController),
      const SignUpPage(),
    ];
    _buttons = {
      _PageType.signIn: SignInButton(
        passwordFieldController: _passwordFieldController,
      ),
      _PageType.signUp: const SignUpButton(),
    };
    context.read<AuthCubit>().loadPassword();
  }

  @override
  void dispose() {
    _passwordFieldController.dispose();
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                noPassword: () {
                  if (_currentPage != _PageType.signUp) {
                    _currentPage = _PageType.signUp;
                    _animateNextPage();
                  }
                },
                authSuccess: (info) => widget.onAuthSuccess?.call(),
                orElse: () {
                  if (_currentPage != _PageType.signIn) {
                    _currentPage = _PageType.signIn;
                    _animateNextPage();
                  }
                },
              );
            },
          ),
          BlocListener<SignUpCubit, SignUpState>(
            listener: (context, state) {
              state.maybeWhen(
                passwordSaved: () {
                  context.read<AuthCubit>().loadPassword();
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: _Body(
          controller: _controller,
          pages: _pages,
        ),
      ),
      floatingActionButton: _PageButton(buttons: _buttons),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _animateNextPage() {
    _controller.nextPage(
      duration: _pageAnimationDuration,
      curve: Curves.ease,
    );
  }
}

double _getAdaptiveWidth({
  required SizingInformation sizingInfo,
  required Orientation orientation,
}) {
  if (sizingInfo.isMobile) {
    if (orientation == Orientation.landscape) {
      return sizingInfo.screenSize.width / 2;
    } else {
      return double.infinity;
    }
  } else {
    return sizingInfo.screenSize.width / 3;
  }
}

class _Body extends StatelessWidget {
  final PageController controller;
  final List<Widget> pages;

  const _Body({
    Key? key,
    required this.controller,
    required this.pages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Unfocus(
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          itemBuilder: (pageViewContext, position) {
            final mediaQuery = MediaQuery.of(context);
            final padding = mediaQuery.padding;
            return _Page(
              child: pages[position % pages.length],
              height: mediaQuery.size.height - padding.top - padding.bottom,
            );
          },
        ),
      ),
    );
  }
}

class _PageButton extends StatelessWidget {
  final Map<_PageType, Widget> buttons;

  const _PageButton({
    Key? key,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return _AdaptiveFab(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            layoutBuilder: (currentChild, previousChildren) {
              return Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                  ...previousChildren,
                  if (currentChild != null) currentChild,
                ],
              );
            },
            child: state.maybeWhen(
              noPassword: () => buttons[_PageType.signUp]!,
              passwordLoaded: (_) => buttons[_PageType.signIn]!,
              authInProgress: (_) => buttons[_PageType.signIn]!,
              authFailed: (_, reason) => buttons[_PageType.signIn]!,
              authSuccess: (_) => buttons[_PageType.signIn]!,
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        );
      },
    );
  }
}

class _AdaptiveFab extends StatelessWidget {
  final Widget child;

  const _AdaptiveFab({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        final orientation = MediaQuery.of(context).orientation;
        return Container(
          width: _getAdaptiveWidth(
            orientation: orientation,
            sizingInfo: sizingInfo,
          ),
          padding: orientation == Orientation.portrait && sizingInfo.isMobile
              ? const EdgeInsets.symmetric(horizontal: 16.0)
              : EdgeInsets.zero,
          child: child,
        );
      },
    );
  }
}

class _Page extends StatelessWidget {
  final Widget child;
  final double height;

  const _Page({
    Key? key,
    required this.child,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        reverse: true,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: height),
          child: Center(
            child: ResponsiveBuilder(
              builder: (context, sizingInfo) {
                final orientation = MediaQuery.of(context).orientation;
                final width = _getAdaptiveWidth(
                  orientation: orientation,
                  sizingInfo: sizingInfo,
                );
                return Container(
                  constraints: BoxConstraints(maxWidth: width),
                  padding: _pagePadding,
                  child: child,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
