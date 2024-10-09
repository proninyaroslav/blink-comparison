// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:async/async.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/ref_image_status_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/home/model/image_item_state.dart';
import 'package:blink_comparison/ui/model/utils.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ref_image_entry.dart';

part 'image_item_cubit.freezed.dart';

class ImageItemCubit extends Cubit<ImageItemState> {
  final RefImageStatusRepository _imageStatusRepo;
  final RefImageRepository _refImageRepo;

  ImageItemCubit(this._imageStatusRepo, this._refImageRepo)
      : super(ImageItemState.initial());

  Future<void> load(RefImageEntry image) async {
    final id = image.info.id;
    final stream = StreamGroup.merge([
      _imageStatusRepo
          .observeSaveStatusById(id)
          .asyncMap((status) => _build(image: image, status: status)),
      _refImageRepo.observeInfoById(id).asyncMap(
            (res) => switch (res) {
              StorageResultValue(:final value) =>
                _build(image: image, info: value),
              StorageResultError(:final error) =>
                Future.value(_BuildResult.failed(error: error)),
            },
          ),
    ]);
    await for (final res in stream) {
      final newState = switch (res) {
        _BuildResulLoaded(
          image: final newImage,
          :final status?,
        ) =>
          switch (status) {
            SaveRefImageStatusProgress() =>
              ImageItemState.saving(image: newImage),
            SaveRefImageStatusCompleted(:final error) =>
              ImageItemState.saved(image: newImage, error: error),
          },
        _BuildResulLoaded(image: final newImage) =>
          ImageItemState.loaded(image: newImage),
        _BuildResultFailed(:final error) =>
          ImageItemState.loadingFailed(error: error),
      };

      safeEmit(newState);

      if (res is _BuildResultFailed) {
        break;
      }
    }
  }

  Future<_BuildResult> _build({
    required RefImageEntry image,
    RefImageInfo? info,
    SaveRefImageStatus? status,
  }) async {
    final newStatus =
        status ?? await _imageStatusRepo.getSaveStatusById(image.info.id);

    return _BuildResult(
      image: info == null ? image : image.copyWith(info: info),
      status: newStatus,
    );
  }
}

@freezed
sealed class _BuildResult with _$BuildResult {
  const factory _BuildResult({
    required RefImageEntry image,
    required SaveRefImageStatus? status,
  }) = _BuildResulLoaded;

  const factory _BuildResult.failed({
    required StorageError error,
  }) = _BuildResultFailed;
}
