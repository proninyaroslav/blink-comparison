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

import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/ui/cubit/system_picker_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;

import '../../mock/mock.dart';

void main() {
  group('SystemPickerCubit |', () {
    late final ImagePicker mockImagePicker;
    late final PlatformInfo mockPlatform;
    late SystemPickerCubit cubit;

    setUpAll(() {
      mockImagePicker = MockImagePicker();
      mockPlatform = MockPlatformInfo();
      when(() => mockPlatform.isAndroid).thenReturn(false);
    });

    setUp(() {
      cubit = SystemPickerCubit(
        mockImagePicker,
        mockPlatform,
      );
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Pick image from gallery',
      build: () => cubit,
      act: (SystemPickerCubit cubit) async {
        final files = [
          XFile(path.join('foo', 'bar1')),
          XFile(path.join('foo', 'bar2')),
        ];
        when(
          () => mockImagePicker.pickMultiImage(),
        ).thenAnswer((_) async => files);
        await cubit.pickImages(ImageSource.gallery);
      },
      expect: () => [
        const SystemPickerState.selectingImages(),
        isA<SystemPickerStateImagesSelected>(),
      ],
    );

    blocTest(
      'Pick image from camera',
      build: () => cubit,
      act: (SystemPickerCubit cubit) async {
        final file = XFile(path.join('foo', 'bar'));
        when(
          () => mockImagePicker.pickImage(source: ImageSource.camera),
        ).thenAnswer(
          (_) async => file,
        );
        await cubit.pickImages(ImageSource.camera);
      },
      expect: () => [
        const SystemPickerState.selectingImages(),
        isA<SystemPickerStateImagesSelected>(),
      ],
    );

    blocTest(
      'Image not selected',
      build: () => cubit,
      act: (SystemPickerCubit cubit) async {
        when(
          () => mockImagePicker.pickMultiImage(),
        ).thenAnswer(
          (_) async => [],
        );
        await cubit.pickImages(ImageSource.gallery);
      },
      expect: () => [
        const SystemPickerState.selectingImages(),
        const SystemPickerState.imagesNotSelected(),
      ],
    );

    blocTest(
      'Selecting image failed',
      build: () => cubit,
      act: (SystemPickerCubit cubit) async {
        when(
          () => mockImagePicker.pickMultiImage(),
        ).thenAnswer((_) {
          throw PlatformException(code: '1', message: 'test');
        });
        await cubit.pickImages(ImageSource.gallery);
      },
      expect: () => [
        const SystemPickerState.selectingImages(),
        isA<SystemPickerStateSelectImagesFailed>(),
      ],
    );
  });
}
