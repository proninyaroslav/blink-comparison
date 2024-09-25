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
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/ui/auth/model/auth_state.dart';
import 'package:blink_comparison/ui/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import 'model/auth_cubit.dart';

@RoutePage()
class AuthPage extends StatefulWidget implements AutoRouteWrapper {
  final VoidCallback? onAuthSuccess;

  const AuthPage({
    super.key,
    this.onAuthSuccess,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(
        getIt<PasswordRepository>(),
        getIt<AppSettings>(),
      ),
      child: this,
    );
  }

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<AuthCubit>().load();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) async {
            switch (state) {
              case AuthStateSignUpRequired():
                context.replaceRoute(
                  SignUpRoute(
                    onAuthSuccess: () => widget.onAuthSuccess?.call(),
                  ),
                );
              case AuthStateNoAuthRequired():
                widget.onAuthSuccess?.call();
              case AuthStateSignInRequired():
                context.pushRoute(
                  SignInRoute(
                    onAuthSuccess: () => widget.onAuthSuccess?.call(),
                  ),
                );
              case AuthStateNoEncryptPreferences():
                context.pushRoute(
                  EncryptionPreferenceRoute(
                    onClick: (preference) async {
                      await context
                          .read<AuthCubit>()
                          .setEncryptionPreference(preference);
                    },
                  ),
                );
              case _:
                break;
            }
          },
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
