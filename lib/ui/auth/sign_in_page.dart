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

import 'package:blink_comparison/ui/auth/model/auth_state.dart';
import 'package:blink_comparison/ui/components/page_icon.dart';
import 'package:blink_comparison/ui/components/progress_fab.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../locale.dart';
import '../../logger.dart';
import '../theme.dart';
import 'model/auth_cubit.dart';

class SignInButton extends StatelessWidget {
  final TextEditingController passwordFieldController;

  const SignInButton({
    super.key,
    required this.passwordFieldController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
          key: const ValueKey('sign_in_button'),
          onPressed: _handleSubmitCallbackState(
            context,
            state,
            passwordFieldController,
          ),
          label: switch (state) {
            AuthStateAuthInProgress() => const ProgressFab(),
            _ => Text(S.of(context).signIn),
          },
        );
      },
    );
  }
}

VoidCallback? _handleSubmitCallbackState(
  BuildContext context,
  AuthState state,
  TextEditingController passwordFieldController,
) {
  return switch (state) {
    AuthStatePasswordLoaded() ||
    AuthStateAuthFailed() =>
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
    context.read<AuthCubit>().auth(passwordFieldController.text);
  }

  return doAuth;
}

class SignInPage extends StatelessWidget {
  final TextEditingController passwordFieldController;

  const SignInPage({
    super.key,
    required this.passwordFieldController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const PageIcon(icon: Icons.lock_outline_rounded),
        const SizedBox(height: 32.0),
        Text(
          S.of(context).signInDescription,
          textAlign: TextAlign.center,
          style: AppTheme.pageHeadlineText(context),
        ),
        const SizedBox(height: 32.0),
        _PasswordField(passwordFieldController: passwordFieldController),
      ],
    );
  }
}

class _PasswordField extends StatelessWidget {
  final TextEditingController passwordFieldController;

  const _PasswordField({
    required this.passwordFieldController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        switch (state) {
          case AuthStatePasswordNotLoaded():
            context.read<AuthCubit>().loadPassword();
          case AuthStateLoadPasswordFailed(:final exception, :final stackTrace):
            _crashReportMsg(
              context,
              exception,
              stackTrace,
              label: S.of(context).loadPasswordFailed,
              reportMessage: 'Failed to load storage password',
            );
          case AuthStateAuthFailed(:final reason):
            passwordFieldController.clear();
            if (reason
                case AuthErrorException(:final error, :final stackTrace)) {
              _crashReportMsg(
                context,
                error,
                stackTrace,
                label: S.of(context).authorizeFailedException,
                reportMessage: 'Exception during authorization',
              );
            }
          case _:
            break;
        }
      },
      builder: (context, state) {
        return TextField(
          controller: passwordFieldController,
          decoration: InputDecoration(
            hintText: S.of(context).enterPassword,
            errorText: switch (state) {
              AuthStateAuthFailed(:final reason) => switch (reason) {
                  AuthErrorEmptyPassword() => S.of(context).emptyPasswordError,
                  AuthErrorWrongPassword() => S.of(context).wrongPassword,
                  AuthErrorException() =>
                    S.of(context).authorizeFailedException,
                },
              _ => null,
            },
          ),
          enableSuggestions: false,
          autocorrect: false,
          obscureText: true,
          onSubmitted: (_) => _handleSubmitCallbackState(
            context,
            state,
            passwordFieldController,
          )?.call(),
        );
      },
    );
  }
}

void _crashReportMsg(
  BuildContext context,
  Object? exception,
  StackTrace? stackTrace, {
  required String label,
  required String reportMessage,
}) {
  log().e(reportMessage, error: exception, stackTrace: stackTrace);

  final reportCubit = context.read<ErrorReportCubit>();
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(S.of(context).error),
        content: Text(label),
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
          if (exception != null)
            TextButton(
              onPressed: () {
                reportCubit.sendReport(
                  error: exception,
                  stackTrace: stackTrace,
                  message: reportMessage,
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
