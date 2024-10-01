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

import 'package:blink_comparison/ui/camera_picker/model/camera_picker_cubit.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_picker_state.dart';
import 'package:blink_comparison/ui/model/xfile_image.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:camera/camera.dart';
import 'package:file/file.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('CameraPickerCubit |', () {
    late final FileSystem mockFs;
    late CameraPickerCubit cubit;
    late final XFileImage mockImage;
    late final XFile mockImageXFile;
    late final File mockImageFile;
    late final FileSystemEntity mockFileEntity;

    setUpAll(() {
      mockFs = MockFileSystem();
      mockImageXFile = MockXFile();
      mockImageFile = MockFile();
      mockFileEntity = MockFileSystemEntity();
      mockImage = MockXFileImage();

      when(() => mockImageXFile.path).thenReturn('/');
      when(() => mockImage.file).thenReturn(mockImageXFile);
    });

    setUp(() {
      cubit = CameraPickerCubit(mockFs);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Load',
      build: () => cubit,
      act: (CameraPickerCubit cubit) {
        cubit.load(mockImage);
      },
      expect: () => [
        CameraPickerState.loaded(image: mockImage),
      ],
    );

    blocTest(
      'Accept',
      build: () => cubit,
      act: (CameraPickerCubit cubit) async {
        cubit.load(mockImage);
        when(() => mockImage.evict()).thenAnswer((_) async => true);

        await cubit.accept();
        verify(() => mockImage.evict()).called(1);
      },
      expect: () => [
        CameraPickerState.loaded(image: mockImage),
        CameraPickerState.accepted(image: mockImage),
      ],
    );

    blocTest(
      'Reject',
      build: () => cubit,
      act: (CameraPickerCubit cubit) async {
        cubit.load(mockImage);
        when(() => mockImage.evict()).thenAnswer((_) async => true);
        when(() => mockFs.file('/')).thenReturn(mockImageFile);
        when(() => mockImageFile.delete())
            .thenAnswer((_) async => mockFileEntity);

        await cubit.reject();
        verify(() => mockImageFile.delete()).called(1);
        verify(() => mockImage.evict()).called(1);
      },
      expect: () => [
        CameraPickerState.loaded(image: mockImage),
        CameraPickerState.rejected(image: mockImage),
      ],
    );
  });
}
