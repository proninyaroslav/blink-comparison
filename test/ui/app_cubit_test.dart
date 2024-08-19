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
import 'package:blink_comparison/ui/app_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppCubit |', () {
    late AppCubit cubit;

    setUp(() {
      cubit = AppCubit(
        theme: const AppThemeType.system(),
        locale: const AppLocaleType.system(),
        cameraFullscreenMode: true,
      );
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
  });
}
