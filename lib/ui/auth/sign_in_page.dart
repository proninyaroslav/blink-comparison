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
import 'package:blink_comparison/injector.dart';
import 'package:blink_comparison/ui/auth/components/auth_scaffold.dart';
import 'package:blink_comparison/ui/auth/components/sign_in_button.dart';
import 'package:blink_comparison/ui/auth/components/sign_in_password_field.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../locale.dart';
import '../theme.dart';
import 'model/sign_in_cubit.dart';
import 'model/sign_in_state.dart';

@RoutePage()
class SignInPage extends StatefulWidget implements AutoRouteWrapper {
  final VoidCallback onAuthSuccess;

  const SignInPage({super.key, required this.onAuthSuccess});

  @override
  State<SignInPage> createState() => _SignInPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(
        getIt<PasswordRepository>(),
        getIt<PasswordHasher>(),
        getIt<DateTimeProvider>(),
        getIt<AuthFactorRepository>(),
        getIt<SecureKeyFactory>(),
      ),
      child: this,
    );
  }
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _passwordFieldController =
      TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<SignInCubit>().load();
    });
  }

  @override
  void dispose() {
    _passwordFieldController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state case SignInStateAuthSuccess()) {
          widget.onAuthSuccess();
        }
      },
      child: AuthScaffold(
        child: Column(
          children: [
            const PageIcon(icon: Icons.lock_outline_rounded),
            const SizedBox(height: 32.0),
            Text(
              S.of(context).signInDescription,
              textAlign: TextAlign.center,
              style: AppTheme.pageHeadlineText(context),
            ),
            const SizedBox(height: 32.0),
            SignInPasswordField(
              passwordFieldController: _passwordFieldController,
            ),
            const SizedBox(height: 32.0),
            FillParentWidth(
              parentDirection: Axis.vertical,
              child: SignInButton(
                passwordFieldController: _passwordFieldController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
