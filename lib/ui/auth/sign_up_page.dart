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

import 'package:blink_comparison/ui/auth/model/sign_up_state.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../locale.dart';
import '../../logger.dart';
import '../theme.dart';
import 'model/sign_up_cubit.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return FloatingActionButton.extended(
          key: const ValueKey('sign_up_button'),
          onPressed: _handleSubmitCallbackState(context, state),
          label: state.maybeWhen(
            savingPassword: () => const ProgressFab(),
            orElse: () => Text(S.of(context).save),
          ),
        );
      },
    );
  }
}

VoidCallback? _handleSubmitCallbackState(
  BuildContext context,
  SignUpState state,
) {
  return state.maybeWhen(
    savingPassword: () => null,
    passwordSaved: () => null,
    orElse: () => _submit(context),
  );
}

VoidCallback _submit(BuildContext context) {
  void doAuth() {
    FocusScope.of(context).unfocus();
    context.read<SignUpCubit>().submit();
  }

  return doAuth;
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        PageIcon(icon: MdiIcons.lockPlusOutline),
        const SizedBox(height: 32.0),
        Text(
          S.of(context).setPasswordDescription,
          textAlign: TextAlign.center,
          style: AppTheme.pageHeadlineText(context),
        ),
        const SizedBox(height: 32.0),
        const _Fields(),
      ],
    );
  }
}

class _Fields extends StatelessWidget {
  const _Fields();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.maybeWhen(
          savePasswordFailed: (password, repeatPassword, e, stackTrace) {
            _savePasswordFailedMsg(context, e, stackTrace);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          passwordChanged: (password, repeatPassword) {
            return _buildFields(context, password, repeatPassword, state);
          },
          invalidPassword: (password, repeatPassword) {
            return _buildFields(context, password, repeatPassword, state);
          },
          passwordMismatch: (password, repeatPassword) {
            return _buildFields(context, password, repeatPassword, state);
          },
          orElse: () => _buildFields(context, null, null, state),
        );
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
    return error?.when(
      empty: () => S.of(context).passwordEmptyError,
      tooShort: () => S.of(context).passwordTooShort(Password.minLength),
      tooLong: () => S.of(context).passwordTooLong(Password.maxLength),
    );
  }

  String? _getRepeatPasswordErrorStr(
    BuildContext context,
    RepeatPasswordError? error,
  ) {
    return error?.when(
      empty: () => S.of(context).passwordRepeatError,
      mismatch: () => S.of(context).passwordMismatch,
    );
  }

  void _savePasswordFailedMsg(
    BuildContext context,
    Exception? exception,
    StackTrace? stackTrace,
  ) {
    const msg = 'Failed to save password';
    log().e(msg, error: exception, stackTrace: stackTrace);

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
            if (exception != null)
              TextButton(
                onPressed: () {
                  reportCubit.sendReport(
                    error: exception,
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
