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

import 'package:flutter/material.dart';

import '../../locale.dart';
import '../theme.dart';
import 'model.dart';

class SettingsPagesList extends StatelessWidget {
  final ValueChanged<SettingsRouteItem>? onSelected;
  final SettingsRouteItem? selectedRoute;

  const SettingsPagesList({
    Key? key,
    this.selectedRoute,
    this.onSelected,
  }) : super(key: key);

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
            return route.when(
              appearance: () => _buildItem(
                context,
                route,
                icon: Icons.palette_outlined,
                title: S.of(context).settingsAppearance,
              ),
              camera: () => _buildItem(
                context,
                route,
                icon: Icons.camera_alt_outlined,
                title: S.of(context).settingsCamera,
              ),
            );
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
    Key? key,
    required this.title,
    required this.icon,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

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
        leading: Icon(icon),
        title: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.start,
        ),
        onTap: onTap,
      ),
    );
  }
}
