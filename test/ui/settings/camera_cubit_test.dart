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
import 'package:blink_comparison/ui/settings/model/camera_cubit.dart';
import 'package:blink_comparison/ui/settings/model/camera_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/settings/mock_settings.dart';

void main() {
  group('CameraSettingsCubit |', () {
    late CameraSettingsCubit cubit;
    late AppSettings mockPref;

    setUpAll(() {
      mockPref = MockAppSettings();
    });

    setUp(() async {
      when(() => mockPref.enableFlashByDefault).thenAnswer((_) async => true);
      when(() => mockPref.cameraFullscreenMode).thenAnswer((_) async => true);
      cubit = CameraSettingsCubit(mockPref);
      await cubit.load();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Enable flash by default',
      build: () => cubit,
      act: (CameraSettingsCubit cubit) async {
        when(() => mockPref.setEnableFlashByDefault(any()))
            .thenAnswer((_) => Future.value());

        await cubit.setEnableFlashByDefault(false);
        verify(() => mockPref.setEnableFlashByDefault(false)).called(1);

        await cubit.setEnableFlashByDefault(true);
        verify(() => mockPref.setEnableFlashByDefault(true)).called(1);
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
      act: (CameraSettingsCubit cubit) async {
        when(() => mockPref.setCameraFullscreenMode(any()))
            .thenAnswer((_) => Future.value());

        await cubit.setFullscreenMode(false);
        verify(() => mockPref.setCameraFullscreenMode(false)).called(1);

        await cubit.setFullscreenMode(true);
        verify(() => mockPref.setCameraFullscreenMode(true)).called(1);
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
