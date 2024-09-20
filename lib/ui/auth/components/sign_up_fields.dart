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
import 'package:blink_comparison/logger.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_cubit.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_state.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpFields extends StatelessWidget {
  const SignUpFields({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state
            case SignUpStateSavePasswordFailed(
              :final error,
              :final stackTrace
            )) {
          _savePasswordFailedMsg(context, error, stackTrace);
        }
      },
      builder: (context, state) {
        return switch (state) {
          SignUpStatePasswordChanged(:final password, :final repeatPassword) ||
          SignUpStateInvalidPassword(:final password, :final repeatPassword) ||
          SignUpStatePasswordMismatch(:final password, :final repeatPassword) =>
            _buildFields(context, password, repeatPassword, state),
          _ => _buildFields(context, null, null, state),
        };
      },
    );
  }

  Widget _buildFields(
    BuildContext context,
    Password? password,
    RepeatPassword? repeatPassword,
    SignUpState state,
  ) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: S.of(context).enterPassword,
            errorText: _getPasswordErrorStr(context, password?.error),
          ),
          enableSuggestions: false,
          autocorrect: false,
          obscureText: true,
          textInputAction: TextInputAction.next,
          onChanged: (value) {
            context.read<SignUpCubit>().passwordChanged(value);
          },
        ),
        const SizedBox(height: 16.0),
        TextField(
          decoration: InputDecoration(
            hintText: S.of(context).enterPasswordAgain,
            errorText: _getRepeatPasswordErrorStr(
              context,
              repeatPassword?.error,
            ),
          ),
          enableSuggestions: false,
          autocorrect: false,
          obscureText: true,
          onChanged: (value) {
            context.read<SignUpCubit>().repeatPasswordChanged(value);
          },
          onSubmitted: (_) => _handleSubmitCallbackState(
            context,
            state,
          )?.call(),
        ),
      ],
    );
  }

  String? _getPasswordErrorStr(BuildContext context, PasswordError? error) {
    return switch (error) {
      null => null,
      PasswordErrorEmpty() => S.of(context).passwordEmptyError,
      PasswordErrorTooShort() =>
        S.of(context).passwordTooShort(Password.minLength),
      PasswordErrorTooLong() =>
        S.of(context).passwordTooLong(Password.maxLength),
    };
  }

  String? _getRepeatPasswordErrorStr(
    BuildContext context,
    RepeatPasswordError? error,
  ) {
    return switch (error) {
      null => null,
      RepeatPasswordErrorEmpty() => S.of(context).passwordRepeatError,
      RepeatPasswordErrorMismatch() => S.of(context).passwordMismatch,
    };
  }

  void _savePasswordFailedMsg(
    BuildContext context,
    Object? error,
    StackTrace? stackTrace,
  ) {
    const msg = 'Failed to save password';
    log().e(msg, error: error, stackTrace: stackTrace);

    final reportCubit = context.read<ErrorReportCubit>();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).error),
          content: Text(S.of(context).savePasswordFailed),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                MaterialLocalizations.of(context).okButtonLabel,
                textAlign: TextAlign.end,
              ),
            ),
            if (error != null)
              TextButton(
                onPressed: () {
                  reportCubit.sendReport(
                    error: error,
                    stackTrace: stackTrace,
                    message: msg,
                  );
                },
                child: Text(
                  S.of(context).crashDialogReport,
                  textAlign: TextAlign.end,
                ),
              ),
          ],
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
