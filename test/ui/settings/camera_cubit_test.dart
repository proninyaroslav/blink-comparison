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

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/app_cubit.dart';
import 'package:blink_comparison/ui/settings/page/camera_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('CameraSettingsCubit |', () {
    late CameraSettingsCubit cubit;
    late AppSettings mockPref;
    late AppCubit mockAppCubit;

    setUpAll(() {
      mockPref = MockAppSettings();
      when(() => mockPref.enableFlashByDefault).thenReturn(true);
      when(() => mockPref.cameraFullscreenMode).thenReturn(true);
      mockAppCubit = MockAppCubit();
    });

    setUp(() {
      cubit = CameraSettingsCubit(mockPref, mockAppCubit);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Enable flash by default',
      build: () => cubit,
      act: (CameraSettingsCubit cubit) {
        cubit.setEnableFlashByDefault(false);
        verify(() => mockPref.enableFlashByDefault = false).called(1);

        cubit.setEnableFlashByDefault(true);
        verify(() => mockPref.enableFlashByDefault = true).called(1);
      },
      expect: () => [
        const CameraState.enableFlashChanged(
          CameraInfo(
            enableFlashByDefault: false,
            fullscreenMode: true,
          ),
        ),
        const CameraState.enableFlashChanged(
          CameraInfo(
            enableFlashByDefault: true,
            fullscreenMode: true,
          ),
        ),
      ],
    );

    blocTest(
      'Fullscreen mode',
      build: () => cubit,
      act: (CameraSettingsCubit cubit) {
        cubit.setFullscreenMode(false);
        verify(() => mockPref.cameraFullscreenMode = false).called(1);
        verify(() => mockAppCubit.setCameraFullscreenMode(false)).called(1);

        cubit.setFullscreenMode(true);
        verify(() => mockPref.cameraFullscreenMode = true).called(1);
        verify(() => mockAppCubit.setCameraFullscreenMode(true)).called(1);
      },
      expect: () => [
        const CameraState.fullscreenModeChanged(
          CameraInfo(
            enableFlashByDefault: true,
            fullscreenMode: false,
          ),
        ),
        const CameraState.fullscreenModeChanged(
          CameraInfo(
            enableFlashByDefault: true,
            fullscreenMode: true,
          ),
        ),
      ],
    );
  });
}
