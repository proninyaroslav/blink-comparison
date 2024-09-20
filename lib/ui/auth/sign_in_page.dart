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

import 'package:blink_comparison/ui/auth/components/sign_in_button.dart';
import 'package:blink_comparison/ui/auth/components/sign_in_password_field.dart';
import 'package:blink_comparison/ui/components/page_icon.dart';
import 'package:flutter/material.dart';

import '../../locale.dart';
import '../theme.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController passwordFieldController;

  const SignInPage({
    super.key,
    required this.passwordFieldController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PageIcon(icon: Icons.lock_outline_rounded),
        const SizedBox(height: 32.0),
        Text(
          S.of(context).signInDescription,
          textAlign: TextAlign.center,
          style: AppTheme.pageHeadlineText(context),
        ),
        const SizedBox(height: 32.0),
        SignInPasswordField(passwordFieldController: passwordFieldController),
        const SizedBox(height: 32.0),
        SizedBox(
          width: double.infinity,
          child: SignInButton(passwordFieldController: passwordFieldController),
        ),
      ],
    );
  }
}
