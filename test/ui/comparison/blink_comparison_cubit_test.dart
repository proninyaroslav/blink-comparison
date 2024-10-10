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

import 'package:blink_comparison/ui/comparison/model/blink_comparison_cubit.dart';
import 'package:blink_comparison/ui/comparison/model/blink_comparison_state.dart';
import 'package:blink_comparison/ui/model/xfile_image.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:cross_file/cross_file.dart';
import 'package:file/file.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('BlinkComparisonCubit |', () {
    late BlinkComparisonCubit cubit;
    late final FileSystem mockFs;
    late final ImageProvider mockRefImage;
    late final ImageProvider mockRefImage2;
    late final XFileImage mockImage;
    late final XFileImage mockImage2;
    late final XFile mockImageXFile;
    late final File mockImageFile;
    late final FileSystemEntity mockFileEntity;

    setUpAll(() {
      mockFs = MockFileSystem();
      mockImageXFile = MockXFile();
      mockImageFile = MockFile();
      mockFileEntity = MockFileSystemEntity();
      mockImage = MockXFileImage();
      mockImage2 = MockXFileImage();
      mockRefImage = MockImageProvider();
      mockRefImage2 = MockImageProvider();

      when(() => mockImageXFile.path).thenReturn('/');
      when(() => mockImage.file).thenReturn(mockImageXFile);
      when(() => mockImage2.file).thenReturn(mockImageXFile);
      when(() => mockImage.evict()).thenAnswer((_) async => true);
      when(() => mockImage2.evict()).thenAnswer((_) async => true);
      when(() => mockRefImage.evict()).thenAnswer((_) async => true);
      when(() => mockRefImage2.evict()).thenAnswer((_) async => true);
      when(() => mockFs.file('/')).thenReturn(mockImageFile);
      when(() => mockImageFile.delete())
          .thenAnswer((_) async => mockFileEntity);
    });

    setUp(() {
      cubit = BlinkComparisonCubit(mockFs);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Load',
      build: () => cubit,
      act: (BlinkComparisonCubit cubit) async {
        await cubit.load(refImage: mockRefImage, takenPhoto: mockImage);
        await cubit.load(refImage: mockRefImage2, takenPhoto: mockImage2);
        verify(() => mockImage.evict()).called(1);
        verify(() => mockRefImage.evict()).called(1);
        verify(() => mockImageFile.delete()).called(1);
      },
      expect: () => [
        BlinkComparisonState.loaded(
          refImage: mockRefImage,
          takenPhoto: mockImage,
        ),
        BlinkComparisonState.loaded(
          refImage: mockRefImage2,
          takenPhoto: mockImage2,
        ),
      ],
    );

    blocTest(
      'Switch',
      build: () => cubit,
      act: (BlinkComparisonCubit cubit) async {
        await cubit.load(refImage: mockRefImage, takenPhoto: mockImage);
        cubit.switchImage();
        cubit.switchImage();
      },
      expect: () => [
        BlinkComparisonState.loaded(
          refImage: mockRefImage,
          takenPhoto: mockImage,
        ),
        BlinkComparisonState.showTakenPhoto(
          refImage: mockRefImage,
          takenPhoto: mockImage,
        ),
        BlinkComparisonState.showRefImage(
          refImage: mockRefImage,
          takenPhoto: mockImage,
        ),
      ],
    );
  });
}
