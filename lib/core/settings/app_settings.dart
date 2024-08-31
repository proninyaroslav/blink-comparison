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

import 'dart:convert';

import 'package:blink_comparison/env.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model.dart';

export 'model.dart';

abstract class AppSettings {
  abstract final Future<double> refImageOverlayOpacity;

  Future<void> setRefImageOverlayOpacity(double value);

  abstract final Future<AppThemeType> theme;

  Future<void> setTheme(AppThemeType value);

  abstract final Future<AppLocaleType> locale;

  Future<void> setLocale(AppLocaleType value);

  abstract final Future<int> refImageBorderColor;

  Future<void> setRefImageBorderColor(int value);

  abstract final Future<bool> enableFlashByDefault;

  Future<void> setEnableFlashByDefault(bool value);

  abstract final Future<Set<ShowcaseType>> completedShowcases;

  Future<void> setCompletedShowcases(Set<ShowcaseType> value);

  abstract final Future<bool> cameraFullscreenMode;

  Future<void> setCameraFullscreenMode(bool value);
}

abstract final class AppSettingsDefault {
  const AppSettingsDefault._();

  static const refImageOverlayOpacity = 0.3;

  static const theme = AppThemeType.system();

  static const locale = AppLocaleType.system();

  static final refImageBorderColor = Colors.red.value;

  static const enableFlashByDefault = true;

  static const completedShowcases = <ShowcaseType>{};

  static bool cameraFullscreenMode = true;
}

@Singleton(as: AppSettings, env: [Env.dev, Env.prod])
class AppSettingsImpl implements AppSettings {
  final SharedPreferencesAsync _pref;

  AppSettingsImpl(this._pref);

  @override
  Future<double> get refImageOverlayOpacity async =>
      await _pref.getDouble(_AppSettingsKey.refImageOverlayOpacity) ??
      AppSettingsDefault.refImageOverlayOpacity;

  @override
  Future<void> setRefImageOverlayOpacity(double value) async =>
      await _pref.setDouble(_AppSettingsKey.refImageOverlayOpacity, value);

  @override
  Future<AppLocaleType> get locale async {
    final str = await _pref.getString(_AppSettingsKey.locale);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.locale
        : AppLocaleType.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setLocale(AppLocaleType? value) async {
    final json = value?.toJson();
    if (json != null) {
      await _pref.setString(_AppSettingsKey.locale, jsonEncode(json));
    }
  }

  @override
  Future<AppThemeType> get theme async {
    final str = await _pref.getString(_AppSettingsKey.theme);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.theme
        : AppThemeType.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setTheme(AppThemeType? value) async {
    final json = value?.toJson();
    if (json != null) {
      await _pref.setString(_AppSettingsKey.theme, jsonEncode(json));
    }
  }

  @override
  Future<int> get refImageBorderColor async =>
      await _pref.getInt(_AppSettingsKey.refImageBorderColor) ??
      AppSettingsDefault.refImageBorderColor;

  @override
  Future<void> setRefImageBorderColor(int value) async =>
      await _pref.setInt(_AppSettingsKey.refImageBorderColor, value);

  @override
  Future<bool> get enableFlashByDefault async =>
      await _pref.getBool(_AppSettingsKey.enableFlashByDefault) ??
      AppSettingsDefault.enableFlashByDefault;

  @override
  Future<void> setEnableFlashByDefault(bool value) async =>
      await _pref.setBool(_AppSettingsKey.enableFlashByDefault, value);

  @override
  Future<Set<ShowcaseType>> get completedShowcases async =>
      (await _pref.getStringList(_AppSettingsKey.completedShowcases))?.map(
        (str) {
          final json = jsonDecode(str);
          return ShowcaseType.fromJson(json as Map<String, dynamic>);
        },
      ).toSet() ??
      AppSettingsDefault.completedShowcases;

  @override
  Future<void> setCompletedShowcases(Set<ShowcaseType> values) async {
    final strList = values.map((v) => jsonEncode(v.toJson())).toList();
    await _pref.setStringList(_AppSettingsKey.completedShowcases, strList);
  }

  @override
  Future<bool> get cameraFullscreenMode async =>
      await _pref.getBool(_AppSettingsKey.cameraFullscreenMode) ??
      AppSettingsDefault.cameraFullscreenMode;

  @override
  Future<void> setCameraFullscreenMode(bool value) async =>
      await _pref.setBool(_AppSettingsKey.cameraFullscreenMode, value);
}

abstract final class _AppSettingsKey {
  static const refImageOverlayOpacity = 'pref_key_ref_image_overlay_opacity';
  static const theme = 'pref_key_theme';
  static const locale = 'pref_key_locale';
  static const refImageBorderColor = 'pref_key_ref_image_border_color';
  static const enableFlashByDefault = 'pref_key_enable_Flash_by_default';
  static const completedShowcases = 'pref_key_completed_showcases';
  static const cameraFullscreenMode = 'pref_key_camera_fullscreen_mode';
}
