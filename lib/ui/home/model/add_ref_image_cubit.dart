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
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/home/model/add_ref_image_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddRefImageCubit extends Cubit<AddRefImageState> {
  final RefImageRepository _refRepo;
  final AppSettings _pref;

  AddRefImageCubit(
    this._refRepo,
    this._pref,
  ) : super(const AddRefImageState.initial());

  Future<void> addImages(List<XFile> files) async {
    emit(const AddRefImageState.addingImages());
    final successList = <RefImageInfo>[];
    final failedList = <AddRefImageError>[];
    for (final file in files) {
      final res = await _refRepo.addFromFile(
        file,
        encryption: _pref.encryptionPreferenceSync,
      );
      switch (res) {
        case SecStorageResultSuccess(:final value):
          successList.add(value);
        case SecStorageResultError(:final error):
          switch (error) {
            case SecStorageErrorDatabase(:final exception, :final stackTrace):
              failedList.add(
                AddRefImageError(
                  path: file.path,
                  exception: exception,
                  stackTrace: stackTrace,
                ),
              );
            case SecStorageErrorFs(:final error):
              failedList.add(
                AddRefImageError.fs(path: file.path, error: error),
              );
            case SecStorageErrorNoKey():
              emit(const AddRefImageState.noSecureKey());
              return;
            case SecStorageErrorEncrypt(:final error):
              failedList.add(
                AddRefImageError.encrypt(path: file.path, error: error),
              );
            case SecStorageErrorDecrypt():
              throw 'Unknown error state';
          }
      }
    }
    emit(
      AddRefImageState.imagesAdded(
        AddRefImageResult(
          successList: successList,
          failedList: failedList,
        ),
      ),
    );
  }
}
