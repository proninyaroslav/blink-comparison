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
import 'package:blink_comparison/ui/auth/model/sign_up_cubit.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_state.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return FilledButton(
          key: const ValueKey('sign_up_button'),
          onPressed: _handleSubmitCallbackState(context, state),
          child: switch (state) {
            SignUpStateSavingPassword() => ProgressButton(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            _ => Text(S.of(context).save),
          },
        );
      },
    );
  }
}

VoidCallback? _handleSubmitCallbackState(
  BuildContext context,
  SignUpState state,
) {
  return switch (state) {
    SignUpStateSavingPassword() || SignUpStateSavedAndAuthorized() => null,
    _ => _submit(context),
  };
}

VoidCallback _submit(BuildContext context) {
  void doAuth() {
    FocusScope.of(context).unfocus();
    context.read<SignUpCubit>().submit();
  }

  return doAuth;
}
