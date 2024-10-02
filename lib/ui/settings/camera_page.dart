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
import 'package:blink_comparison/ui/settings/model/camera_cubit.dart';
import 'package:blink_comparison/ui/settings/model/camera_state.dart';
import 'package:flutter/material.dart' hide Locale;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'components/settings_list.dart';
import 'components/settings_scaffold.dart';

@RoutePage()
class CameraSettingsPage extends StatelessWidget {
  const CameraSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsScaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsCamera),
      ),
      body: BlocBuilder<CameraSettingsCubit, CameraState>(
        buildWhen: (prev, next) => next is CameraStateLoaded,
        builder: (context, state) => switch (state) {
          CameraStateInitial() =>
            const Center(child: CircularProgressIndicator()),
          _ => SettingsList(
              key: const PageStorageKey('camera_list'),
              groups: [
                SettingsListGroup(
                  items: [
                    _buildEnableFlashByDefaultOption(context),
                    _buildFullscreenModeOption(context),
                    _buildAutofocusOption(context),
                  ],
                ),
              ],
            ),
        },
      ),
    );
  }

  Widget _buildEnableFlashByDefaultOption(BuildContext context) {
    final cubit = context.read<CameraSettingsCubit>();

    return BlocBuilder<CameraSettingsCubit, CameraState>(
      buildWhen: (prev, current) => current is CameraStateEnableFlashChanged,
      builder: (context, state) {
        return SwitchListTile(
          title: Text(S.of(context).settingsFlashByDefault),
          value: state.info!.enableFlashByDefault,
          secondary: const Icon(Symbols.flash_on_rounded),
          onChanged: (value) async {
            await cubit.setEnableFlashByDefault(value);
          },
        );
      },
    );
  }

  Widget _buildFullscreenModeOption(BuildContext context) {
    final cubit = context.read<CameraSettingsCubit>();

    return BlocBuilder<CameraSettingsCubit, CameraState>(
      buildWhen: (prev, current) => current is CameraStateFullscreenModeChanged,
      builder: (context, state) {
        return SwitchListTile(
          title: Text(S.of(context).settingsCameraFullscreenMode),
          value: state.info!.fullscreenMode,
          secondary: const Icon(Symbols.fullscreen_rounded),
          onChanged: (value) async {
            await cubit.setFullscreenMode(value);
          },
        );
      },
    );
  }

  Widget _buildAutofocusOption(BuildContext context) {
    final cubit = context.read<CameraSettingsCubit>();

    return BlocBuilder<CameraSettingsCubit, CameraState>(
      buildWhen: (prev, current) => current is CameraStateAutofocusChanged,
      builder: (context, state) {
        return SwitchListTile(
          title: Text(S.of(context).settingsCameraAutofocus),
          value: state.info!.autofocus,
          secondary: const Icon(Symbols.filter_center_focus),
          onChanged: (value) async {
            await cubit.setAutofocus(value);
          },
        );
      },
    );
  }
}
