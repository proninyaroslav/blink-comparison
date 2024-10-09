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
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/home/model/ref_image_entry.dart';
import 'package:blink_comparison/ui/home/model/ref_images_state.dart';
import 'package:blink_comparison/ui/model/utils.dart';
import 'package:bloc/bloc.dart';
// ignore: unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ref_images_cubit.freezed.dart';

class RefImagesCubit extends Cubit<RefImagesState> {
  final RefImageRepository _imageRepo;

  RefImagesCubit(this._imageRepo) : super(const RefImagesState.initial());

  Future<void> observeRefImages() async {
    final stream = _imageRepo.observeAllInfo().asyncMap(
          (res) => switch (res) {
            StorageResultValue(:final value) => _buildEntries(infoList: value),
            StorageResultError(:final error) =>
              Future.value(_BuildResult.failed(error: error)),
          },
        );
    await for (final res in stream) {
      switch (res) {
        case _BuildResultData(:final entries):
          if (state case RefImagesStateLoaded(entries: final old)
              when old.length == entries.length) {
            break;
          } else {
            safeEmit(RefImagesState.loaded(entries: entries));
          }
        case _BuildResultFailed(:final error):
          safeEmit(RefImagesState.loadingFailed(error: error));
      }

      if (res is _BuildResultFailed) {
        break;
      }
    }
  }

  Future<_BuildResult> _buildEntries({
    required List<RefImageInfo> infoList,
  }) async {
    try {
      final entries = <RefImageEntry>[];
      for (final info in infoList) {
        final res = await _imageRepo.getThumbnail(info);
        entries.add(
          RefImageEntry(
            info: info,
            thumbnail: switch (res) {
              StorageResultValue(:final value) => value,
              StorageResultError(:final error) => throw error,
            },
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
