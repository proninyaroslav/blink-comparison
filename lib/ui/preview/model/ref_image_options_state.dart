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

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ref_image_options_state.freezed.dart';

@freezed
sealed class RefImageOptionsState with _$RefImageOptionsState {
  const factory RefImageOptionsState.initial({
    @Default(null) RefImageOptions? options,
  }) = RefImageOptionsStateInitial;

  const factory RefImageOptionsState.loaded(
    RefImageOptions options,
  ) = RefImageOptionsStateLoaded;

  const factory RefImageOptionsState.opacityChanged(
    RefImageOptions options,
  ) = RefImageOptionsStateOpacityChanged;
}

@freezed
class RefImageOptions with _$RefImageOptions {
  const factory RefImageOptions({
    required double opacity,
  }) = _RefImageOptions;
}
