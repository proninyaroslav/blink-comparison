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

import 'package:auto_route/auto_route.dart';
import 'package:blink_comparison/core/date_time_provider.dart';
import 'package:blink_comparison/core/encrypt/password_hasher.dart';
import 'package:blink_comparison/core/encrypt/secure_key_factory.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/ui/auth/model/auth_state.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_state.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../injector.dart';
import '../model/utils.dart';
import 'model/auth_cubit.dart';
import 'model/sign_up_cubit.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';

const _pagePadding =
    EdgeInsets.fromLTRB(16.0, 16.0, 16.0, UiUtils.fabBottomMargin);

@RoutePage()
class AuthPage extends StatefulWidget implements AutoRouteWrapper {
  final VoidCallback? onAuthSuccess;

  const AuthPage({
    super.key,
    this.onAuthSuccess,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(
            getIt<PasswordRepository>(),
            getIt<PasswordHasher>(),
            getIt<DateTimeProvider>(),
            getIt<AuthFactorRepository>(),
            getIt<SecureKeyFactory>(),
          ),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(
            getIt<PasswordRepository>(),
            getIt<AuthFactorRepository>(),
            getIt<SecureKeyFactory>(),
          ),
        ),
      ],
      child: this,
    );
  }

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final TextEditingController _passwordFieldController;

  @override
  void initState() {
    super.initState();

    _passwordFieldController = TextEditingController();
    context.read<AuthCubit>().loadPassword();
  }

  @override
  void dispose() {
    _passwordFieldController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state case AuthStateAuthSuccess()) {
                widget.onAuthSuccess?.call();
              }
            },
          ),
          BlocListener<SignUpCubit, SignUpState>(
            listener: (context, state) {
              if (state case SignUpStateSavedAndAuthorized()) {
                widget.onAuthSuccess?.call();
              }
            },
          ),
        ],
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) => _Body(
            child: switch (state) {
              AuthStateInitial() ||
              AuthStateAuthSuccess() =>
                const CircularProgressIndicator(),
              AuthStateNoPassword() => const SignUpPage(),
              _ =>
                SignInPage(passwordFieldController: _passwordFieldController),
            },
          ),
        ),
      ),
      floatingActionButton: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) => _AdaptiveFab(
          child: switch (state) {
            AuthStateInitial() ||
            AuthStateAuthSuccess() =>
              const SizedBox.shrink(),
            AuthStateNoPassword() => const SignUpButton(),
            _ =>
              SignInButton(passwordFieldController: _passwordFieldController),
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
  final Widget child;

  const _Body({required this.child});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final padding = mediaQuery.padding;

    return SafeArea(
      child: Unfocus(
        child: Scrollbar(
          child: SingleChildScrollView(
            reverse: true,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    mediaQuery.size.height - padding.top - padding.bottom,
              ),
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
        ),
      ),
    );
  }
}

class _AdaptiveFab extends StatelessWidget {
  final Widget child;

  const _AdaptiveFab({
    required this.child,
  });

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
