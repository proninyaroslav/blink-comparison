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
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
sealed class AppState with _$AppState {
  const factory AppState.initial({
    @Default(null) AppThemeType? theme,
    @Default(null) AppLocaleType? locale,
    @Default(null) bool? cameraFullscreenMode,
  }) = AppStateInitial;

  const factory AppState.loaded({
    required AppThemeType theme,
    required AppLocaleType locale,
    required bool cameraFullscreenMode,
  }) = AppStateLoaded;

  const factory AppState.changed({
    required AppThemeType theme,
    required AppLocaleType locale,
    required bool cameraFullscreenMode,
  }) = AppStateChanged;

  const factory AppState.encryptPreferenceChanged({
    required AppThemeType theme,
    required AppLocaleType locale,
    required bool cameraFullscreenMode,
    required EncryptionPreference? encrypt,
  }) = AppStateEncryptPreferenceChanged;
}
