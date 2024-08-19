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
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_cubit.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial({
    required AppThemeType theme,
    required AppLocaleType locale,
    required bool cameraFullscreenMode,
  }) = AppStateInitial;

  const factory AppState.changed({
    required AppThemeType theme,
    required AppLocaleType locale,
    required bool cameraFullscreenMode,
  }) = AppStateChanged;
}

@singleton
class AppCubit extends Cubit<AppState> {
  @FactoryMethod(preResolve: true)
  static Future<AppCubit> init(AppSettings pref) async {
    return AppCubit(
      theme: await pref.theme,
      locale: await pref.locale,
      cameraFullscreenMode: await pref.cameraFullscreenMode,
    );
  }

  AppCubit({
    required AppThemeType theme,
    required AppLocaleType locale,
    required bool cameraFullscreenMode,
  }) : super(
          AppState.initial(
            theme: theme,
            locale: locale,
            cameraFullscreenMode: cameraFullscreenMode,
          ),
        );

  void setTheme(AppThemeType theme) {
    emit(AppState.changed(
        theme: theme,
        locale: state.locale,
        cameraFullscreenMode: state.cameraFullscreenMode));
  }

  void setLocale(AppLocaleType locale) {
    emit(AppState.changed(
      theme: state.theme,
      locale: locale,
      cameraFullscreenMode: state.cameraFullscreenMode,
    ));
  }

  void setCameraFullscreenMode(bool enable) {
    emit(AppState.changed(
      theme: state.theme,
      locale: state.locale,
      cameraFullscreenMode: enable,
    ));
  }
}
