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
import 'dart:ui';

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/model/app_cubit.dart';
import 'package:blink_comparison/ui/model/app_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('AppCubit |', () {
    late AppCubit cubit;
    late AppSettings mockPref;
    late StreamController<String> streamController;

    setUpAll(() {
      streamController = StreamController.broadcast();
    });

    tearDownAll(() {
      streamController.close();
    });

    setUp(() async {
      mockPref = MockAppSettings();
      when(() => mockPref.theme).thenAnswer(
        (_) async => const AppThemeType.system(),
      );
      when(() => mockPref.locale).thenAnswer(
        (_) async => const AppLocaleType.system(),
      );
      when(() => mockPref.cameraFullscreenMode).thenAnswer((_) async => true);
      when(() => mockPref.changePrefStream())
          .thenAnswer((_) => streamController.stream);
      cubit = AppCubit(mockPref);
      await cubit.load();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change theme',
      build: () => cubit,
      act: (AppCubit cubit) {
        cubit.setTheme(const AppThemeType.dark());
        cubit.setTheme(const AppThemeType.light());
        cubit.setTheme(const AppThemeType.system());
      },
      expect: () => [
        const AppState.changed(
          theme: AppThemeType.dark(),
          locale: AppLocaleType.system(),
          cameraFullscreenMode: true,
        ),
        const AppState.changed(
          theme: AppThemeType.light(),
          locale: AppLocaleType.system(),
          cameraFullscreenMode: true,
        ),
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.system(),
          cameraFullscreenMode: true,
        ),
      ],
    );

    blocTest(
      'Listen theme change',
      build: () => cubit,
      act: (AppCubit cubit) {
        when(() => mockPref.theme)
            .thenAnswer((_) async => const AppThemeType.light());
        streamController.add(AppSettingsKey.theme);
      },
      expect: () => [
        const AppState.changed(
          theme: AppThemeType.light(),
          locale: AppLocaleType.system(),
          cameraFullscreenMode: true,
        ),
      ],
    );

    blocTest(
      'Change locale',
      build: () => cubit,
      act: (AppCubit cubit) {
        cubit.setLocale(
          const AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
        );
        cubit.setLocale(
          const AppLocaleType.system(),
        );
      },
      expect: () => [
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
          cameraFullscreenMode: true,
        ),
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.system(),
          cameraFullscreenMode: true,
        ),
      ],
    );

    blocTest(
      'Listen locale change',
      build: () => cubit,
      act: (AppCubit cubit) {
        when(() => mockPref.locale).thenAnswer(
          (_) async => const AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
        );
        streamController.add(AppSettingsKey.locale);
      },
      expect: () => [
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
          cameraFullscreenMode: true,
        ),
      ],
    );

    blocTest(
      'Change fullscreen mode',
      build: () => cubit,
      act: (AppCubit cubit) {
        cubit.setCameraFullscreenMode(false);
        cubit.setCameraFullscreenMode(true);
      },
      expect: () => [
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.system(),
          cameraFullscreenMode: false,
        ),
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.system(),
          cameraFullscreenMode: true,
        ),
      ],
    );

    blocTest(
      'Listen fullscreen mode change',
      build: () => cubit,
      act: (AppCubit cubit) {
        when(() => mockPref.cameraFullscreenMode)
            .thenAnswer((_) async => false);
        streamController.add(AppSettingsKey.cameraFullscreenMode);
      },
      expect: () => [
        const AppState.changed(
          theme: AppThemeType.system(),
          locale: AppLocaleType.system(),
          cameraFullscreenMode: false,
        ),
      ],
    );
  });
}
