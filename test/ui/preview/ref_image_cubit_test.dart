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

import 'dart:typed_data';

import 'package:blink_comparison/core/encrypt/encrypt_module.dart';
import 'package:blink_comparison/core/entity/ref_image.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/preview/model/ref_image_cubit.dart';
import 'package:blink_comparison/ui/preview/model/ref_image_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('RefImageCubit |', () {
    late RefImageRepository mockImageRepo;
    late RefImageCubit cubit;
    final bytes = Uint8List.fromList([1, 2, 3]);

    setUpAll(() {
      mockImageRepo = MockRefImageRepository();
    });

    setUp(() {
      cubit = RefImageCubit(mockImageRepo);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Load',
      build: () => cubit,
      act: (RefImageCubit cubit) async {
        final info = RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryptSalt: 'salt',
        );
        final image = RefImage(
          info: info,
          bytes: bytes,
        );
        when(
          () => mockImageRepo.getInfoById(info.id),
        ).thenAnswer((_) async => StorageResult(info));
        when(() => mockImageRepo.getImage(info)).thenAnswer(
          (_) async => SecStorageResult(image),
        );
        await cubit.load(info.id);
      },
      expect: () => [
        const RefImageState.loading(),
        RefImageState.loaded(
          RefImage(
            info: RefImageInfo(
              id: '1',
              dateAdded: DateTime(2021),
              encryptSalt: 'salt',
            ),
            bytes: bytes,
          ),
        ),
      ],
    );

    blocTest(
      'Database error',
      build: () => cubit,
      act: (RefImageCubit cubit) async {
        final info = RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryptSalt: 'salt',
        );
        when(
          () => mockImageRepo.getInfoById(info.id),
        ).thenAnswer(
          (_) async => const StorageResult.error(
            StorageError.database(),
          ),
        );
        await cubit.load(info.id);
      },
      expect: () => [
        const RefImageState.loading(),
        const RefImageState.loadFailed(
          LoadRefImageError.database(),
        ),
      ],
    );

    blocTest(
      'Secure storage error',
      build: () => cubit,
      act: (RefImageCubit cubit) async {
        final info = RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryptSalt: 'salt',
        );
        when(
          () => mockImageRepo.getInfoById(info.id),
        ).thenAnswer((_) async => StorageResult(info));
        when(
          () => mockImageRepo.getImage(info),
        ).thenAnswer(
          (_) async => const SecStorageResult.error(
            SecStorageError.decrypt(
              error: DecryptError(),
            ),
          ),
        );
        await cubit.load(info.id);
      },
      expect: () => [
        const RefImageState.loading(),
        const RefImageState.loadFailed(
          LoadRefImageError.decrypt(DecryptError()),
        ),
      ],
    );

    blocTest(
      'Image not found',
      build: () => cubit,
      act: (RefImageCubit cubit) async {
        final info = RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryptSalt: 'salt',
        );
        when(
          () => mockImageRepo.getInfoById(info.id),
        ).thenAnswer(
          (_) async => const StorageResult<RefImageInfo?>(null),
        );
        await cubit.load(info.id);
      },
      expect: () => [
        const RefImageState.loading(),
        const RefImageState.loadFailed(
          LoadRefImageError.notFound(),
        ),
      ],
    );
  });
}
