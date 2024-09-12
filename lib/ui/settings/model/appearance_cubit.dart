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

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/model/app_cubit.dart';
import 'package:blink_comparison/ui/settings/model/appearance_state.dart';
import 'package:bloc/bloc.dart';

class AppearanceSettingsCubit extends Cubit<AppearanceState> {
  final AppSettings _pref;
  final AppCubit _appCubit;

  AppearanceSettingsCubit(
    this._pref,
    this._appCubit,
  ) : super(const AppearanceState.initial());

  Future<void> load() async {
    emit(AppearanceState.loaded(
      AppearanceInfo(
        theme: await _pref.theme,
        locale: await _pref.locale,
        refImageBorderColor: await _pref.refImageBorderColor,
      ),
    ));
  }

  Future<void> setTheme(AppThemeType theme) async {
    if (state case AppearanceState(:final info?)) {
      await _pref.setTheme(theme);
      _appCubit.setTheme(theme);
      emit(AppearanceState.themeChanged(
        info.copyWith(theme: theme),
      ));
    }
  }

  Future<void> setLocale(AppLocaleType locale) async {
    if (state case AppearanceState(:final info?)) {
      await _pref.setLocale(locale);
      _appCubit.setLocale(locale);
      emit(AppearanceState.localeChanged(
        info.copyWith(locale: locale),
      ));
    }
  }

  Future<void> setRefImageBorderColor(int color) async {
    if (state case AppearanceState(:final info?)) {
      await _pref.setRefImageBorderColor(color);
      emit(AppearanceState.refImageBorderColorChanged(
        info.copyWith(refImageBorderColor: color),
      ));
    }
  }
}
