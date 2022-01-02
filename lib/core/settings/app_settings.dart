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

import 'dart:convert';

import 'package:flutter/material.dart' show Colors;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model.dart';

export 'model.dart';

abstract class AppSettings {
  abstract double refImageOverlayOpacity;

  abstract AppThemeType theme;

  abstract AppLocaleType locale;

  abstract int refImageBorderColor;

  abstract bool enableFlashByDefault;

  abstract Set<ShowcaseType> completedShowcases;
}

abstract class AppSettingsDefault {
  const AppSettingsDefault._();

  static const refImageOverlayOpacity = 0.3;

  static const theme = AppThemeType.system();

  static const locale = AppLocaleType.system();

  static final refImageBorderColor = Colors.red.value;

  static const enableFlashByDefault = true;

  static const completedShowcases = <ShowcaseType>{};
}

@Singleton(as: AppSettings)
class AppSettingsImpl implements AppSettings {
  final SharedPreferences _pref;

  AppSettingsImpl(this._pref);

  @override
  double get refImageOverlayOpacity =>
      _pref.getDouble(_AppSettingsKey.refImageOverlayOpacity) ??
      AppSettingsDefault.refImageOverlayOpacity;

  @override
  set refImageOverlayOpacity(double value) =>
      _pref.setDouble(_AppSettingsKey.refImageOverlayOpacity, value);

  @override
  AppLocaleType get locale {
    final str = _pref.getString(_AppSettingsKey.locale);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.locale
        : AppLocaleType.fromJson(json as Map<String, dynamic>);
  }

  @override
  set locale(AppLocaleType? value) {
    final json = value?.toJson();
    if (json != null) {
      _pref.setString(_AppSettingsKey.locale, jsonEncode(json));
    }
  }

  @override
  AppThemeType get theme {
    final str = _pref.getString(_AppSettingsKey.theme);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.theme
        : AppThemeType.fromJson(json as Map<String, dynamic>);
  }

  @override
  set theme(AppThemeType? value) {
    final json = value?.toJson();
    if (json != null) {
      _pref.setString(_AppSettingsKey.theme, jsonEncode(json));
    }
  }

  @override
  int get refImageBorderColor =>
      _pref.getInt(_AppSettingsKey.refImageBorderColor) ??
      AppSettingsDefault.refImageBorderColor;

  @override
  set refImageBorderColor(int value) =>
      _pref.setInt(_AppSettingsKey.refImageBorderColor, value);

  @override
  bool get enableFlashByDefault =>
      _pref.getBool(_AppSettingsKey.enableFlashByDefault) ??
      AppSettingsDefault.enableFlashByDefault;

  @override
  set enableFlashByDefault(bool value) =>
      _pref.setBool(_AppSettingsKey.enableFlashByDefault, value);

  @override
  Set<ShowcaseType> get completedShowcases =>
      _pref.getStringList(_AppSettingsKey.completedShowcases)?.map((str) {
        final json = jsonDecode(str);
        return ShowcaseType.fromJson(json as Map<String, dynamic>);
      }).toSet() ??
      AppSettingsDefault.completedShowcases;

  @override
  set completedShowcases(Set<ShowcaseType> values) {
    final strList = values.map((v) => jsonEncode(v.toJson())).toList();
    _pref.setStringList(_AppSettingsKey.completedShowcases, strList);
  }
}

abstract class _AppSettingsKey {
  static const refImageOverlayOpacity = 'pref_key_ref_image_overlay_opacity';
  static const theme = 'pref_key_theme';
  static const locale = 'pref_key_locale';
  static const refImageBorderColor = 'pref_key_ref_image_border_color';
  static const enableFlashByDefault = 'pref_key_enable_Flash_by_default';
  static const completedShowcases = 'pref_key_completed_showcases';
}

@module
abstract class SharedPreferencesModule {
  @singleton
  @preResolve
  Future<SharedPreferences> get pref async => SharedPreferences.getInstance();
}
