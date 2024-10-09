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

import 'dart:async';
import 'dart:typed_data';

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/service/generate_thumbnail_job.dart';
import 'package:blink_comparison/core/service/save_ref_image_job.dart';
import 'package:blink_comparison/core/service/save_ref_image_service.dart';
import 'package:blink_comparison/core/service/save_thumbnail_job.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/platform/save_ref_image_native_service.dart';
import 'package:cross_file/cross_file.dart';
import 'package:file/file.dart';
import 'package:file/memory.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Save reference image service |', () {
    late SaveRefImageJob mockSaveJob;
    late GenerateThumbnailJob mockGenerateThumbnailJob;
    late SaveThumbnailJob mockSaveThumbnailJob;
    late SaveRefImageServiceController mockServiceController;
    late SaveRefImageJobController mockJobController;
    late AuthFactorRepository mockAppSecureKeyRepository;
    late AuthFactor mockKeyImmutable;
    late MutableAuthFactor mockKey;
    late final FileSystem fs;
    late final File srcFile;
    late SaveRefImageService service;

    setUpAll(() async {
      fs = MemoryFileSystem.test();
      final tmp = await fs.systemTempDirectory.createTemp('tmp');
      srcFile = tmp.childFile('srcFile');
      registerFallbackValue(XFile(''));
    });

    setUp(() async {
      mockSaveJob = MockSaveRefImageJob();
      mockServiceController = MockSaveRefImageServiceController();
      mockJobController = MockSaveRefImageJobController();
      mockGenerateThumbnailJob = MockGenerateThumbnailJob();
      mockSaveThumbnailJob = MockSaveThumbnailJob();
      mockAppSecureKeyRepository = MockAppSecureKeyRepository();
      mockKeyImmutable = MockAuthFactorPassword();
      mockKey = MockMutableAuthFactorPassword();

      when(() => mockKey.dispose()).thenAnswer((_) {});
      when(() => mockKey.toImmutable()).thenReturn(mockKeyImmutable);
      when(() => mockKeyImmutable.copy()).thenReturn(mockKey);
      when(() => mockAppSecureKeyRepository.get()).thenReturn(mockKeyImmutable);
      when(() => mockAppSecureKeyRepository.hasSecureKey()).thenReturn(true);
      await srcFile.create();

      service = SaveRefImageServiceImpl(
        mockSaveJob,
        fs,
        mockServiceController,
        mockJobController,
        mockGenerateThumbnailJob,
        mockSaveThumbnailJob,
        mockAppSecureKeyRepository,
      );
    });

    test('Save', () async {
      final request = ServiceRequest(
        info: RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
        srcFile: XFile(srcFile.path),
        removeSourceFile: false,
      );
      when(
        () => mockJobController.pushQueue(request, factor: mockKey),
      ).thenAnswer((_) async => {});

      await service.save(
        info: request.info,
        srcImage: request.srcFile,
      );
      verify(() => mockJobController.pushQueue(request, factor: mockKey))
          .called(1);
      verify(() => mockKey.dispose()).called(1);
    });

    test('Save without auth factor', () async {
      final request = ServiceRequest(
        info: RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.none(),
        ),
        srcFile: XFile(srcFile.path),
        removeSourceFile: false,
      );
      when(() => mockAppSecureKeyRepository.get()).thenReturn(null);
      when(
        () => mockJobController.pushQueue(request, factor: null),
      ).thenAnswer((_) async => {});

      await service.save(
        info: request.info,
        srcImage: request.srcFile,
      );
      verify(() => mockJobController.pushQueue(request, factor: null))
          .called(1);
      verifyNever(() => mockKey.dispose());
    });

    test('Get current status', () async {
      final infoList = [
        RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
        RefImageInfo(
          id: '2',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
        RefImageInfo(
          id: '3',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
      ];
      final expectedStatusList = infoList.map(
        (info) => SaveRefImageStatus.inProgress(imageId: info.id),
      );
      when(
        () => mockServiceController.getAllInProgress(),
      ).thenAnswer((_) async => infoList);

      expect(await service.getAllStatus(), expectedStatusList);
    });

    test('Observe status', () async {
      final infoList = [
        RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
        RefImageInfo(
          id: '2',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
        RefImageInfo(
          id: '3',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
      ];
      final inProgress = infoList
          .map(
            (info) => SaveRefImageStatus.inProgress(imageId: info.id),
          )
          .toList();
      final controller = StreamController<ServiceResult>();
      controller.add(
        ServiceResult.fail(
          request: ServiceRequest(
            info: infoList[0],
            srcFile: XFile(srcFile.path),
            removeSourceFile: false,
          ),
          error: ServiceError.saveImage(
            SaveRefImageError.fs(
              path: srcFile.path,
              error: const FsError.io(),
            ),
          ),
        ),
      );

      for (final info in infoList.sublist(1)) {
        controller.add(
          ServiceResult.success(
            request: ServiceRequest(
              info: info,
              srcFile: XFile(srcFile.path),
              removeSourceFile: false,
            ),
          ),
        );
      }
      when(
        () => mockJobController.observeResult(),
      ).thenAnswer((_) => controller.stream);
      when(
        () => mockServiceController.getAllInProgress(),
      ).thenAnswer((_) async => infoList);

      expect(
        await service.observeAllStatus().take(4).toList(),
        [
          inProgress,
          [
            ...inProgress,
            SaveRefImageStatus.completed(
              imageId: infoList[0].id,
              error: SaveRefImageStatusError.saveImage(
                SaveRefImageError.fs(
                  path: srcFile.path,
                  error: const FsError.io(),
                ),
              ),
            ),
          ],
          [
            ...inProgress,
            SaveRefImageStatus.completed(imageId: infoList[1].id),
          ],
          [
            ...inProgress,
            SaveRefImageStatus.completed(imageId: infoList[2].id),
          ],
        ],
      );
      controller.close();
    });

    test('Observe status by id', () async {
      final infoList = [
        RefImageInfo(
          id: '1',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
        RefImageInfo(
          id: '2',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
        RefImageInfo(
          id: '3',
          dateAdded: DateTime(2021),
          encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
        ),
      ];
      final inProgress = infoList
          .map(
            (info) => SaveRefImageStatus.inProgress(imageId: info.id),
          )
          .toList();
      final controller = StreamController<ServiceResult>();
      controller.add(
        ServiceResult.fail(
          request: ServiceRequest(
            info: infoList[0],
            srcFile: XFile(srcFile.path),
            removeSourceFile: false,
          ),
          error: ServiceError.saveImage(
            SaveRefImageError.fs(
              path: srcFile.path,
              error: const FsError.io(),
            ),
          ),
        ),
      );

      for (final info in infoList.sublist(1)) {
        controller.add(
          ServiceResult.success(
            request: ServiceRequest(
              info: info,
              srcFile: XFile(srcFile.path),
              removeSourceFile: false,
            ),
          ),
        );
      }
      when(
        () => mockJobController.observeResult(),
      ).thenAnswer((_) => controller.stream);
      when(
        () => mockServiceController.getAllInProgress(),
      ).thenAnswer((_) async => infoList);

      expect(
        await service.observeStatusById('1').take(2).toList(),
        [
          inProgress.first,
          SaveRefImageStatus.completed(
            imageId: infoList[0].id,
            error: SaveRefImageStatusError.saveImage(
              SaveRefImageError.fs(
                path: srcFile.path,
                error: const FsError.io(),
              ),
            ),
          ),
        ],
      );
      controller.close();
    });

    group('Job |', () {
      test('Run job', () async {
        final items = [
          ServiceQueueItem(
            request: ServiceRequest(
              info: RefImageInfo(
                id: '1',
                dateAdded: DateTime(2021),
                encryption:
                    const RefImageEncryption.password(encryptSalt: 'salt'),
              ),
              srcFile: XFile(srcFile.path),
              removeSourceFile: false,
            ),
            factor: mockKey,
          ),
          ServiceQueueItem(
            request: ServiceRequest(
              info: RefImageInfo(
                id: '2',
                dateAdded: DateTime(2021),
                encryption:
                    const RefImageEncryption.password(encryptSalt: 'salt'),
              ),
              srcFile: XFile(srcFile.path),
              removeSourceFile: false,
            ),
            factor: mockKey,
          ),
          ServiceQueueItem(
            request: ServiceRequest(
              info: RefImageInfo(
                id: '3',
                dateAdded: DateTime(2021),
                encryption:
                    const RefImageEncryption.password(encryptSalt: 'salt'),
              ),
              srcFile: XFile(srcFile.path),
              removeSourceFile: true,
            ),
            factor: mockKey,
          ),
        ];
        final thumbnail = Uint8List.fromList([1, 2, 3]);
        when(
          () => mockServiceController.observeQueue(),
        ).thenAnswer((_) => Stream.fromIterable(items));
        for (final ServiceQueueItem(:request) in items) {
          when(
            () => mockSaveJob.run(
              info: request.info,
              file: request.srcFile,
              factor: mockKeyImmutable,
            ),
          ).thenAnswer((_) async => const SaveRefImageResult.success());
          when(
            () => mockGenerateThumbnailJob.run(request.srcFile),
          ).thenAnswer(
            (_) async => GenerateThumbnailResult.success(thumbnail: thumbnail),
          );
          when(
            () => mockSaveThumbnailJob.run(
              info: request.info,
              thumbnail: thumbnail,
            ),
          ).thenAnswer(
            (_) async => const SaveThumbnailResult.success(),
          );
          when(
            () => mockServiceController.sendResult(
              ServiceResult.success(request: request),
            ),
          ).thenAnswer((_) async => {});
        }
        when(
          () => mockServiceController.stopService(),
        ).thenAnswer((_) async => {});

        await (service as SaveRefImageServiceImpl).runJob();
        for (final ServiceQueueItem(:request) in items) {
          verify(
            () => mockServiceController.sendResult(
              ServiceResult.success(request: request),
            ),
          ).called(1);
        }
        verify(() => mockKey.dispose()).called(items.length);
        expect(fs.file(srcFile.path).existsSync(), false);
      });

      test('Save image error', () async {
        final request = ServiceRequest(
          info: RefImageInfo(
            id: '1',
            dateAdded: DateTime(2021),
            encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
          ),
          srcFile: XFile(srcFile.path),
          removeSourceFile: false,
        );
        final item = ServiceQueueItem(
          request: request,
          factor: mockKey,
        );
        final expectedResult = ServiceResult.fail(
          request: request,
          error: ServiceError.saveImage(
            SaveRefImageError.fs(
              path: srcFile.path,
              error: const FsError.io(),
            ),
          ),
        );
        when(
          () => mockServiceController.observeQueue(),
        ).thenAnswer((_) => Stream.value(item));
        when(
          () => mockSaveJob.run(
            info: request.info,
            file: request.srcFile,
            factor: mockKeyImmutable,
          ),
        ).thenAnswer(
          (_) async => SaveRefImageResult.error(
            SaveRefImageError.fs(
              path: srcFile.path,
              error: const FsError.io(),
            ),
          ),
        );
        when(
          () => mockServiceController.sendResult(expectedResult),
        ).thenAnswer((_) async => {});
        when(
          () => mockServiceController.stopService(),
        ).thenAnswer((_) async => {});

        await (service as SaveRefImageServiceImpl).runJob();
        verify(
          () => mockServiceController.sendResult(expectedResult),
        ).called(1);
        verify(() => mockKey.dispose()).called(1);
      });

      test('Generate thumbnail error', () async {
        final request = ServiceRequest(
          info: RefImageInfo(
            id: '1',
            dateAdded: DateTime(2021),
            encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
          ),
          srcFile: XFile(srcFile.path),
          removeSourceFile: false,
        );
        final item = ServiceQueueItem(
          request: request,
          factor: mockKey,
        );
        final expectedResult = ServiceResult.fail(
          request: request,
          error: const ServiceError.generateThumbnail(
            GenerateThumbnailError.fs(FsError.io()),
          ),
        );
        when(
          () => mockServiceController.observeQueue(),
        ).thenAnswer((_) => Stream.value(item));
        when(
          () => mockSaveJob.run(
            info: request.info,
            file: request.srcFile,
            factor: mockKeyImmutable,
          ),
        ).thenAnswer((_) async => const SaveRefImageResult.success());
        when(
          () => mockGenerateThumbnailJob.run(request.srcFile),
        ).thenAnswer(
          (_) async => const GenerateThumbnailResult.fail(
            GenerateThumbnailError.fs(
              FsError.io(),
            ),
          ),
        );
        when(
          () => mockServiceController.sendResult(expectedResult),
        ).thenAnswer((_) async => {});
        when(
          () => mockServiceController.stopService(),
        ).thenAnswer((_) async => {});

        await (service as SaveRefImageServiceImpl).runJob();
        verify(
          () => mockServiceController.sendResult(expectedResult),
        ).called(1);
        verify(() => mockKey.dispose()).called(1);
      });

      test('Save thumbnail error', () async {
        final request = ServiceRequest(
          info: RefImageInfo(
            id: '1',
            dateAdded: DateTime(2021),
            encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
          ),
          srcFile: XFile(srcFile.path),
          removeSourceFile: false,
        );
        final item = ServiceQueueItem(
          request: request,
          factor: mockKey,
        );
        final expectedResult = ServiceResult.fail(
          request: request,
          error: const ServiceError.saveThumbnail(
            SaveThumbnailError.fs(FsError.io()),
          ),
        );
        final thumbnail = Uint8List.fromList([1, 2, 3]);
        when(
          () => mockServiceController.observeQueue(),
        ).thenAnswer((_) => Stream.value(item));
        when(
          () => mockSaveJob.run(
            info: request.info,
            file: request.srcFile,
            factor: mockKeyImmutable,
          ),
        ).thenAnswer((_) async => const SaveRefImageResult.success());
        when(
          () => mockGenerateThumbnailJob.run(request.srcFile),
        ).thenAnswer(
          (_) async => GenerateThumbnailResult.success(thumbnail: thumbnail),
        );
        when(
          () => mockSaveThumbnailJob.run(
            info: request.info,
            thumbnail: thumbnail,
          ),
        ).thenAnswer(
          (_) async => const SaveThumbnailResult.fail(
            SaveThumbnailError.fs(FsError.io()),
          ),
        );
        when(
          () => mockServiceController.sendResult(expectedResult),
        ).thenAnswer((_) async => {});
        when(
          () => mockServiceController.stopService(),
        ).thenAnswer((_) async => {});

        await (service as SaveRefImageServiceImpl).runJob();
        verify(
          () => mockServiceController.sendResult(expectedResult),
        ).called(1);
        verify(() => mockKey.dispose()).called(1);
      });

      test('Timeout', () async {
        when(
          () => mockServiceController.observeQueue(),
        ).thenAnswer((_) => const Stream.empty());
        when(
          () => mockServiceController.stopService(),
        ).thenAnswer((_) async => {});

        final startTime = DateTime.now().toUtc();
        await (service as SaveRefImageServiceImpl).runJob();
        final stopTime = DateTime.now().toUtc();

        expect(
          stopTime.difference(startTime),
          greaterThanOrEqualTo(const Duration(seconds: 1)),
        );
      });
    });

    group('Service controller', () {
      late SaveRefImageNativeService mockNativeService;
      late SaveRefImageServiceController serviceController;

      setUp(() {
        mockNativeService = MockSaveRefImageNativeService();
        serviceController = SaveRefImageServiceController(mockNativeService);
      });

      test('Send result', () async {
        final result = ServiceResult.success(
          request: ServiceRequest(
            info: RefImageInfo(
              id: '1',
              dateAdded: DateTime(2021),
              encryption:
                  const RefImageEncryption.password(encryptSalt: 'salt'),
            ),
            srcFile: XFile(srcFile.path),
            removeSourceFile: false,
          ),
        );
        when(
          () => mockNativeService.sendResult(result),
        ).thenAnswer((_) async => {});

        await serviceController.sendResult(result);
        verify(
          () => mockNativeService.sendResult(result),
        ).called(1);
      });

      test('Stop service', () async {
        when(
          () => mockNativeService.stop(),
        ).thenAnswer((_) async => {});

        await serviceController.stopService();
        verify(() => mockNativeService.stop()).called(1);
      });

      test('Get all in progress', () async {
        final request = ServiceRequest(
          info: RefImageInfo(
            id: '1',
            dateAdded: DateTime(2021),
            encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
          ),
          srcFile: XFile(srcFile.path),
          removeSourceFile: false,
        );
        when(
          () => mockNativeService.getAllInProgress(),
        ).thenAnswer((_) async => [request]);

        expect(await serviceController.getAllInProgress(), [request.info]);
      });

      test('Observe queue', () async {
        when(
          () => mockNativeService.observeQueue(),
        ).thenAnswer((_) => const Stream.empty());

        await for (final _ in serviceController.observeQueue()) {}
        verify(
          () => mockNativeService.observeQueue(),
        ).called(1);
      });
    });

    group('Job controller', () {
      late SaveRefImageNativeService mockNativeService;
      late SaveRefImageJobController jobController;

      setUp(() {
        mockNativeService = MockSaveRefImageNativeService();
        jobController = SaveRefImageJobController(mockNativeService);
      });

      test('Push queue', () async {
        final request = ServiceRequest(
          info: RefImageInfo(
            id: '1',
            dateAdded: DateTime(2021),
            encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
          ),
          srcFile: XFile(srcFile.path),
          removeSourceFile: false,
        );
        when(
          () => mockNativeService.pushQueue(request, factor: mockKey),
        ).thenAnswer((_) async => {});
        when(
          () => mockNativeService.isRunning(),
        ).thenAnswer((_) async => true);

        await jobController.pushQueue(request, factor: mockKey);
        verify(
          () => mockNativeService.pushQueue(request, factor: mockKey),
        ).called(1);
      });

      test('Push queue and start service', () async {
        final request = ServiceRequest(
          info: RefImageInfo(
            id: '1',
            dateAdded: DateTime(2021),
            encryption: const RefImageEncryption.password(encryptSalt: 'salt'),
          ),
          srcFile: XFile(srcFile.path),
          removeSourceFile: false,
        );
        when(
          () => mockNativeService.pushQueue(request, factor: mockKey),
        ).thenAnswer((_) async => {});
        when(
          () => mockNativeService.isRunning(),
        ).thenAnswer((_) async => false);
        when(
          () => mockNativeService.start(callbackDispatcher: callbackDispatcher),
        ).thenAnswer((_) async => {});

        await jobController.pushQueue(request, factor: mockKey);
        verify(
          () => mockNativeService.pushQueue(request, factor: mockKey),
        ).called(1);
        verify(
          () => mockNativeService.start(callbackDispatcher: callbackDispatcher),
        ).called(1);
      });

      test('Observe result', () async {
        when(
          () => mockNativeService.observeResult(),
        ).thenAnswer((_) => const Stream.empty());

        await for (final _ in jobController.observeResult()) {}
        verify(
          () => mockNativeService.observeResult(),
        ).called(1);
      });
    });
  });
}
