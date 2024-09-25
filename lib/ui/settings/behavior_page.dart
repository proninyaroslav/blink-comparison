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
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/model/showcase_cubit.dart';
import 'package:blink_comparison/ui/model/utils.dart';
import 'package:flutter/material.dart' hide Locale;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/settings_list.dart';
import 'components/settings_scaffold.dart';
import 'model/behavior_cubit.dart';
import 'model/behavior_state.dart';

@RoutePage()
class BehaviorSettingsPage extends StatelessWidget {
  const BehaviorSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsScaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsBehavior),
      ),
      body: BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
        buildWhen: (prev, next) => next is BehaviorStateLoaded,
        builder: (context, state) => switch (state) {
          BehaviorStateInitial() =>
            const Center(child: CircularProgressIndicator()),
          _ => SettingsList(
              key: const PageStorageKey('behavior_list'),
              groups: [
                SettingsListGroup(
                  items: [
                    _buildEncryptionOption(context),
                  ],
                ),
              ],
            ),
        },
      ),
    );
  }

  Widget _buildEncryptionOption(BuildContext context) {
    return ListTile(
      title: Text(S.of(context).encryptionPreferenceTitle),
      subtitle: BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
        buildWhen: (prev, current) => current is BehaviorStateEncryptionChanged,
        builder: (context, state) {
          return Text(
            state.info!.encryption?.toLocalizedString(context) ??
                S.of(context).encryptionPreferenceNone,
          );
        },
      ),
      leading: const Icon(Icons.shield_outlined),
      onTap: () => _showEncryptionDialog(context),
    );
  }

  void _showEncryptionDialog(BuildContext context) {
    final cubit = context.read<BehaviorSettingsCubit>();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).settingsTheme),
          contentPadding: const EdgeInsets.only(top: 16.0),
          content: DialogScrollableContent(
            child: BlocBuilder<BehaviorSettingsCubit, BehaviorState>(
              bloc: cubit,
              buildWhen: (prev, current) =>
                  current is BehaviorStateEncryptionChanged,
              builder: (context, state) {
                return _EncryptionPreferenceList(
                  initialValue: state.info!.encryption ??
                      const EncryptionPreference.none(),
                  onSelected: (value) async {
                    await cubit.setEncryptionPreference(value);
                    if (context.mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                S.of(context).cancel,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _EncryptionPreferenceList extends StatefulWidget {
  final EncryptionPreference initialValue;
  final ValueChanged<EncryptionPreference>? onSelected;

  const _EncryptionPreferenceList({
    required this.initialValue,
    this.onSelected,
  });

  @override
  _EncryptionPreferenceListState createState() =>
      _EncryptionPreferenceListState();
}

class _EncryptionPreferenceListState extends State<_EncryptionPreferenceList> {
  final _values = const [
    EncryptionPreference.none(),
    EncryptionPreference.password(),
  ];

  late EncryptionPreference _currentPreference;

  @override
  void initState() {
    super.initState();

    _currentPreference = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _values
          .map(
            (value) => RadioListTile(
              value: value,
              groupValue: _currentPreference,
              title: Text(value.toLocalizedString(context)),
              onChanged: (_) {
                setState(() => _currentPreference = value);
                widget.onSelected?.call(value);
              },
            ),
          )
          .toList(),
    );
  }
}
