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
import 'package:blink_comparison/core/encrypt/secure_key_factory.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/persistent_auth_factor_repository.dart';
import 'package:blink_comparison/injector.dart';
import 'package:blink_comparison/ui/auth/components/auth_scaffold.dart';
import 'package:blink_comparison/ui/auth/components/sign_up_fields.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_cubit.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../locale.dart';
import '../theme.dart';
import 'components/sign_up_button.dart';
import 'model/sign_up_state.dart';

@RoutePage()
class SignUpPage extends StatefulWidget implements AutoRouteWrapper {
  final VoidCallback onAuthSuccess;

  const SignUpPage({super.key, required this.onAuthSuccess});

  @override
  State<SignUpPage> createState() => _SignUpPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt<PersistentAuthFactorRepository>(),
        getIt<AuthFactorRepository>(),
        getIt<SecureKeyFactory>(),
      ),
      child: this,
    );
  }
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state case SignUpStateSavedAndAuthorized()) {
          widget.onAuthSuccess();
        }
      },
      child: AuthScaffold(
        child: Column(
          children: [
            const PageIcon(icon: Symbols.key),
            const SizedBox(height: 32.0),
            Text(
              S.of(context).setPasswordDescription,
              textAlign: TextAlign.center,
              style: AppTheme.pageHeadlineText(context),
            ),
            const SizedBox(height: 32.0),
            const SignUpFields(),
            const SizedBox(height: 32.0),
            const FillParentWidth(
              parentDirection: Axis.vertical,
              child: SignUpButton(),
            ),
          ],
        ),
      ),
    );
  }
}
