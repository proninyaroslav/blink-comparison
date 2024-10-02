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

import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:blink_comparison/core/settings/shared_pref_listenable.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:injectable/injectable.dart';

import 'model.dart';

export 'model.dart';

abstract class AppSettings {
  Stream<String> changePrefStream();

  Future<double> get refImageOverlayOpacity;

  Future<void> setRefImageOverlayOpacity(double value);

  Future<AppThemeType> get theme;

  Future<void> setTheme(AppThemeType value);

  Future<AppLocaleType> get locale;

  Future<void> setLocale(AppLocaleType value);

  Future<int> get refImageBorderColor;

  Future<void> setRefImageBorderColor(int value);

  Future<bool> get enableFlashByDefault;

  Future<void> setEnableFlashByDefault(bool value);

  Future<Set<ShowcaseType>> get completedShowcases;

  Future<void> setCompletedShowcases(Set<ShowcaseType> value);

  Future<bool> get cameraFullscreenMode;

  Future<void> setCameraFullscreenMode(bool value);

  EncryptionPreference? get encryptionPreferenceSync;

  Future<void> setEncryptionPreference(EncryptionPreference? value);

  Future<bool> get cameraAutofocus;

  Future<void> setCameraAutofocus(bool value);
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

  static bool cameraAutofocus = true;
}

@Singleton(as: AppSettings)
class AppSettingsImpl implements AppSettings {
  final SharedPreferencesAsyncListenable _pref;
  final SharedPreferencesWithCacheListenable _prefWithCache;

  AppSettingsImpl(this._pref, this._prefWithCache);

  @override
  Stream<String> changePrefStream() => StreamGroup.mergeBroadcast(
      [_pref.changePrefStream(), _prefWithCache.changePrefStream()]);

  @override
  Future<double> get refImageOverlayOpacity async =>
      await _pref.getDouble(AppSettingsKey.refImageOverlayOpacity) ??
      AppSettingsDefault.refImageOverlayOpacity;

  @override
  Future<void> setRefImageOverlayOpacity(double value) async =>
      await _pref.setDouble(AppSettingsKey.refImageOverlayOpacity, value);

  @override
  Future<AppLocaleType> get locale async {
    final str = await _pref.getString(AppSettingsKey.locale);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.locale
        : AppLocaleType.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setLocale(AppLocaleType? value) async {
    final json = value?.toJson();
    if (json != null) {
      await _pref.setString(AppSettingsKey.locale, jsonEncode(json));
    }
  }

  @override
  Future<AppThemeType> get theme async {
    final str = await _pref.getString(AppSettingsKey.theme);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? AppSettingsDefault.theme
        : AppThemeType.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setTheme(AppThemeType? value) async {
    final json = value?.toJson();
    if (json != null) {
      await _pref.setString(AppSettingsKey.theme, jsonEncode(json));
    }
  }

  @override
  Future<int> get refImageBorderColor async =>
      await _pref.getInt(AppSettingsKey.refImageBorderColor) ??
      AppSettingsDefault.refImageBorderColor;

  @override
  Future<void> setRefImageBorderColor(int value) async =>
      await _pref.setInt(AppSettingsKey.refImageBorderColor, value);

  @override
  Future<bool> get enableFlashByDefault async =>
      await _pref.getBool(AppSettingsKey.cameraEnableFlashByDefault) ??
      AppSettingsDefault.enableFlashByDefault;

  @override
  Future<void> setEnableFlashByDefault(bool value) async =>
      await _pref.setBool(AppSettingsKey.cameraEnableFlashByDefault, value);

  @override
  Future<Set<ShowcaseType>> get completedShowcases async =>
      (await _pref.getStringList(AppSettingsKey.completedShowcases))?.map(
        (str) {
          final json = jsonDecode(str);
          return ShowcaseType.fromJson(json as Map<String, dynamic>);
        },
      ).toSet() ??
      AppSettingsDefault.completedShowcases;

  @override
  Future<void> setCompletedShowcases(Set<ShowcaseType> values) async {
    final strList = values.map((v) => jsonEncode(v.toJson())).toList();
    await _pref.setStringList(AppSettingsKey.completedShowcases, strList);
  }

  @override
  Future<bool> get cameraFullscreenMode async =>
      await _pref.getBool(AppSettingsKey.cameraFullscreenMode) ??
      AppSettingsDefault.cameraFullscreenMode;

  @override
  Future<void> setCameraFullscreenMode(bool value) async =>
      await _pref.setBool(AppSettingsKey.cameraFullscreenMode, value);

  @override
  EncryptionPreference? get encryptionPreferenceSync {
    final str = _prefWithCache.getString(AppSettingsKey.encryptionPreference);
    final json = str == null ? null : jsonDecode(str);
    return json == null
        ? null
        : EncryptionPreference.fromJson(json as Map<String, dynamic>);
  }

  @override
  Future<void> setEncryptionPreference(EncryptionPreference? value) async {
    final json = value?.toJson();
    if (json != null) {
      await _prefWithCache.setString(
        AppSettingsKey.encryptionPreference,
        jsonEncode(json),
      );
    }
  }

  @override
  Future<bool> get cameraAutofocus async =>
      await _pref.getBool(AppSettingsKey.cameraAutofocus) ??
      AppSettingsDefault.cameraAutofocus;

  @override
  Future<void> setCameraAutofocus(bool value) async {
    await _pref.setBool(AppSettingsKey.cameraAutofocus, value);
  }
}

abstract final class AppSettingsKey {
  static const refImageOverlayOpacity = 'pref_key_ref_image_overlay_opacity';
  static const theme = 'pref_key_theme';
  static const locale = 'pref_key_locale';
  static const refImageBorderColor = 'pref_key_ref_image_border_color';
  static const cameraEnableFlashByDefault = 'pref_key_enable_Flash_by_default';
  static const completedShowcases = 'pref_key_completed_showcases';
  static const cameraFullscreenMode = 'pref_key_camera_fullscreen_mode';
  static const encryptionPreference = 'pref_key_encryption_preference';
  static const cameraAutofocus = 'pref_key_camera_autofocus';
}
