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

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/window_manager.dart';
import 'package:blink_comparison/ui/model/app_state.dart';
import 'package:bloc/bloc.dart';

class AppCubit extends Cubit<AppState> {
  final AppSettings _pref;
  final WindowManager _windowManager;
  late final StreamSubscription subscription;

  AppCubit(
    this._pref,
    this._windowManager,
  ) : super(const AppState.initial());

  Future<void> load() async {
    emit(AppState.loaded(
      theme: await _pref.theme,
      locale: await _pref.locale,
      cameraFullscreenMode: await _pref.cameraFullscreenMode,
    ));

    subscription = _pref.changePrefStream().listen((key) async {
      switch (key) {
        case AppSettingsKey.theme:
          setTheme(await _pref.theme);
        case AppSettingsKey.locale:
          setLocale(await _pref.locale);
        case AppSettingsKey.cameraFullscreenMode:
          setCameraFullscreenMode(await _pref.cameraFullscreenMode);
        case AppSettingsKey.encryptionPreference:
          await setEncryptPreference(_pref.encryptionPreferenceSync);
      }
    });
  }

  @override
  Future<void> close() {
    subscription.cancel();

    return super.close();
  }

  void setTheme(AppThemeType theme) {
    if (state
        case AppState(
          :final locale?,
          :final cameraFullscreenMode?,
        )) {
      emit(AppState.changed(
        theme: theme,
        locale: locale,
        cameraFullscreenMode: cameraFullscreenMode,
      ));
    }
  }

  void setLocale(AppLocaleType locale) {
    if (state
        case AppState(
          :final theme?,
          :final cameraFullscreenMode?,
        )) {
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

  Future<void> setEncryptPreference(EncryptionPreference? value) async {
    if (state
        case AppState(
          :final theme?,
          :final locale?,
          :final cameraFullscreenMode?
        )) {
      emit(AppState.encryptPreferenceChanged(
        theme: theme,
        locale: locale,
        cameraFullscreenMode: cameraFullscreenMode,
        encrypt: value,
      ));
      await _switchWindowSecureFlag(value);
    }
  }

  Future<void> _switchWindowSecureFlag(EncryptionPreference? preference) async {
    switch (preference) {
      case null || EncryptionPreferenceNone():
        await _windowManager.setSecureFlag(false);
      case EncryptionPreferencePassword():
        await _windowManager.setSecureFlag(true);
    }
  }
}
