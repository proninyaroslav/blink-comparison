// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:blink_comparison/core/settings/model.dart';
import 'package:blink_comparison/locale.dart';
import 'package:blink_comparison/ui/auth/components/auth_scaffold.dart';
import 'package:blink_comparison/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../components/widget.dart';

@RoutePage()
class EncryptionPreferencePage extends StatelessWidget {
  final ValueChanged<EncryptionPreference> onClick;

  const EncryptionPreferencePage({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      child: Column(
        children: [
          const PageIcon(icon: Symbols.add_moderator),
          const SizedBox(height: 32.0),
          Text(
            S.of(context).enableEncryptPromt,
            textAlign: TextAlign.center,
            style: AppTheme.pageHeadlineText(context),
          ),
          const SizedBox(height: 40.0),
          LayoutBuilder(builder: (context, constrains) {
            final isSmall = constrains.maxWidth <= 350;
            final direction = isSmall ? Axis.vertical : Axis.horizontal;

            return Flex(
              direction: direction,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              verticalDirection:
                  isSmall ? VerticalDirection.up : VerticalDirection.down,
              children: [
                FillParentWidth(
                  parentDirection: direction,
                  child: FilledButton.tonal(
                    onPressed: () => onClick(const EncryptionPreference.none()),
                    child: Text(
                      S.of(context).no,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                  height: 8.0,
                ),
                FillParentWidth(
                  parentDirection: direction,
                  child: FilledButton(
                    onPressed: () =>
                        onClick(const EncryptionPreference.password()),
                    child: Text(
                      S.of(context).enableEncryptPositiveAnswer,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
