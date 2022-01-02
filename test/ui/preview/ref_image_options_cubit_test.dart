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
import 'package:blink_comparison/ui/preview/ref_image_options_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('RefImageCubit |', () {
    late AppSettings mockPref;
    late RefImageOptionsCubit cubit;

    setUp(() {
      mockPref = MockAppSettings();
      when(() => mockPref.refImageOverlayOpacity).thenReturn(0.0);
      cubit = RefImageOptionsCubit(mockPref);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change opacity',
      build: () => cubit,
      act: (RefImageOptionsCubit cubit) {
        when(
          () => mockPref.refImageOverlayOpacity = 1,
        ).thenAnswer((_) => 1);
        cubit.setOpacity(1);
        verify(() => mockPref.refImageOverlayOpacity = 1).called(1);
      },
      expect: () => [
        const RefImageOptionsState.opacityChanged(
          RefImageOptions(opacity: 1),
        )
      ],
    );

    blocTest(
      'Change opacity without saving in settings',
      build: () => cubit,
      act: (RefImageOptionsCubit cubit) {
        cubit.setOpacity(1, saveInSettings: false);
        verifyNever(() => mockPref.refImageOverlayOpacity = 1);
      },
      expect: () => [
        const RefImageOptionsState.opacityChanged(
          RefImageOptions(opacity: 1),
        )
      ],
    );
  });
}
