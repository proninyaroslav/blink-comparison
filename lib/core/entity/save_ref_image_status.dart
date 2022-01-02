// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:blink_comparison/core/service/generate_thumbnail_job.dart';
import 'package:blink_comparison/core/service/save_ref_image_job.dart';
import 'package:blink_comparison/core/service/save_thumbnail_job.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_ref_image_status.freezed.dart';
part 'save_ref_image_status.g.dart';

@freezed
class SaveRefImageStatus with _$SaveRefImageStatus {
  const factory SaveRefImageStatus.inProgress({
    required String imageId,
  }) = SaveRefImageStatusProgress;

  const factory SaveRefImageStatus.completed({
    required String imageId,
    SaveRefImageStatusError? error,
  }) = SaveRefImageStatusCompleted;

  factory SaveRefImageStatus.fromJson(Map<String, dynamic> json) =>
      _$SaveRefImageStatusFromJson(json);
}

@freezed
class SaveRefImageStatusError with _$SaveRefImageStatusError {
  const factory SaveRefImageStatusError.saveImage(
    SaveRefImageError error,
  ) = SaveRefImageStatusErrorSaveImage;

  const factory SaveRefImageStatusError.generateThumbnail(
    GenerateThumbnailError error,
  ) = SaveRefImageStatusErrorGenerateThumbnail;

  const factory SaveRefImageStatusError.saveThumbnail(
    SaveThumbnailError error,
  ) = SaveRefImageStatusErrorSaveThumbnail;

  factory SaveRefImageStatusError.fromJson(Map<String, dynamic> json) =>
      _$SaveRefImageStatusErrorFromJson(json);
}
