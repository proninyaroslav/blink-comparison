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
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../theme.dart';
import '../utils.dart';

class SettingsList extends StatelessWidget {
  final List<SettingsListGroup> groups;

  const SettingsList({
    Key? key,
    required this.groups,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SafeArea(
        child: AnimationLimiter(
          child: ListView.separated(
            key: key,
            padding: const EdgeInsets.all(8.0),
            itemCount: groups.length,
            itemBuilder: (context, position) {
              return AnimationConfiguration.staggeredList(
                position: position,
                duration: UiUtils.defaultAnimatedListDuration,
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(child: groups[position]),
                ),
              );
            },
            separatorBuilder: (context, position) {
              return const SizedBox(height: 8.0);
            },
          ),
        ),
      ),
    );
  }
}

class SettingsListGroup extends StatelessWidget {
  final String? title;
  final List<Widget> items;

  const SettingsListGroup({
    Key? key,
    this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title!,
              style: Theme.of(context).textTheme.overline!.copyWith(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.textPrimaryColorLight(context),
                  ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, position) => Material(
              shape: Theme.of(context).cardTheme.shape,
              clipBehavior: Clip.antiAlias,
              color: Colors.transparent,
              child: items[position],
            ),
          ),
        ),
      ],
    );
  }
}
