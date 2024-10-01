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
import 'package:blink_comparison/ui/camera_picker/model/camera_picker_state.dart';
import 'package:blink_comparison/ui/model/xfile_provider.dart';
import 'package:file/file.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraPickerCubit extends Cubit<CameraPickerState> {
  final FileSystem _fs;

  CameraPickerCubit(this._fs) : super(CameraPickerState.initial());

  void load(XFileImage image) {
    emit(CameraPickerState.loaded(image: image));
  }

  Future<void> reject() async {
    if (state case CameraPickerStateLoaded(:final image)) {
      await _removeImage(image);
      await image.evict();
      emit(CameraPickerState.rejected(image: image));
    }
  }

  Future<void> accept() async {
    if (state case CameraPickerStateLoaded(:final image)) {
      await image.evict();
      emit(CameraPickerState.accepted(image: image));
    }
  }

  Future<void> _removeImage(XFileImage image) async {
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
