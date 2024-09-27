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

import 'package:async/async.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/ref_image_status_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/home/model/ref_images_actions_state.dart';
import 'package:blink_comparison/ui/home/model/ref_images_state.dart';
import 'package:blink_comparison/ui/model/utils.dart';
import 'package:bloc/bloc.dart';
// ignore: unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ref_images_cubit.freezed.dart';

class RefImagesCubit extends Cubit<RefImagesState> {
  final RefImageRepository _imageRepo;
  final RefImageStatusRepository _imageStatusRepo;

  RefImagesCubit(
    this._imageRepo,
    this._imageStatusRepo,
  ) : super(const RefImagesState.initial());

  Future<void> observeRefImages() async {
    final group = StreamGroup.mergeBroadcast([
      _imageRepo.observeAllInfo().asyncMap(
            (res) => switch (res) {
              StorageResultValue(:final value) =>
                _buildEntries(infoList: value),
              StorageResultError(:final error) =>
                Future.value(_BuildResult.failed(error: error)),
            },
          ),
      _imageStatusRepo.observeAllSaveStatus().asyncMap(
            (list) => _buildEntries(statusList: list),
          ),
    ]);
    await for (final res in group) {
      final newState = switch (res) {
        _BuildResultData(:final entries) =>
          RefImagesState.loaded(entries: entries),
        _BuildResultFailed(:final error) =>
          RefImagesState.loadingFailed(error: error),
      };
      safeEmit(newState);

      if (res is _BuildResultFailed) {
        break;
      }
    }
  }

  Future<_BuildResult> _buildEntries({
    List<RefImageInfo>? infoList,
    List<SaveRefImageStatus>? statusList,
  }) async {
    try {
      final List<RefImageInfo> infoList0 = infoList ??
          await _imageRepo.getAllInfo().then(
                (res) => switch (res) {
                  StorageResultValue(:final value) => value,
                  StorageResultError(:final error) => throw error,
                },
              );

      final List<SaveRefImageStatus> statusList0 =
          statusList ?? await _imageStatusRepo.getAllSaveStatus();

      final statusMap = Map.fromEntries(
        statusList0.map(
          (status) => MapEntry(status.imageId, status),
        ),
      );

      final entries = <RefImageEntry>[];
      for (final info in infoList0) {
        final res = await _imageRepo.getThumbnail(info);
        entries.add(
          RefImageEntry(
            info: info,
            thumbnail: switch (res) {
              StorageResultValue(:final value) => value,
              StorageResultError(:final error) => throw error,
            },
            status: statusMap[info.id],
          ),
        );
      }
      return _BuildResult(entries: entries);
    } on StorageError catch (e) {
      return _BuildResult.failed(error: e);
    }
  }
}

@freezed
sealed class _BuildResult with _$BuildResult {
  const factory _BuildResult({
    required List<RefImageEntry> entries,
  }) = _BuildResultData;

  const factory _BuildResult.failed({
    required StorageError error,
  }) = _BuildResultFailed;
}
