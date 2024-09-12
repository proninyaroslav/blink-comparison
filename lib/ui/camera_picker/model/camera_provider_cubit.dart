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
import 'package:blink_comparison/ui/camera_picker/model/camera_provider.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_provider_state.dart';
import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CameraProviderCubit extends Cubit<CameraProviderState> {
  final CameraProvider _provider;
  final AppSettings _pref;
  List<CameraDescription> _availableCameras = [];

  CameraProviderCubit(this._provider, this._pref)
      : super(const CameraProviderState.initial());

  Future<void> loadAvailableCameras() async {
    emit(const CameraProviderState.loading());
    try {
      await _loadAndCache();
      emit(
        CameraProviderState.loaded(
          primaryCamera: _availableCameras.first,
          otherCameras: _availableCameras.sublist(1),
          enableFlashByDefault: await _pref.enableFlashByDefault,
        ),
      );
    } on CameraException catch (e, stackTrace) {
      emit(CameraProviderState.loadFailed(error: e, stackTrace: stackTrace));
    }
  }

  Future<void> switchCamera(CameraDescription camera) async {
    emit(const CameraProviderState.loading());
    emit(
      CameraProviderState.loaded(
        primaryCamera: camera,
        otherCameras: _availableCameras.where((c) => c != camera).toList(),
        enableFlashByDefault: await _pref.enableFlashByDefault,
      ),
    );
  }

  Future<void> _loadAndCache() async {
    if (_availableCameras.isEmpty) {
      _availableCameras = await _provider.availableCameras();
    }
  }
}
