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

import 'package:blink_comparison/core/encrypt/encrypt_module.dart';
import 'package:blink_comparison/core/entity/ref_image.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_ref_image_state.freezed.dart';

@freezed
sealed class AddRefImageState with _$AddRefImageState {
  const factory AddRefImageState.initial() = AddRefImageStateInitial;

  const factory AddRefImageState.addingImages() = AddRefImageStateAddingImage;

  const factory AddRefImageState.imagesAdded(
    AddRefImageResult result,
  ) = AddRefImageStateImagesAdded;

  const factory AddRefImageState.noSecureKey() = AddRefImageStateNoSecureKey;
}

@freezed
class AddRefImageResult with _$AddRefImageResult {
  const factory AddRefImageResult({
    required List<RefImageInfo> successList,
    required List<AddRefImageError> failedList,
  }) = _AddRefImageResult;
}

@freezed
sealed class AddRefImageError with _$AddRefImageError {
  const factory AddRefImageError({
    required String path,
    Exception? exception,
    StackTrace? stackTrace,
  }) = AddRefImageErrorData;

  const factory AddRefImageError.fs({
    required String path,
    required FsError error,
  }) = AddRefImageErrorFs;

  const factory AddRefImageError.encrypt({
    required String path,
    required EncryptError error,
  }) = AddRefImageErrorEncrypt;

  const factory AddRefImageError.noSecureKey() = AddRefImageErrorNoSecureKey;
}
