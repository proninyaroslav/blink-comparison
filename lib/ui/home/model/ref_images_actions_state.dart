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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ref_images_actions_state.freezed.dart';

@freezed
class RefImagesActionsState with _$RefImagesActionsState {
  const factory RefImagesActionsState.initial() = RefImagesActionsStateInitial;

  const factory RefImagesActionsState.deleting() =
      RefImagesActionsStateDeleting;

  const factory RefImagesActionsState.deleted({
    required int count,
    required Map<RefImageInfo, SecStorageError> errors,
  }) = RefImagesActionsStateDeleted;
}

@freezed
class RefImageEntry with _$RefImageEntry {
  const factory RefImageEntry({
    required RefImageInfo info,
    required Thumbnail thumbnail,
    SaveRefImageStatus? status,
  }) = _RefImageEntry;
}
