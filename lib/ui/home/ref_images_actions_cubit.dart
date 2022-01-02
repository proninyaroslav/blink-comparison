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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ref_images_actions_cubit.freezed.dart';

@freezed
class RefImagesActionsState with _$RefImagesActionsState {
  const factory RefImagesActionsState.initial() = RefImagesActionsStateInitial;

  const factory RefImagesActionsState.deleting() =
      RefImagesActionsStateDeleting;

  const factory RefImagesActionsState.deleted({
    required int count,
    required Map<RefImageInfo, SecStorageError> errors,
  }) = RefImagesActionsStateDeleted;
}

@injectable
class RefImagesActionsCubit extends Cubit<RefImagesActionsState> {
  final RefImageRepository _imageRepo;

  RefImagesActionsCubit(this._imageRepo)
      : super(const RefImagesActionsState.initial());

  Future<void> delete(List<RefImageInfo> infoList) async {
    emit(const RefImagesActionsState.deleting());
    final res = await _imageRepo.deleteList(infoList);
    final errors = <RefImageInfo, SecStorageError>{};
    for (final entry in res.entries) {
      entry.value.when(
        (_) {},
        error: (e) {
          errors[entry.key] = e;
        },
      );
    }
    emit(RefImagesActionsState.deleted(
      count: infoList.length,
      errors: errors,
    ));
  }
}
