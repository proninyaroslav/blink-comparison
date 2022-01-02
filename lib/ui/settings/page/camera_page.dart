// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:blink_comparison/ui/settings/page/camera_cubit.dart';
import 'package:flutter/material.dart' hide Locale;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings_list.dart';
import '../settings_scaffold.dart';

class CameraSettingsPage extends StatelessWidget {
  const CameraSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsScaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsCamera),
      ),
      body: SettingsList(
        key: const PageStorageKey('camera_list'),
        groups: [
          SettingsListGroup(
            items: [
              _buildEnableFlashByDefaultOption(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEnableFlashByDefaultOption(BuildContext context) {
    return BlocBuilder<CameraSettingsCubit, CameraState>(
      buildWhen: (prev, current) => current is CameraStateEnableFlashChanged,
      builder: (context, state) {
        return SwitchListTile(
          title: Text(S.of(context).settingsFlashByDefault),
          value: state.info.enableFlashByDefault,
          secondary: const Icon(Icons.flash_on_outlined),
          onChanged:
              context.read<CameraSettingsCubit>().setEnableFlashByDefault,
        );
      },
    );
  }
}
