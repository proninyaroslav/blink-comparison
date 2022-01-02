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

import 'dart:typed_data';

import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/thumbnailer.dart';
import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'generate_thumbnail_job.freezed.dart';
part 'generate_thumbnail_job.g.dart';

abstract class GenerateThumbnailJob {
  Future<GenerateThumbnailResult> run(XFile srcImage);
}

@freezed
class GenerateThumbnailResult with _$GenerateThumbnailResult {
  const factory GenerateThumbnailResult.success({
    required Uint8List thumbnail,
  }) = GenerateThumbnailResultSuccess;

  const factory GenerateThumbnailResult.fail(
    GenerateThumbnailError error,
  ) = GenerateThumbnailResultFail;
}

@freezed
class GenerateThumbnailError with _$GenerateThumbnailError {
  const factory GenerateThumbnailError.fs(FsError error) =
      GenerateThumbnailErrorFs;

  const factory GenerateThumbnailError.fileNotFound({
    required String path,
  }) = GenerateThumbnailErrorFileNotFound;

  const factory GenerateThumbnailError.unsupportedFormat({
    required String path,
  }) = GenerateThumbnailErrorUnsupportedFormat;

  factory GenerateThumbnailError.fromJson(Map<String, dynamic> json) =>
      _$GenerateThumbnailErrorFromJson(json);
}

@Injectable(as: GenerateThumbnailJob)
class GenerateThumbnailJobImpl implements GenerateThumbnailJob {
  final Thumbnailer _thumbnailer;

  GenerateThumbnailJobImpl(this._thumbnailer);

  @override
  Future<GenerateThumbnailResult> run(XFile srcImage) async {
    late final Uint8List bytes;
    try {
      bytes = await srcImage.readAsBytes();
    } on Exception catch (e, stackTrace) {
      return GenerateThumbnailResult.fail(
        GenerateThumbnailError.fs(
          FsError.io(exception: e, stackTrace: stackTrace),
        ),
      );
    }
    if (bytes.isEmpty) {
      return GenerateThumbnailResult.fail(
        GenerateThumbnailError.fileNotFound(path: srcImage.path),
      );
    }
    final thumbnail = await _thumbnailer.build(bytes);
    if (thumbnail.isEmpty) {
      return GenerateThumbnailResult.fail(
        GenerateThumbnailError.unsupportedFormat(path: srcImage.path),
      );
    } else {
      return GenerateThumbnailResult.success(thumbnail: thumbnail);
    }
  }
}
