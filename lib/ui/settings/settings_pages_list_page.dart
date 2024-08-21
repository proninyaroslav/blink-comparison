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
import 'package:blink_comparison/locale.dart';
import 'package:blink_comparison/ui/settings/components/settings_pages_list.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../routes/routes.dart';
import 'components/settings_scaffold.dart';

@RoutePage()
class SettingsPagesListPage extends StatelessWidget {
  const SettingsPagesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => SettingsScaffold(
        appBar: AppBar(
          title: Text(S.of(context).settings),
          leading: BackButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
          ),
        ),
        body: SettingsPagesList(
          onSelected: (route) {
            context.navigateTo(
              route.when(
                appearance: () => const AppearanceSettingsRoute(),
                camera: () => const CameraSettingsRoute(),
              ),
            );
          },
        ),
      ),
      tablet: (context) => const SizedBox.shrink(),
    );
  }
}
