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

import 'dart:ui';

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Application settings |', () {
    late SharedPreferencesAsync sharedPref;
    late AppSettings pref;

    setUpAll(() async {
      SharedPreferencesAsyncPlatform.instance =
          InMemorySharedPreferencesAsync.empty();

      sharedPref = SharedPreferencesAsync();
      pref = AppSettingsImpl(sharedPref);
    });

    tearDown(() {
      sharedPref.clear();
    });

    test('Opacity of the reference image overlay', () async {
      expect(
        await pref.refImageOverlayOpacity,
        AppSettingsDefault.refImageOverlayOpacity,
      );
      await pref.setRefImageOverlayOpacity(0.9);
      expect(await pref.refImageOverlayOpacity, 0.9);
      expect(
        await sharedPref.containsKey('pref_key_ref_image_overlay_opacity'),
        isTrue,
      );
    });

    test('Theme', () async {
      expect(await pref.theme, AppSettingsDefault.theme);
      await pref.setTheme(const AppThemeType.dark());
      expect(await pref.theme, const AppThemeType.dark());
      expect(await sharedPref.containsKey('pref_key_theme'), isTrue);
    });

    test('Locale', () async {
      expect(await pref.locale, AppSettingsDefault.locale);
      const expectedLocale = AppLocaleType.inner(
        locale: Locale('ru', 'RU'),
      );
      await pref.setLocale(expectedLocale);
      expect(await pref.locale, expectedLocale);
      expect(await sharedPref.containsKey('pref_key_locale'), isTrue);
    });

    test('Reference image border color', () async {
      expect(await pref.refImageBorderColor,
          AppSettingsDefault.refImageBorderColor);
      const expectedColor = 0xffffffff;
      await pref.setRefImageBorderColor(expectedColor);
      expect(await pref.refImageBorderColor, expectedColor);
      expect(await sharedPref.containsKey('pref_key_ref_image_border_color'),
          isTrue);
    });

    test('Enable flash by default', () async {
      expect(
        await pref.enableFlashByDefault,
        AppSettingsDefault.enableFlashByDefault,
      );
      await pref.setEnableFlashByDefault(false);
      expect(await pref.enableFlashByDefault, false);
      expect(
        await sharedPref.containsKey('pref_key_enable_Flash_by_default'),
        isTrue,
      );
    });

    test('Completed showcases', () async {
      expect(
        await pref.completedShowcases,
        AppSettingsDefault.completedShowcases,
      );
      final expectedShowcases = {
        const ShowcaseType.blinkComparison(),
        const ShowcaseType.opacity(),
        const ShowcaseType.refImageBorder(),
      };
      await pref.setCompletedShowcases(expectedShowcases);
      expect(await pref.completedShowcases, expectedShowcases);
      expect(
          await sharedPref.containsKey('pref_key_completed_showcases'), isTrue);
    });

    test('Camera fullscreeen mode', () async {
      expect(
        await pref.cameraFullscreenMode,
        AppSettingsDefault.cameraFullscreenMode,
      );
      await pref.setCameraFullscreenMode(false);
      expect(await pref.cameraFullscreenMode, false);
      expect(
        await sharedPref.containsKey('pref_key_camera_fullscreen_mode'),
        isTrue,
      );
    });
  });
}
