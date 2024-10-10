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

import 'package:blink_comparison/logger.dart';
import 'package:blink_comparison/ui/comparison/model/blink_comparison_state.dart';
import 'package:blink_comparison/ui/model/xfile_image.dart';
import 'package:file/file.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlinkComparisonCubit extends Cubit<BlinkComparisonState> {
  final FileSystem _fs;

  BlinkComparisonCubit(this._fs) : super(const BlinkComparisonState.initial());

  @override
  Future<void> close() async {
    await _cleanup();

    return super.close();
  }

  Future<void> load({
    required ImageProvider refImage,
    required XFileImage takenPhoto,
  }) async {
    if (state is! BlinkComparisonStateInitial) {
      await _cleanup();
    }
    emit(BlinkComparisonState.loaded(
      refImage: refImage,
      takenPhoto: takenPhoto,
    ));
  }

  void switchImage() {
    final newState = switch (state) {
      BlinkComparisonStateInitial() => null,
      BlinkComparisonStateLoaded(:final refImage, :final takenPhoto) ||
      BlinkComparisonStateShowRefImage(:final refImage, :final takenPhoto) =>
        BlinkComparisonState.showTakenPhoto(
          refImage: refImage,
          takenPhoto: takenPhoto,
        ),
      BlinkComparisonStateShowTakenPhoto(:final refImage, :final takenPhoto) =>
        BlinkComparisonState.showRefImage(
          refImage: refImage,
          takenPhoto: takenPhoto,
        ),
    };
    if (newState != null) {
      emit(newState);
    }
  }

  Future<void> _cleanup() async {
    if (state
        case BlinkComparisonStateLoaded(
              :final refImage,
              :final takenPhoto,
            ) ||
            BlinkComparisonStateShowRefImage(
              :final refImage,
              :final takenPhoto,
            ) ||
            BlinkComparisonStateShowTakenPhoto(
              :final refImage,
              :final takenPhoto,
            )) {
      await refImage.evict();
      await takenPhoto.evict();
      try {
        await _fs.file(takenPhoto.file.path).delete();
      } on Exception catch (e, stackTrace) {
        log().e(
          'Unable to delete cached image',
          error: e,
          stackTrace: stackTrace,
        );
      }
    }
  }
}
