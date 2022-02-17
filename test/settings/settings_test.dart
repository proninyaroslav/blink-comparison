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

import 'dart:ui';

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('Appliaction settings |', () {
    late SharedPreferences sharedPref;
    late AppSettings pref;

    setUpAll(() async {
      sharedPref = await SharedPreferences.getInstance();
      pref = AppSettingsImpl(sharedPref);
    });

    tearDown(() {
      sharedPref.clear();
    });

    test('Opacity of the reference image overlay', () {
      expect(
        pref.refImageOverlayOpacity,
        AppSettingsDefault.refImageOverlayOpacity,
      );
      pref.refImageOverlayOpacity = 0.9;
      expect(pref.refImageOverlayOpacity, 0.9);
      expect(
        sharedPref.containsKey('pref_key_ref_image_overlay_opacity'),
        isTrue,
      );
    });

    test('Theme', () {
      expect(pref.theme, AppSettingsDefault.theme);
      pref.theme = const AppThemeType.dark();
      expect(pref.theme, const AppThemeType.dark());
      expect(sharedPref.containsKey('pref_key_theme'), isTrue);
    });

    test('Locale', () {
      expect(pref.locale, AppSettingsDefault.locale);
      const expectedLocale = AppLocaleType.inner(
        locale: Locale('ru', 'RU'),
      );
      pref.locale = expectedLocale;
      expect(pref.locale, expectedLocale);
      expect(sharedPref.containsKey('pref_key_locale'), isTrue);
    });

    test('Reference image border color', () {
      expect(pref.refImageBorderColor, AppSettingsDefault.refImageBorderColor);
      const expectedColor = 0xffffffff;
      pref.refImageBorderColor = expectedColor;
      expect(pref.refImageBorderColor, expectedColor);
      expect(sharedPref.containsKey('pref_key_ref_image_border_color'), isTrue);
    });

    test('Enable flash by default', () {
      expect(
        pref.enableFlashByDefault,
        AppSettingsDefault.enableFlashByDefault,
      );
      pref.enableFlashByDefault = false;
      expect(pref.enableFlashByDefault, false);
      expect(
        sharedPref.containsKey('pref_key_enable_Flash_by_default'),
        isTrue,
      );
    });

    test('Completed showcases', () {
      expect(
        pref.completedShowcases,
        AppSettingsDefault.completedShowcases,
      );
      final expectedShowcases = {
        const ShowcaseType.blinkComparison(),
        const ShowcaseType.opacity(),
        const ShowcaseType.refImageBorder(),
      };
      pref.completedShowcases = expectedShowcases;
      expect(pref.completedShowcases, expectedShowcases);
      expect(sharedPref.containsKey('pref_key_completed_showcases'), isTrue);
    });

    test('Camera fullscreeen mode', () {
      expect(
        pref.cameraFullscreenMode,
        AppSettingsDefault.cameraFullscreenMode,
      );
      pref.cameraFullscreenMode = false;
      expect(pref.cameraFullscreenMode, false);
      expect(
        sharedPref.containsKey('pref_key_camera_fullscreen_mode'),
        isTrue,
      );
    });
  });
}
