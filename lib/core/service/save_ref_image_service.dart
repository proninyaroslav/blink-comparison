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

import 'package:blink_comparison/core/crash_catcher/handler/notification_crash_handler.dart';
import 'package:blink_comparison/core/service/generate_thumbnail_job.dart';
import 'package:blink_comparison/core/service/save_ref_image_job.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/ref_image_status_repository.dart';
import 'package:blink_comparison/platform/save_ref_image_native_service.dart';
import 'package:collection/collection.dart';
import 'package:cross_file/cross_file.dart';
import 'package:file/file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../env.dart';
import '../../injector.dart';
import '../../logger.dart';
import '../crash_catcher/crash_catcher.dart';
import '../crash_catcher/hook/flutter_crash_hook.dart';
import '../entity/entity.dart';
import '../notification_manager.dart';
import 'save_thumbnail_job.dart';

part 'save_ref_image_service.freezed.dart';
part 'save_ref_image_service.g.dart';

abstract class SaveRefImageService {
  Future<void> save({
    required RefImageInfo info,
    required XFile srcImage,
    bool removeSourceFile = false,
  });

  Future<SaveRefImageStatus?> getCurrentStatusById(String imageId);

  Stream<SaveRefImageStatus?> observeStatusById(String imageId);

  Future<List<SaveRefImageStatus>> getAllStatus();

  Stream<List<SaveRefImageStatus>> observeAllStatus();
}

// TODO: Desktop/iOS support
@Singleton(as: SaveRefImageService)
class SaveRefImageServiceImpl implements SaveRefImageService {
  static const _idleTimeout = Duration(seconds: 1);

  final SaveRefImageJob _saveJob;
  final GenerateThumbnailJob _generateThumbnailJob;
  final SaveThumbnailJob _saveThumbnailJob;
  final FileSystem _fs;
  final SaveRefImageServiceController _serviceController;
  final SaveRefImageJobController _jobController;
  final AuthFactorRepository _factorRepo;

  SaveRefImageServiceImpl(
    this._saveJob,
    this._fs,
    this._serviceController,
    this._jobController,
    this._generateThumbnailJob,
    this._saveThumbnailJob,
    this._factorRepo,
  );

  @override
  Future<void> save({
    required RefImageInfo info,
    required XFile srcImage,
    bool removeSourceFile = false,
  }) async {
    final mutableFactor = _factorRepo.get()?.copy();
    try {
      final saveInfo = ServiceRequest(
        info: info,
        srcFile: srcImage,
        removeSourceFile: removeSourceFile,
      );
      await _jobController.pushQueue(saveInfo, factor: mutableFactor);
    } finally {
      try {
        mutableFactor?.dispose();
      } catch (e, stackTrace) {
        log().e('Unable to clear key', error: e, stackTrace: stackTrace);
      }
    }
  }

  @override
  Future<SaveRefImageStatus?> getCurrentStatusById(String imageId) async {
    final list = await _serviceController.getAllInProgress();
    final info = list.firstWhereOrNull((info) => info.id == imageId);
    return info == null
        ? null
        : SaveRefImageStatus.inProgress(imageId: info.id);
  }

  @override
  Stream<SaveRefImageStatus?> observeStatusById(String imageId) async* {
    yield await getCurrentStatusById(imageId);
    yield* _jobController
        .observeResult()
        .where((result) => result.request.info.id == imageId)
        .asyncMap((result) async {
          final status = switch (result) {
            ServiceResultSuccess(:final request) =>
              SaveRefImageStatus.completed(imageId: request.info.id),
            ServiceResultFail(:final request, :final error) =>
              SaveRefImageStatus.completed(
                imageId: request.info.id,
                error: switch (error) {
                  ServiceErrorSaveImage(:final error) =>
                    SaveRefImageStatusError.saveImage(error),
                  ServiceErrorGenerateThumbnail(:final error) =>
                    SaveRefImageStatusError.generateThumbnail(error),
                  ServiceErrorSaveThumbnail(:final error) =>
                    SaveRefImageStatusError.saveThumbnail(error),
                },
              ),
          };
          return status;
        });
  }

  @override
  Future<List<SaveRefImageStatus>> getAllStatus() {
    return _serviceController.getAllInProgress().then(
      (list) => list
          .map((info) => SaveRefImageStatus.inProgress(imageId: info.id))
          .toList(),
    );
  }

  @override
  Stream<List<SaveRefImageStatus>> observeAllStatus() async* {
    yield await getAllStatus();
    yield* _jobController.observeResult().asyncMap((result) async {
      final list = await getAllStatus();
      final status = switch (result) {
        ServiceResultSuccess(:final request) => SaveRefImageStatus.completed(
          imageId: request.info.id,
        ),
        ServiceResultFail(:final request, :final error) =>
          SaveRefImageStatus.completed(
            imageId: request.info.id,
            error: switch (error) {
              ServiceErrorSaveImage(:final error) =>
                SaveRefImageStatusError.saveImage(error),
              ServiceErrorGenerateThumbnail(:final error) =>
                SaveRefImageStatusError.generateThumbnail(error),
              ServiceErrorSaveThumbnail(:final error) =>
                SaveRefImageStatusError.saveThumbnail(error),
            },
          ),
      };
      list.add(status);
      return list;
    });
  }

  @visibleForTesting
  Future<void> runJob() async {
    log().i('[Save image] Start job');
    final completer = Completer();
    int jobsCount = 0;
    final subscription = _serviceController.observeQueue().listen((item) async {
      final ServiceQueueItem(:request, :factor) = item;
      try {
        ++jobsCount;
        final file = _fs.file(request.srcFile.path);
        if (!file.existsSync()) {
          log().d('[Save image] ${file.path} not found');
          return;
        }
        final saveResult = await _saveJob.run(
          info: request.info,
          file: request.srcFile,
          factor: factor?.toImmutable(),
        );
        switch (saveResult) {
          case SaveRefImageResultSuccess():
            log().d('[Save image] Image saved: ${request.info.id}');
            await _generateThumbnail(request);

          case SaveRefImageResultError(:final error):
            await _serviceController.sendResult(
              ServiceResult.fail(
                request: request,
                error: ServiceError.saveImage(error),
              ),
            );
        }
      } catch (e, stackTrace) {
        _stop(completer, error: e, stackTrace: stackTrace);
      } finally {
        try {
          factor?.dispose();
        } catch (e, stackTrace) {
          log().e('Unable to clear key', error: e, stackTrace: stackTrace);
        }
        if (request.removeSourceFile) {
          _removeFile(request.srcFile);
        }
        --jobsCount;
      }
    }, cancelOnError: true);
    Timer.periodic(_idleTimeout, (timer) {
      if (jobsCount <= 0) {
        _stop(completer);
      }
    });
    try {
      await completer.future;
    } finally {
      log().i('[Save image] Stop job');
      subscription.cancel();
      await _serviceController.stopService();
    }
  }

  void _stop(Completer completer, {Object? error, StackTrace? stackTrace}) {
    if (completer.isCompleted) {
      return;
    }
    if (error != null) {
      completer.completeError(error, stackTrace);
    } else {
      completer.complete();
    }
  }

  Future<void> _generateThumbnail(ServiceRequest request) async {
    final genThumbnailRes = await _generateThumbnailJob.run(request.srcFile);
    switch (genThumbnailRes) {
      case GenerateThumbnailResultSuccess(:final thumbnail):
        _saveThumbnail(thumbnail, request);
      case GenerateThumbnailResultFail(:final error):
        log().e('[Save image] Generate thumbnail failed: $error');
        await _serviceController.sendResult(
          ServiceResult.fail(
            request: request,
            error: ServiceError.generateThumbnail(error),
          ),
        );
    }
  }

  Future<void> _saveThumbnail(
    Uint8List thumbnail,
    ServiceRequest request,
  ) async {
    final saveThumbnailRes = await _saveThumbnailJob.run(
      info: request.info,
      thumbnail: thumbnail,
    );
    switch (saveThumbnailRes) {
      case SaveThumbnailResultSuccess():
        log().d('[Save image] Thumbnail saved: ${request.info.id}');
        await _serviceController.sendResult(
          ServiceResult.success(request: request),
        );
      case SaveThumbnailResultFail(:final error):
        log().e('[Save image] Generate thumbnail failed: $error');
        await _serviceController.sendResult(
          ServiceResult.fail(
            request: request,
            error: ServiceError.saveThumbnail(error),
          ),
        );
    }
  }

  Future<void> _removeFile(XFile file) async {
    try {
      await _fs.file(file.path).delete();
    } on Exception catch (e, stackTrace) {
      log().e('Unable to delete file', error: e, stackTrace: stackTrace);
    }
  }
}

@pragma('vm:entry-point')
Future<void> callbackDispatcher() async {
  Future<void> dispatcher() async {
    WidgetsFlutterBinding.ensureInitialized();

    await initInjector(kDebugMode ? Env.dev : Env.prod);

    final notifyManager = getIt<NotificationManager>();
    await notifyManager.init();

    final subscription = _listenSaveRefImageStatus(
      getIt<RefImageStatusRepository>(),
      notifyManager,
    );
    final service = getIt<SaveRefImageService>() as SaveRefImageServiceImpl;
    await service.runJob();
    await subscription.cancel();
  }

  if (kDebugMode) {
    return dispatcher();
  } else {
    return crashCatcher(
      hooks: [
        ZonedCrashHook(mainEntry: dispatcher),
        IsolateCrashHook(),
        FlutterCrashHook(),
      ],
      handlers: [DefaultCrashHandler(), NotificationCrashHandler()],
    );
  }
}

StreamSubscription _listenSaveRefImageStatus(
  RefImageStatusRepository repo,
  NotificationManager notifyManager,
) {
  return repo.observeAllSaveStatus().listen((statusList) {
    for (final status in statusList) {
      switch (status) {
        case SaveRefImageStatusProgress():
          continue;
        case SaveRefImageStatusCompleted(:final imageId, :final error):
          switch (error) {
            case SaveRefImageStatusErrorSaveImage(:final error):
              notifyManager.saveRefImageError(imageId: imageId, error: error);
            case _:
              continue;
          }
      }
    }
  });
}

@freezed
abstract class ServiceRequest with _$ServiceRequest {
  const factory ServiceRequest({
    required RefImageInfo info,
    @XFileConverter() required XFile srcFile,
    required bool removeSourceFile,
  }) = _ServiceRequest;

  factory ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestFromJson(json);
}

class XFileConverter implements JsonConverter<XFile, String> {
  const XFileConverter();

  @override
  XFile fromJson(String json) => XFile(json);

  @override
  String toJson(XFile object) => object.path;
}

@freezed
sealed class ServiceResult with _$ServiceResult {
  const factory ServiceResult.success({required ServiceRequest request}) =
      ServiceResultSuccess;

  const factory ServiceResult.fail({
    required ServiceRequest request,
    required ServiceError error,
  }) = ServiceResultFail;

  factory ServiceResult.fromJson(Map<String, dynamic> json) =>
      _$ServiceResultFromJson(json);
}

@freezed
sealed class ServiceError with _$ServiceError {
  const factory ServiceError.saveImage(SaveRefImageError error) =
      ServiceErrorSaveImage;

  const factory ServiceError.generateThumbnail(GenerateThumbnailError error) =
      ServiceErrorGenerateThumbnail;

  const factory ServiceError.saveThumbnail(SaveThumbnailError error) =
      ServiceErrorSaveThumbnail;

  factory ServiceError.fromJson(Map<String, dynamic> json) =>
      _$ServiceErrorFromJson(json);
}

@freezed
abstract class ServiceQueueItem with _$ServiceQueueItem {
  const factory ServiceQueueItem({
    required ServiceRequest request,
    required MutableAuthFactor? factor,
  }) = _ServiceQueueItem;

  factory ServiceQueueItem.fromJson(Map<String, dynamic> json) =>
      _$ServiceQueueItemFromJson(json);
}

@singleton
class SaveRefImageServiceController {
  final SaveRefImageNativeService _nativeService;

  SaveRefImageServiceController(this._nativeService);

  Stream<ServiceQueueItem> observeQueue() => _nativeService.observeQueue();

  Future<List<RefImageInfo>> getAllInProgress() => _nativeService
      .getAllInProgress()
      .then((list) => list.map((saveInfo) => saveInfo.info).toList());

  Future<void> sendResult(ServiceResult result) =>
      _nativeService.sendResult(result);

  Future<void> stopService() => _nativeService.stop();
}

@singleton
class SaveRefImageJobController {
  final SaveRefImageNativeService _nativeService;

  SaveRefImageJobController(this._nativeService);

  Stream<ServiceResult> observeResult() => _nativeService.observeResult();

  /// Push [factor] only on first time.
  Future<void> pushQueue(
    ServiceRequest request, {
    required MutableAuthFactor? factor,
  }) async {
    await _nativeService.pushQueue(request, factor: factor);
    if (!await _nativeService.isRunning()) {
      await _nativeService.start(callbackDispatcher: callbackDispatcher);
    }
  }
}
