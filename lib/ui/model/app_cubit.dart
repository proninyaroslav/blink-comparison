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
import 'package:blink_comparison/ui/model/app_state.dart';
import 'package:bloc/bloc.dart';

class AppCubit extends Cubit<AppState> {
  final AppSettings _pref;

  AppCubit(this._pref) : super(const AppState.initial());

  Future<void> load() async {
    emit(AppState.loaded(
      theme: await _pref.theme,
      locale: await _pref.locale,
      cameraFullscreenMode: await _pref.cameraFullscreenMode,
    ));
  }

  void setTheme(AppThemeType theme) {
    if (state case AppState(:final locale?, :final cameraFullscreenMode?)) {
      emit(AppState.changed(
        theme: theme,
        locale: locale,
        cameraFullscreenMode: cameraFullscreenMode,
      ));
    }
  }

  void setLocale(AppLocaleType locale) {
    if (state case AppState(:final theme?, :final cameraFullscreenMode?)) {
      emit(AppState.changed(
        theme: theme,
        locale: locale,
        cameraFullscreenMode: cameraFullscreenMode,
      ));
    }
  }

  void setCameraFullscreenMode(bool enable) {
    if (state case AppState(:final theme?, :final locale?)) {
      emit(AppState.changed(
        theme: theme,
        locale: locale,
        cameraFullscreenMode: enable,
      ));
    }
  }
}
