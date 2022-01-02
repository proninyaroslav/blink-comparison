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
import 'package:blink_comparison/ui/settings/page/camera_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('CameraSettingsCubit |', () {
    late CameraSettingsCubit cubit;
    late AppSettings mockPref;

    setUpAll(() {
      mockPref = MockAppSettings();
      when(() => mockPref.enableFlashByDefault).thenReturn(true);
    });

    setUp(() {
      cubit = CameraSettingsCubit(mockPref);
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
          ),
        ),
        const CameraState.enableFlashChanged(
          CameraInfo(
            enableFlashByDefault: true,
          ),
        ),
      ],
    );
  });
}
