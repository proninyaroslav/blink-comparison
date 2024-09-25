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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/home/model/ref_images_actions_cubit.dart';
import 'package:blink_comparison/ui/home/model/ref_images_actions_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('RefImagesActionsCubit |', () {
    late final RefImageRepository mockImageRepo;
    late RefImagesActionsCubit cubit;

    setUpAll(() {
      mockImageRepo = MockRefImageRepository();
    });

    setUp(() {
      cubit = RefImagesActionsCubit(mockImageRepo);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Delete',
      build: () => cubit,
      act: (RefImagesActionsCubit cubit) async {
        final infoList = [
          RefImageInfo(
              id: '1',
              dateAdded: DateTime(2021),
              encryption: const RefImageEncryption.none()),
          RefImageInfo(
              id: '2',
              dateAdded: DateTime(2021),
              encryption: const RefImageEncryption.none()),
          RefImageInfo(
              id: '3',
              dateAdded: DateTime(2021),
              encryption: const RefImageEncryption.none()),
        ];
        when(
          () => mockImageRepo.deleteList(infoList),
        ).thenAnswer(
          (_) async => {
            infoList[0]: SecStorageResult.empty,
            infoList[1]: const SecStorageResult.error(
              SecStorageError.fs(
                error: FsError.io(),
              ),
            ),
            infoList[2]: SecStorageResult.empty,
          },
        );
        await cubit.delete(infoList);
      },
      expect: () => [
        const RefImagesActionsState.deleting(),
        RefImagesActionsState.deleted(
          count: 3,
          errors: {
            RefImageInfo(
              id: '2',
              dateAdded: DateTime(2021),
              encryption: const RefImageEncryption.none(),
            ): const SecStorageError.fs(
              error: FsError.io(),
            ),
          },
        ),
      ],
    );
  });
}
