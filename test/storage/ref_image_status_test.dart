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
import 'package:blink_comparison/core/service/save_ref_image_service.dart';
import 'package:blink_comparison/core/storage/ref_image_status_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Reference image status |', () {
    late SaveRefImageService mockService;
    late RefImageStatusRepository repo;

    setUp(() async {
      mockService = MockSaveRefImageService();
      repo = RefImageStatusRepositoryImpl(mockService);
    });

    test('Get all save status', () async {
      final expectedStatusList = [
        const SaveRefImageStatus.inProgress(imageId: '1'),
        const SaveRefImageStatus.completed(imageId: '2'),
      ];
      when(
        () => mockService.getAllStatus(),
      ).thenAnswer((_) async => expectedStatusList);
      expect(await repo.getAllSaveStatus(), expectedStatusList);
    });

    test('Observe all save status', () async {
      final expectedStatusList = [
        const SaveRefImageStatus.inProgress(imageId: '1'),
        const SaveRefImageStatus.completed(imageId: '2'),
      ];
      when(
        () => mockService.observeAllStatus(),
      ).thenAnswer((_) => Stream.value(expectedStatusList));
      expect(await repo.observeAllSaveStatus().first, expectedStatusList);
    });

    test('Get save status by id', () async {
      const expectedStatus = SaveRefImageStatus.completed(imageId: '1');
      when(
        () => mockService.getCurrentStatusById('1'),
      ).thenAnswer((_) async => expectedStatus);
      expect(await repo.getSaveStatusById('1'), expectedStatus);
    });

    test('Observe save status by id', () async {
      const expectedStatus = SaveRefImageStatus.completed(imageId: '1');
      when(
        () => mockService.observeStatusById('1'),
      ).thenAnswer((_) => Stream.value(expectedStatus));
      expect(await repo.observeSaveStatusById('1').first, expectedStatus);
    });
  });
}
