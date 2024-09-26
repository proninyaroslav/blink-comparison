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

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../locale.dart';
import '../../theme.dart';
import '../model/settings_route_item.dart';

class SettingsPagesList extends StatelessWidget {
  final ValueChanged<SettingsRouteItem>? onSelected;
  final SettingsRouteItem? selectedRoute;

  const SettingsPagesList({
    super.key,
    this.selectedRoute,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final textDirection = Directionality.of(context);
    return SafeArea(
      right: textDirection == TextDirection.rtl,
      left: textDirection != TextDirection.rtl,
      child: Scrollbar(
        child: ListView.separated(
          padding: const EdgeInsets.all(8.0),
          itemCount: SettingsRouteItem.all.length,
          itemBuilder: (context, position) {
            final route = SettingsRouteItem.all[position];
            return switch (route) {
              SettingsRouteItemAppearance() => _buildItem(
                  context,
                  route,
                  icon: Symbols.palette,
                  title: S.of(context).settingsAppearance,
                ),
              SettingsRouteItemCamera() => _buildItem(
                  context,
                  route,
                  icon: Symbols.camera_alt,
                  title: S.of(context).settingsCamera,
                ),
              SettingsRouteItemBehavior() => _buildItem(
                  context,
                  route,
                  icon: Symbols.tune_rounded,
                  title: S.of(context).settingsBehavior,
                ),
            };
          },
          separatorBuilder: (context, position) {
            return const SizedBox(height: 8.0);
          },
        ),
      ),
    );
  }

  Widget _buildItem(
    BuildContext context,
    SettingsRouteItem route, {
    required IconData icon,
    required String title,
  }) {
    return MediaQuery.removePadding(
      context: context,
      removeRight: true,
      removeLeft: true,
      child: _SettingsItem(
        icon: icon,
        title: title,
        isSelected: selectedRoute == route,
        onTap: () {
          onSelected?.call(route);
        },
      ),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final bool isSelected;

  const _SettingsItem({
    required this.title,
    required this.icon,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected
          ? AppTheme.itemSelectableColor(context)
          : Colors.transparent,
      borderRadius: BorderRadius.circular(64.0),
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        leading: Icon(
          icon,
          grade: isSelected ? 200 : 0,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
              ),
          textAlign: TextAlign.start,
        ),
        onTap: onTap,
      ),
    );
  }
}
