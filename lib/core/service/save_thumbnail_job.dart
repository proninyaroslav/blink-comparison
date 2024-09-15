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

import 'dart:typed_data';

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/fs/thumbnail_fs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'save_thumbnail_job.freezed.dart';
part 'save_thumbnail_job.g.dart';

abstract class SaveThumbnailJob {
  Future<SaveThumbnailResult> run({
    required RefImageInfo info,
    required Uint8List thumbnail,
  });
}

@freezed
sealed class SaveThumbnailResult with _$SaveThumbnailResult {
  const factory SaveThumbnailResult.success() = SaveThumbnailResultSuccess;

  const factory SaveThumbnailResult.fail(
    SaveThumbnailError error,
  ) = SaveThumbnailResultFail;
}

@freezed
sealed class SaveThumbnailError with _$SaveThumbnailError {
  const factory SaveThumbnailError.fs(FsError error) = SaveThumbnailErrorFs;

  factory SaveThumbnailError.fromJson(Map<String, dynamic> json) =>
      _$SaveThumbnailErrorFromJson(json);
}

@Injectable(as: SaveThumbnailJob)
class SaveThumbnailJobImpl implements SaveThumbnailJob {
  final ThumbnailFS _thumbnailFs;

  SaveThumbnailJobImpl(this._thumbnailFs);

  @override
  Future<SaveThumbnailResult> run({
    required RefImageInfo info,
    required Uint8List thumbnail,
  }) async {
    final res = await _thumbnailFs.save(info, thumbnail);
    return switch (res) {
      FsResultSuccess() => const SaveThumbnailResult.success(),
      FsResultError(:final error) =>
        SaveThumbnailResult.fail(SaveThumbnailError.fs(error)),
    };
  }
}
