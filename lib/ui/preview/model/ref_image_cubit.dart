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

import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/preview/model/ref_image_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RefImageCubit extends Cubit<RefImageState> {
  final RefImageRepository _imageRepo;

  RefImageCubit(this._imageRepo) : super(const RefImageState.initial());

  Future<void> load(String imageId) async {
    emit(const RefImageState.loading());
    final res = await _imageRepo.getInfoById(imageId);
    switch (res) {
      case StorageResultValue(value: final info):
        if (info == null) {
          emit(const RefImageState.loadFailed(
            LoadRefImageError.notFound(),
          ));
          return;
        }
        final res = await _imageRepo.getImage(info);
        switch (res) {
          case SecStorageResultSuccess(:final value):
            emit(RefImageState.loaded(value));
          case SecStorageResultError(:final error):
            final errorState = switch (error) {
              SecStorageErrorDatabase(:final exception, :final stackTrace) =>
                LoadRefImageError.database(
                  exception: exception,
                  stackTrace: stackTrace,
                ),
              SecStorageErrorFs(:final error) => LoadRefImageError.fs(error),
              SecStorageErrorNoKey() => const LoadRefImageError.noSecureKey(),
              SecStorageErrorEncrypt() => throw 'Unknown error state',
              SecStorageErrorDecrypt(:final error) =>
                LoadRefImageError.decrypt(error),
            };
            emit(RefImageState.loadFailed(errorState));
        }
      case StorageResultError(:final error):
        final errorState = switch (error) {
          StorageErrorDatabase(:final exception, :final stackTrace) =>
            LoadRefImageError.database(
              exception: exception,
              stackTrace: stackTrace,
            ),
          StorageErrorFs(:final error) => LoadRefImageError.fs(error),
        };
        emit(RefImageState.loadFailed(errorState));
    }
  }
}
