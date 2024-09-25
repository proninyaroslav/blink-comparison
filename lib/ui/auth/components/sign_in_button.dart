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

import 'package:blink_comparison/locale.dart';
import 'package:blink_comparison/ui/auth/model/sign_in_cubit.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/sign_in_state.dart';

class SignInButton extends StatelessWidget {
  final TextEditingController passwordFieldController;

  const SignInButton({
    super.key,
    required this.passwordFieldController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      builder: (context, state) {
        return FilledButton(
          key: const ValueKey('sign_in_button'),
          onPressed: _handleSubmitCallbackState(
            context,
            state,
            passwordFieldController,
          ),
          child: switch (state) {
            SignInStateAuthInProgress() ||
            SignInStateAuthSuccess() =>
              ProgressButton(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            _ => Text(S.of(context).signIn),
          },
        );
      },
    );
  }
}

VoidCallback? _handleSubmitCallbackState(
  BuildContext context,
  SignInState state,
  TextEditingController passwordFieldController,
) {
  return switch (state) {
    SignInStatePasswordLoaded() ||
    SignInStateAuthFailed() =>
      _auth(context, passwordFieldController),
    _ => null,
  };
}

VoidCallback _auth(
  BuildContext context,
  TextEditingController passwordFieldController,
) {
  void doAuth() {
    FocusScope.of(context).unfocus();
    context.read<SignInCubit>().auth(passwordFieldController.text);
  }

  return doAuth;
}
