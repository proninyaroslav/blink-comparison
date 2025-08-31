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

import 'package:blink_comparison/core/settings/model.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appearance_state.freezed.dart';

@freezed
sealed class AppearanceState with _$AppearanceState {
  const factory AppearanceState.initial({@Default(null) AppearanceInfo? info}) =
      AppearanceStateInitial;

  const factory AppearanceState.loaded(AppearanceInfo info) =
      AppearanceStateLoaded;

  const factory AppearanceState.themeChanged(AppearanceInfo info) =
      AppearanceStateThemeChanged;

  const factory AppearanceState.localeChanged(AppearanceInfo info) =
      AppearanceStateLocaleChanged;

  const factory AppearanceState.refImageBorderColorChanged(
    AppearanceInfo info,
  ) = AppearanceStateRefImageBorderColorChanged;
}

@freezed
abstract class AppearanceInfo with _$AppearanceInfo {
  const factory AppearanceInfo({
    required AppThemeType theme,
    required AppLocaleType locale,
    required int refImageBorderColor,
  }) = _AppearanceInfo;
}
