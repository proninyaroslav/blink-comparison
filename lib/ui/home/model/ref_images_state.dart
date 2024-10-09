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

import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/home/model/ref_image_entry.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ref_images_state.freezed.dart';

@freezed
sealed class RefImagesState with _$RefImagesState {
  const factory RefImagesState.initial() = RefImagesStateInitial;

  const factory RefImagesState.loaded({
    required List<RefImageEntry> entries,
  }) = RefImagesStateLoaded;

  const factory RefImagesState.loadingFailed({
    StorageError? error,
  }) = RefImagesStateLoadingFailed;
}
