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

import 'package:camera/camera.dart';

import '../../../logger.dart';

class CameraControllerWrapper extends CameraController {
  bool _disposed = true;

  CameraControllerWrapper(
    super.description,
    super.resolutionPreset, {
    super.enableAudio,
    super.fps,
    super.videoBitrate,
    super.audioBitrate,
    super.imageFormatGroup,
  });

  bool get disposed => _disposed;

  @override
  Future<void> initialize() {
    _disposed = false;
    return super.initialize();
  }

  @override
  Future<void> dispose() async {
    _disposed = true;
    try {
      await setFlashMode(FlashMode.off);
    } catch (e, stackTrace) {
      log().e('Unable to reset flash mode', error: e, stackTrace: stackTrace);
    }
    return super.dispose();
  }
}
