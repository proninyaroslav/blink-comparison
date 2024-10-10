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

import 'package:blink_comparison/logger.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_picker_metadata.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_picker_state.dart';
import 'package:blink_comparison/ui/model/xfile_image.dart';
import 'package:file/file.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraPickerCubit extends Cubit<CameraPickerState> {
  final FileSystem _fs;

  CameraPickerCubit(this._fs) : super(CameraPickerState.initial());

  @override
  Future<void> close() async {
    await _cleanup();

    return super.close();
  }

  Future<void> load(XFileImage image) async {
    if (state is! CameraPickerStateInitial) {
      await _cleanup();
    }
    emit(CameraPickerState.loaded(image: image));
  }

  Future<void> reject() async {
    if (state case CameraPickerStateLoaded(:final image)) {
      emit(CameraPickerState.rejected(image: image));
    }
  }

  Future<void> accept(CameraPickerMetadata metadata) async {
    if (state case CameraPickerStateLoaded(:final image)) {
      emit(CameraPickerState.accepted(image: image, metadata: metadata));
    }
  }

  Future<void> _cleanup() async {
    switch (state) {
      case CameraPickerStateInitial():
        break;
      case CameraPickerStateAccepted(:final image):
        await image.evict();
      case CameraPickerStateLoaded(:final image) ||
            CameraPickerStateRejected(:final image):
        await image.evict();
        try {
          await _fs.file(image.file.path).delete();
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
