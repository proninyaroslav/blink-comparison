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
import 'package:blink_comparison/ui/comparison/comparison.dart';
import 'package:blink_comparison/ui/settings/page/appearance_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('AppearanceSettingsCubit |', () {
    late AppearanceSettingsCubit cubit;
    late AppSettings mockPref;
    late AppCubit mockAppCubit;
    late ComparisonSettingsCubit mockComparisonSettingsCubit;

    setUpAll(() {
      mockPref = MockAppSettings();
      mockAppCubit = MockAppCubit();
      mockComparisonSettingsCubit = MockComparisonSettingsCubit();
      registerFallbackValue(const AppThemeType.system());
      registerFallbackValue(const AppLocaleType.system());
    });

    setUp(() {
      cubit = AppearanceSettingsCubit(
        mockPref,
        mockAppCubit,
        mockComparisonSettingsCubit,
        const AppearanceInfo(
          theme: AppThemeType.system(),
          locale: AppLocaleType.system(),
          refImageBorderColor: 0xffffffff,
        ),
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
      act: (AppearanceSettingsCubit cubit) async {
        when(
          () => mockPref.setTheme(any()),
        ).thenAnswer((_) => Future.value());

        await cubit.setTheme(const AppThemeType.dark());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.dark()),
        ).called(1);
        verify(
          () => mockPref.setTheme(const AppThemeType.dark()),
        ).called(1);

        await cubit.setTheme(const AppThemeType.light());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.light()),
        ).called(1);
        verify(
          () => mockPref.setTheme(const AppThemeType.light()),
        ).called(1);

        await cubit.setTheme(const AppThemeType.system());
        verify(
          () => mockAppCubit.setTheme(const AppThemeType.system()),
        ).called(1);
        verify(
          () => mockPref.setTheme(const AppThemeType.system()),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.dark(),
            locale: AppLocaleType.system(),
            refImageBorderColor: 0xffffffff,
          ),
        ),
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.light(),
            locale: AppLocaleType.system(),
            refImageBorderColor: 0xffffffff,
          ),
        ),
        const AppearanceState.themeChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            locale: AppLocaleType.system(),
            refImageBorderColor: 0xffffffff,
          ),
        ),
      ],
    );

    blocTest(
      'Change locale',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) async {
        when(
          () => mockPref.setLocale(any()),
        ).thenAnswer((_) => Future.value());

        await cubit.setLocale(
          const AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          ),
        );
        verify(
          () => mockAppCubit.setLocale(
            const AppLocaleType.inner(
              locale: Locale('ru', 'RU'),
            ),
          ),
        ).called(1);
        verify(
          () => mockPref.setLocale(const AppLocaleType.inner(
            locale: Locale('ru', 'RU'),
          )),
        ).called(1);

        await cubit.setLocale(const AppLocaleType.system());
        verify(
          () => mockAppCubit.setLocale(
            const AppLocaleType.system(),
          ),
        ).called(1);
        verify(
          () => mockPref.setLocale(const AppLocaleType.system()),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.localeChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            locale: AppLocaleType.inner(
              locale: Locale('ru', 'RU'),
            ),
            refImageBorderColor: 0xffffffff,
          ),
        ),
        const AppearanceState.localeChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            locale: AppLocaleType.system(),
            refImageBorderColor: 0xffffffff,
          ),
        ),
      ],
    );

    blocTest(
      'Change reference image border color',
      build: () => cubit,
      act: (AppearanceSettingsCubit cubit) async {
        when(
          () => mockPref.setRefImageBorderColor(any()),
        ).thenAnswer((_) => Future.value());

        await cubit.setRefImageBorderColor(0x00000000);
        verify(
          () => mockPref.setRefImageBorderColor(0x00000000),
        ).called(1);
        verify(
          () => mockComparisonSettingsCubit.setRefImageBorderColor(0x00000000),
        ).called(1);

        await cubit.setRefImageBorderColor(0xffffffff);
        verify(
          () => mockPref.setRefImageBorderColor(0xffffffff),
        ).called(1);
        verify(
          () => mockComparisonSettingsCubit.setRefImageBorderColor(0xffffffff),
        ).called(1);
      },
      expect: () => [
        const AppearanceState.refImageBorderColorChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            locale: AppLocaleType.system(),
            refImageBorderColor: 0x00000000,
          ),
        ),
        const AppearanceState.refImageBorderColorChanged(
          AppearanceInfo(
            theme: AppThemeType.system(),
            locale: AppLocaleType.system(),
            refImageBorderColor: 0xffffffff,
          ),
        ),
      ],
    );
  });
}
