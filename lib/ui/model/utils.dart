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

import 'package:blink_comparison/core/settings/model.dart';
import 'package:flutter/material.dart';

import '../../locale.dart';
import 'native_locale_names.dart' as locale_names;

class UiUtils {
  static const double fabBottomMargin = kFloatingActionButtonMargin + 60;

  static const Duration defaultAnimatedListDuration =
      Duration(milliseconds: 200);

  static final supportedLocales = AppLocalizations.supportedLocales
      .map(
        (Locale locale) => MapEntry(
          Locale(
            locale.languageCode,
            locale.countryCode,
          ),
          localeToLocalizedStr(locale.toString()),
        ),
      )
      .toList()
    ..sort(
      (a, b) => a.value.compareTo(b.value),
    );

  static String localeToLocalizedStr(String locale) {
    return locale_names.all_native_names[locale] ?? locale;
  }
}

extension AppThemeTypeExtension on AppThemeType {
  String toLocalizedString(BuildContext context) => switch (this) {
        AppThemeTypeLight() => S.of(context).settingsThemeLight,
        AppThemeTypeDark() => S.of(context).settingsThemeDark,
        AppThemeTypeSystem() => S.of(context).settingsThemeSystem,
      };
}
