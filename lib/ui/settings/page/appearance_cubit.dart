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

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/app_cubit.dart';
import 'package:blink_comparison/ui/comparison/comparison.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'appearance_cubit.freezed.dart';

@freezed
class AppearanceState with _$AppearanceState {
  const factory AppearanceState.initial(
    AppearanceInfo info,
  ) = AppearanceStateInitial;

  const factory AppearanceState.themeChanged(
    AppearanceInfo info,
  ) = AppearanceStateThemeChanged;

  const factory AppearanceState.localeChanged(
    AppearanceInfo info,
  ) = AppearanceStateLocaleChanged;

  const factory AppearanceState.refImageBorderColorChanged(
    AppearanceInfo info,
  ) = AppearanceStateRefImageBorderColorChanged;
}

@freezed
class AppearanceInfo with _$AppearanceInfo {
  const factory AppearanceInfo({
    required AppThemeType theme,
    required AppLocaleType locale,
    required int refImageBorderColor,
  }) = _AppearanceInfo;
}

@injectable
class AppearanceSettingsCubit extends Cubit<AppearanceState> {
  final AppSettings _pref;
  final AppCubit _appCubit;
  final ComparisonSettingsCubit _comparisonSettingsCubit;

  AppearanceSettingsCubit(
    this._pref,
    this._appCubit,
    this._comparisonSettingsCubit,
  ) : super(
          AppearanceState.initial(
            AppearanceInfo(
              theme: _pref.theme,
              locale: _pref.locale,
              refImageBorderColor: _pref.refImageBorderColor,
            ),
          ),
        );

  void setTheme(AppThemeType theme) {
    _pref.theme = theme;
    _appCubit.setTheme(theme);
    emit(AppearanceState.themeChanged(
      state.info.copyWith(theme: theme),
    ));
  }

  void setLocale(AppLocaleType locale) {
    _pref.locale = locale;
    _appCubit.setLocale(locale);
    emit(AppearanceState.localeChanged(
      state.info.copyWith(locale: locale),
    ));
  }

  void setRefImageBorderColor(int color) {
    _pref.refImageBorderColor = color;
    _comparisonSettingsCubit.setRefImageBorderColor(color);
    emit(AppearanceState.refImageBorderColorChanged(
      state.info.copyWith(refImageBorderColor: color),
    ));
  }
}
