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
import 'package:blink_comparison/ui/components/camera/model/camera_provider_cubit.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_provider_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:camera/camera.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('CameraProviderCubit |', () {
    late MockCameraProvider mockProvider;
    late AppSettings mockPref;
    late CameraProviderCubit cubit;

    setUp(() {
      mockProvider = MockCameraProvider();
      mockPref = MockAppSettings();
      cubit = CameraProviderCubit(mockProvider, mockPref);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Load success',
      build: () => cubit,
      act: (CameraProviderCubit cubit) async {
        final expectedCameras = [
          const CameraDescription(
            name: 'Front',
            lensDirection: CameraLensDirection.front,
            sensorOrientation: 0,
          ),
          const CameraDescription(
            name: 'Back',
            lensDirection: CameraLensDirection.back,
            sensorOrientation: 0,
          ),
        ];
        when(() => mockProvider.availableCameras())
            .thenAnswer((_) async => expectedCameras);
        when(() => mockPref.enableFlashByDefault).thenAnswer((_) async => true);
        when(() => mockPref.cameraAutofocus).thenAnswer((_) async => true);
        await cubit.loadAvailableCameras();
      },
      expect: () => [
        const CameraProviderState.loading(),
        const CameraProviderState.loaded(
          primaryCamera: CameraDescription(
            name: 'Front',
            lensDirection: CameraLensDirection.front,
            sensorOrientation: 0,
          ),
          otherCameras: [
            CameraDescription(
              name: 'Back',
              lensDirection: CameraLensDirection.back,
              sensorOrientation: 0,
            ),
          ],
          enableFlashByDefault: true,
          autofocus: true,
        ),
      ],
    );

    blocTest(
      'Load from cache',
      build: () => cubit,
      act: (CameraProviderCubit cubit) async {
        final expectedCameras = [
          const CameraDescription(
            name: 'Front',
            lensDirection: CameraLensDirection.front,
            sensorOrientation: 0,
          ),
          const CameraDescription(
            name: 'Back',
            lensDirection: CameraLensDirection.back,
            sensorOrientation: 0,
          ),
        ];
        when(() => mockProvider.availableCameras())
            .thenAnswer((_) async => expectedCameras);
        when(() => mockPref.enableFlashByDefault).thenAnswer((_) async => true);
        when(() => mockPref.cameraAutofocus).thenAnswer((_) async => true);
        await cubit.loadAvailableCameras();
        await cubit.loadAvailableCameras();
        verify(() => mockProvider.availableCameras()).called(1);
      },
      expect: () => [
        const CameraProviderState.loading(),
        const CameraProviderState.loaded(
          primaryCamera: CameraDescription(
            name: 'Front',
            lensDirection: CameraLensDirection.front,
            sensorOrientation: 0,
          ),
          otherCameras: [
            CameraDescription(
              name: 'Back',
              lensDirection: CameraLensDirection.back,
              sensorOrientation: 0,
            ),
          ],
          enableFlashByDefault: true,
          autofocus: true,
        ),
        const CameraProviderState.loading(),
        const CameraProviderState.loaded(
          primaryCamera: CameraDescription(
            name: 'Front',
            lensDirection: CameraLensDirection.front,
            sensorOrientation: 0,
          ),
          otherCameras: [
            CameraDescription(
              name: 'Back',
              lensDirection: CameraLensDirection.back,
              sensorOrientation: 0,
            ),
          ],
          enableFlashByDefault: true,
          autofocus: true,
        ),
      ],
    );

    blocTest(
      'Load failed',
      build: () => cubit,
      act: (CameraProviderCubit cubit) async {
        when(() => mockProvider.availableCameras()).thenAnswer(
          (_) => throw CameraException('1', 'Error'),
        );
        await cubit.loadAvailableCameras();
      },
      expect: () => [
        const CameraProviderState.loading(),
        isA<CameraProviderStateLoadFailed>(),
      ],
    );

    blocTest(
      'Switch camera',
      build: () => cubit,
      act: (CameraProviderCubit cubit) async {
        final expectedCameras = [
          const CameraDescription(
            name: 'Front',
            lensDirection: CameraLensDirection.front,
            sensorOrientation: 0,
          ),
          const CameraDescription(
            name: 'Back',
            lensDirection: CameraLensDirection.back,
            sensorOrientation: 0,
          ),
        ];
        when(() => mockProvider.availableCameras())
            .thenAnswer((_) async => expectedCameras);
        when(() => mockPref.enableFlashByDefault).thenAnswer((_) async => true);
        when(() => mockPref.cameraAutofocus).thenAnswer((_) async => true);
        await cubit.loadAvailableCameras();
        await cubit.switchCamera(expectedCameras.last);
      },
      expect: () => [
        const CameraProviderState.loading(),
        const CameraProviderState.loaded(
          primaryCamera: CameraDescription(
            name: 'Front',
            lensDirection: CameraLensDirection.front,
            sensorOrientation: 0,
          ),
          otherCameras: [
            CameraDescription(
              name: 'Back',
              lensDirection: CameraLensDirection.back,
              sensorOrientation: 0,
            ),
          ],
          enableFlashByDefault: true,
          autofocus: true,
        ),
        const CameraProviderState.loading(),
        const CameraProviderState.loaded(
          primaryCamera: CameraDescription(
            name: 'Back',
            lensDirection: CameraLensDirection.back,
            sensorOrientation: 0,
          ),
          otherCameras: [
            CameraDescription(
              name: 'Front',
              lensDirection: CameraLensDirection.front,
              sensorOrientation: 0,
            ),
          ],
          enableFlashByDefault: true,
          autofocus: true,
        ),
      ],
    );
  });
}
