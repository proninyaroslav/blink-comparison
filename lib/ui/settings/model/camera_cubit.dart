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

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/settings/model/camera_state.dart';
import 'package:bloc/bloc.dart';

class CameraSettingsCubit extends Cubit<CameraState> {
  final AppSettings _pref;

  CameraSettingsCubit(this._pref) : super(const CameraState.initial());

  Future<void> load() async {
    emit(CameraState.loaded(
      CameraInfo(
        enableFlashByDefault: await _pref.enableFlashByDefault,
        fullscreenMode: await _pref.cameraFullscreenMode,
        autofocus: await _pref.cameraAutofocus,
      ),
    ));
  }

  Future<void> setEnableFlashByDefault(bool enable) async {
    if (state case CameraState(:final info?)) {
      await _pref.setEnableFlashByDefault(enable);
      emit(CameraState.enableFlashChanged(
        info.copyWith(enableFlashByDefault: enable),
      ));
    }
  }

  Future<void> setFullscreenMode(bool enable) async {
    if (state case CameraState(:final info?)) {
      await _pref.setCameraFullscreenMode(enable);
      emit(CameraState.fullscreenModeChanged(
        info.copyWith(fullscreenMode: enable),
      ));
    }
  }

  Future<void> setAutofocus(bool enable) async {
    if (state case CameraState(:final info?)) {
      await _pref.setCameraAutofocus(enable);
      emit(CameraState.autofocusChanged(
        info.copyWith(autofocus: enable),
      ));
    }
  }
}
