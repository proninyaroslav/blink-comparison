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

import "package:dynamic_color/dynamic_color.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:material_symbols_icons/symbols.dart";

const kDynamicThemeColor = !kDebugMode;

class AppTheme {
  final TextTheme textTheme;

  const AppTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5d631c),
      surfaceTint: Color(0xff5d631c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe2e893),
      onPrimaryContainer: Color(0xff1b1d00),
      secondary: Color(0xff5f6044),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe4e5c1),
      onSecondaryContainer: Color(0xff1b1d07),
      tertiary: Color(0xff3c6659),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbeecdb),
      onTertiaryContainer: Color(0xff002018),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffcfaec),
      onSurface: Color(0xff1c1c14),
      onSurfaceVariant: Color(0xff47483b),
      outline: Color(0xff787869),
      outlineVariant: Color(0xffc9c7b6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313128),
      inversePrimary: Color(0xffc6cc79),
      primaryFixed: Color(0xffe2e893),
      onPrimaryFixed: Color(0xff1b1d00),
      primaryFixedDim: Color(0xffc6cc79),
      onPrimaryFixedVariant: Color(0xff464a03),
      secondaryFixed: Color(0xffe4e5c1),
      onSecondaryFixed: Color(0xff1b1d07),
      secondaryFixedDim: Color(0xffc8c9a6),
      onSecondaryFixedVariant: Color(0xff47492e),
      tertiaryFixed: Color(0xffbeecdb),
      onTertiaryFixed: Color(0xff002018),
      tertiaryFixedDim: Color(0xffa3d0c0),
      onTertiaryFixedVariant: Color(0xff234e42),
      surfaceDim: Color(0xffdcdace),
      surfaceBright: Color(0xfffcfaec),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f4e7),
      surfaceContainer: Color(0xfff1eee1),
      surfaceContainerHigh: Color(0xffebe8db),
      surfaceContainerHighest: Color(0xffe5e3d6),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff424600),
      surfaceTint: Color(0xff5d631c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff747930),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff43452a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff757758),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1f4a3e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff527d6f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcfaec),
      onSurface: Color(0xff1c1c14),
      onSurfaceVariant: Color(0xff434437),
      outline: Color(0xff606052),
      outlineVariant: Color(0xff7c7b6d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313128),
      inversePrimary: Color(0xffc6cc79),
      primaryFixed: Color(0xff747930),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5b6019),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff757758),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5c5e42),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff527d6f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff396457),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcdace),
      surfaceBright: Color(0xfffcfaec),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f4e7),
      surfaceContainer: Color(0xfff1eee1),
      surfaceContainerHigh: Color(0xffebe8db),
      surfaceContainerHighest: Color(0xffe5e3d6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff212400),
      surfaceTint: Color(0xff5d631c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff424600),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff22240c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff43452a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00281f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1f4a3e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcfaec),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff24251a),
      outline: Color(0xff434437),
      outlineVariant: Color(0xff434437),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313128),
      inversePrimary: Color(0xffecf29b),
      primaryFixed: Color(0xff424600),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2c2f00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff43452a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2d2e16),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1f4a3e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff033328),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdcdace),
      surfaceBright: Color(0xfffcfaec),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f4e7),
      surfaceContainer: Color(0xfff1eee1),
      surfaceContainerHigh: Color(0xffebe8db),
      surfaceContainerHighest: Color(0xffe5e3d6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc6cc79),
      surfaceTint: Color(0xffc6cc79),
      onPrimary: Color(0xff2f3300),
      primaryContainer: Color(0xff464a03),
      onPrimaryContainer: Color(0xffe2e893),
      secondary: Color(0xffc8c9a6),
      onSecondary: Color(0xff303219),
      secondaryContainer: Color(0xff47492e),
      onSecondaryContainer: Color(0xffe4e5c1),
      tertiary: Color(0xffa3d0c0),
      onTertiary: Color(0xff08372c),
      tertiaryContainer: Color(0xff234e42),
      onTertiaryContainer: Color(0xffbeecdb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff13140c),
      onSurface: Color(0xffe5e3d6),
      onSurfaceVariant: Color(0xffc9c7b6),
      outline: Color(0xff929182),
      outlineVariant: Color(0xff47483b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e3d6),
      inversePrimary: Color(0xff5d631c),
      primaryFixed: Color(0xffe2e893),
      onPrimaryFixed: Color(0xff1b1d00),
      primaryFixedDim: Color(0xffc6cc79),
      onPrimaryFixedVariant: Color(0xff464a03),
      secondaryFixed: Color(0xffe4e5c1),
      onSecondaryFixed: Color(0xff1b1d07),
      secondaryFixedDim: Color(0xffc8c9a6),
      onSecondaryFixedVariant: Color(0xff47492e),
      tertiaryFixed: Color(0xffbeecdb),
      onTertiaryFixed: Color(0xff002018),
      tertiaryFixedDim: Color(0xffa3d0c0),
      onTertiaryFixedVariant: Color(0xff234e42),
      surfaceDim: Color(0xff13140c),
      surfaceBright: Color(0xff3a3a31),
      surfaceContainerLowest: Color(0xff0e0f08),
      surfaceContainerLow: Color(0xff1c1c14),
      surfaceContainer: Color(0xff202018),
      surfaceContainerHigh: Color(0xff2a2a22),
      surfaceContainerHighest: Color(0xff35352c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcad07d),
      surfaceTint: Color(0xffc6cc79),
      onPrimary: Color(0xff161800),
      primaryContainer: Color(0xff909649),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcccdaa),
      onSecondary: Color(0xff161803),
      secondaryContainer: Color(0xff929373),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa7d4c4),
      onTertiary: Color(0xff001b14),
      tertiaryContainer: Color(0xff6e9a8b),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff13140c),
      onSurface: Color(0xfffefbee),
      onSurfaceVariant: Color(0xffcdcbbb),
      outline: Color(0xffa4a494),
      outlineVariant: Color(0xff848475),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e3d6),
      inversePrimary: Color(0xff474c04),
      primaryFixed: Color(0xffe2e893),
      onPrimaryFixed: Color(0xff111200),
      primaryFixedDim: Color(0xffc6cc79),
      onPrimaryFixedVariant: Color(0xff353900),
      secondaryFixed: Color(0xffe4e5c1),
      onSecondaryFixed: Color(0xff111201),
      secondaryFixedDim: Color(0xffc8c9a6),
      onSecondaryFixedVariant: Color(0xff36381f),
      tertiaryFixed: Color(0xffbeecdb),
      onTertiaryFixed: Color(0xff00150f),
      tertiaryFixedDim: Color(0xffa3d0c0),
      onTertiaryFixedVariant: Color(0xff103d32),
      surfaceDim: Color(0xff13140c),
      surfaceBright: Color(0xff3a3a31),
      surfaceContainerLowest: Color(0xff0e0f08),
      surfaceContainerLow: Color(0xff1c1c14),
      surfaceContainer: Color(0xff202018),
      surfaceContainerHigh: Color(0xff2a2a22),
      surfaceContainerHighest: Color(0xff35352c),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffcffc2),
      surfaceTint: Color(0xffc6cc79),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffcad07d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffdfdd8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcccdaa),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffecfff6),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa7d4c4),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff13140c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffdfbe9),
      outline: Color(0xffcdcbbb),
      outlineVariant: Color(0xffcdcbbb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e3d6),
      inversePrimary: Color(0xff292c00),
      primaryFixed: Color(0xffe7ed96),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffcad07d),
      onPrimaryFixedVariant: Color(0xff161800),
      secondaryFixed: Color(0xffe9e9c5),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcccdaa),
      onSecondaryFixedVariant: Color(0xff161803),
      tertiaryFixed: Color(0xffc2f1e0),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa7d4c4),
      onTertiaryFixedVariant: Color(0xff001b14),
      surfaceDim: Color(0xff13140c),
      surfaceBright: Color(0xff3a3a31),
      surfaceContainerLowest: Color(0xff0e0f08),
      surfaceContainerLow: Color(0xff1c1c14),
      surfaceContainer: Color(0xff202018),
      surfaceContainerHigh: Color(0xff2a2a22),
      surfaceContainerHighest: Color(0xff35352c),
    );
  }

  static ColorScheme blackScheme() => darkScheme().copyWith(
        surface: Colors.black,
      );

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData black() {
    return theme(blackScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ),
        snackBarTheme: const SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
        ),
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder: (context) => Icon(_getBackButtonIcon(context)),
          closeButtonIconBuilder: (context) => const Icon(Symbols.close),
          drawerButtonIconBuilder: (context) => const Icon(Symbols.menu),
          endDrawerButtonIconBuilder: (context) => const Icon(Symbols.menu),
        ),
      );

  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Color itemSelectableColor(BuildContext context) =>
      Theme.of(context).colorScheme.secondaryContainer;

  static TextStyle pageHeadlineText(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return textTheme.titleLarge!.copyWith(
      color: textTheme.displayLarge!.color,
    );
  }

  IconData _getBackButtonIcon(BuildContext context) {
    if (kIsWeb) {
      // Always use 'Symbols.arrow_back' as a back_button icon in web.
      return Symbols.arrow_back;
    }
    return switch (Theme.of(context).platform) {
      TargetPlatform.android ||
      TargetPlatform.fuchsia ||
      TargetPlatform.linux ||
      TargetPlatform.windows =>
        Symbols.arrow_back,
      TargetPlatform.iOS ||
      TargetPlatform.macOS =>
        Symbols.arrow_back_ios_new_rounded,
    };
  }
}

class AppThemeBuilder extends StatelessWidget {
  final bool dynamicThemeColor;
  final Widget Function(
    ThemeData light,
    ThemeData dark,
    ThemeData black,
  ) builder;

  const AppThemeBuilder({
    super.key,
    required this.builder,
    this.dynamicThemeColor = kDynamicThemeColor,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme(Theme.of(context).textTheme);

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return builder(
          switch (lightDynamic) {
            ColorScheme() when dynamicThemeColor =>
              appTheme.theme(lightDynamic.harmonized()),
            _ => appTheme.light()
          },
          switch (darkDynamic) {
            ColorScheme() when dynamicThemeColor =>
              appTheme.theme(darkDynamic.harmonized()),
            _ => appTheme.dark()
          },
          switch (darkDynamic) {
            ColorScheme() when dynamicThemeColor => appTheme.theme(
                darkDynamic.harmonized().copyWith(surface: Colors.black),
              ),
            _ => appTheme.black()
          },
        );
      },
    );
  }
}
