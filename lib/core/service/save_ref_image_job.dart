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
import 'dart:typed_data';

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../encrypt/encrypt.dart';
import '../fs/ref_image_fs.dart';

part 'save_ref_image_job.freezed.dart';
part 'save_ref_image_job.g.dart';

abstract class SaveRefImageJob {
  Future<SaveRefImageResult> run({
    required RefImageInfo info,
    required XFile file,
    required AuthFactor key,
  });
}

@freezed
sealed class SaveRefImageResult with _$SaveRefImageResult {
  const factory SaveRefImageResult.success() = SaveRefImageResultSuccess;

  const factory SaveRefImageResult.error(
    SaveRefImageError error,
  ) = SaveRefImageResultError;
}

@freezed
sealed class SaveRefImageError with _$SaveRefImageError {
  const factory SaveRefImageError.fs({
    required String path,
    required FsError error,
  }) = SaveRefImageErrorFs;

  const factory SaveRefImageError.encrypt({
    required EncryptError error,
  }) = SaveRefImageErrorEncrypt;

  factory SaveRefImageError.fromJson(Map<String, dynamic> json) =>
      _$SaveRefImageErrorFromJson(json);
}

@Injectable(as: SaveRefImageJob)
class SaveRefImageJobImpl implements SaveRefImageJob {
  final EncryptModuleProvider _encryptProvider;
  final RefImageFS _imageFs;

  SaveRefImageJobImpl(
    this._encryptProvider,
    this._imageFs,
  );

  @override
  Future<SaveRefImageResult> run({
    required RefImageInfo info,
    required XFile file,
    required AuthFactor key,
  }) async {
    late final Uint8List bytes;
    try {
      bytes = await file.readAsBytes();
    } on Exception catch (e, stackTrace) {
      return SaveRefImageResult.error(
        SaveRefImageError.fs(
          path: file.path,
          error: FsError.io(exception: e, stackTrace: stackTrace),
        ),
      );
    }

    final module = _encryptProvider.getByKey(key);
    final res = await module?.encrypt(src: bytes, info: info);
    final error = switch (res) {
      null => const SaveRefImageError.encrypt(
          error: EncryptError.noSecureKey(),
        ),
      EncryptResultSuccess(:final bytes) => await _save(file, info, bytes),
      EncryptResultFail(:final error) =>
        SaveRefImageError.encrypt(error: error),
    };

    return error != null
        ? SaveRefImageResult.error(error)
        : const SaveRefImageResult.success();
  }

  Future<SaveRefImageError?> _save(
    XFile file,
    RefImageInfo info,
    Uint8List bytes,
  ) async {
    final res = await _imageFs.save(info, bytes);
    return switch (res) {
      FsResultSuccess() => null,
      FsResultError(:final error) => SaveRefImageError.fs(
          path: file.path,
          error: error,
        ),
    };
  }
}
