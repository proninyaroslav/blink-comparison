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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/fs/thumbnail_fs.dart';
import 'package:blink_comparison/core/service/save_thumbnail_job.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Save thumbnail job |', () {
    late ThumbnailFS mockThumbnailFs;
    late SaveThumbnailJob job;

    setUp(() {
      mockThumbnailFs = MockThumbnailFS();
      job = SaveThumbnailJobImpl(mockThumbnailFs);
    });

    test('Success', () async {
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );
      final expectedBytes = Uint8List.fromList([1, 2, 3]);
      when(
        () => mockThumbnailFs.save(info, expectedBytes),
      ).thenAnswer((_) async => FsResult.empty);

      expect(
        await job.run(info: info, thumbnail: expectedBytes),
        const SaveThumbnailResult.success(),
      );
      verify(
        () => mockThumbnailFs.save(info, expectedBytes),
      ).called(1);
    });

    test('Failed', () async {
      final info = RefImageInfo(
        id: '1',
        dateAdded: DateTime(2021),
        encryptSalt: 'salt',
      );
      final expectedBytes = Uint8List.fromList([1, 2, 3]);
      when(
        () => mockThumbnailFs.save(info, expectedBytes),
      ).thenAnswer((_) async => const FsResult.error(FsError.io()));

      expect(
        await job.run(info: info, thumbnail: expectedBytes),
        const SaveThumbnailResult.fail(
          SaveThumbnailError.fs(FsError.io()),
        ),
      );
    });
  });
}
