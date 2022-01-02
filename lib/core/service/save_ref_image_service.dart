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

import 'dart:async';
import 'dart:typed_data';

import 'package:blink_comparison/core/crash_catcher/handler/notification_crash_handler.dart';
import 'package:blink_comparison/core/service/generate_thumbnail_job.dart';
import 'package:blink_comparison/core/service/save_ref_image_job.dart';
import 'package:blink_comparison/core/storage/ref_image_status_repository.dart';
import 'package:blink_comparison/platform/save_ref_image_native_service.dart';
import 'package:cross_file/cross_file.dart';
import 'package:file/file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_sodium/flutter_sodium.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../env.dart';
import '../../injector.dart';
import '../../logger.dart';
import '../crash_catcher/crash_catcher.dart';
import '../crash_catcher/hook/flutter_crash_hook.dart';
import '../encrypt/encrypt.dart';
import '../entity/entity.dart';
import '../notification_manager.dart';
import 'save_thumbnail_job.dart';

part 'save_ref_image_service.freezed.dart';
part 'save_ref_image_service.g.dart';

abstract class SaveRefImageService {
  Future<void> save({
    required RefImageInfo info,
    required XFile srcImage,
    required SecureKey key,
  });

  Future<List<SaveRefImageStatus>> getCurrentStatus();

  Stream<List<SaveRefImageStatus>> observeStatus();
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

  SaveRefImageServiceImpl(
    this._saveJob,
    this._fs,
    this._serviceController,
    this._jobController,
    this._generateThumbnailJob,
    this._saveThumbnailJob,
  );

  @override
  Future<void> save({
    required RefImageInfo info,
    required XFile srcImage,
    required SecureKey key,
  }) async {
    final saveInfo = ServiceRequest(
      info: info,
      srcFile: srcImage,
      key: key,
    );
    await _jobController.pushQueue(saveInfo);
  }

  @override
  Future<List<SaveRefImageStatus>> getCurrentStatus() {
    return _serviceController.getAllInProgress().then(
          (list) => list
              .map((info) => SaveRefImageStatus.inProgress(imageId: info.id))
              .toList(),
        );
  }

  @override
  Stream<List<SaveRefImageStatus>> observeStatus() async* {
    yield await getCurrentStatus();
    yield* _jobController.observeResult().asyncMap((result) async {
      final list = await getCurrentStatus();
      final status = result.when(
        success: (request) => SaveRefImageStatus.completed(
          imageId: request.info.id,
        ),
        fail: (request, error) => SaveRefImageStatus.completed(
          imageId: request.info.id,
          error: error.when(
            saveImage: (e) => SaveRefImageStatusError.saveImage(e),
            generateThumbnail: (e) =>
                SaveRefImageStatusError.generateThumbnail(e),
            saveThumbnail: (e) => SaveRefImageStatusError.saveThumbnail(e),
          ),
        ),
      );
      list.add(status);
      return list;
    });
  }

  @visibleForTesting
  Future<void> runJob() async {
    log().i('[Save image] Start job');
    final completer = Completer();
    int jobsCount = 0;
    final subscription = _serviceController.observeQueue().listen(
      (request) async {
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
            key: request.key,
          );
          await saveResult.when(
            success: () async {
              log().d('[Save image] Image saved: ${request.info.id}');
              await _generateThumbnail(request);
            },
            error: (e) async {
              await _serviceController.sendResult(
                ServiceResult.fail(
                  request: request,
                  error: ServiceError.saveImage(e),
                ),
              );
            },
          );
        } catch (e, stackTrace) {
          _stop(completer, error: e, stackTrace: stackTrace);
        } finally {
          --jobsCount;
        }
      },
      cancelOnError: true,
    );
    Timer.periodic(_idleTimeout, (timer) {
      if (jobsCount <= 0) {
        _stop(completer);
      }
    });
    await completer.future;

    log().i('[Save image] Stop job');
    subscription.cancel();
    await _serviceController.stopService();
  }

  void _stop(
    Completer completer, {
    Object? error,
    StackTrace? stackTrace,
  }) {
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
    await genThumbnailRes.when(
      success: (thumbnail) => _saveThumbnail(thumbnail, request),
      fail: (e) async {
        log().e('[Save image] Generate thumbnail failed: $e');
        await _serviceController.sendResult(
          ServiceResult.fail(
            request: request,
            error: ServiceError.generateThumbnail(e),
          ),
        );
      },
    );
  }

  Future<void> _saveThumbnail(
    Uint8List thumbnail,
    ServiceRequest request,
  ) async {
    final saveThumbnailRes = await _saveThumbnailJob.run(
      info: request.info,
      thumbnail: thumbnail,
    );
    await _serviceController.sendResult(
      saveThumbnailRes.when(
        success: () {
          log().d('[Save image] Thumbnail saved: ${request.info.id}');
          return ServiceResult.success(request: request);
        },
        fail: (e) {
          log().e('[Save image] Generate thumbnail failed: $e');
          return ServiceResult.fail(
            request: request,
            error: ServiceError.saveThumbnail(e),
          );
        },
      ),
    );
  }
}

Future<void> callbackDispatcher() async {
  Future<void> _dispatcher() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initInjector(kDebugMode ? Env.dev : Env.prod);
    Sodium.init();

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
    return _dispatcher();
  } else {
    return crashCatcher(
      hooks: [
        ZonedCrashHook(mainEntry: _dispatcher),
        IsolateCrashHook(),
        FlutterCrashHook(),
      ],
      handlers: [
        DefaultCrashHandler(),
        NotificationCrashHandler(),
      ],
    );
  }
}

StreamSubscription _listenSaveRefImageStatus(
  RefImageStatusRepository repo,
  NotificationManager notifyManager,
) {
  return repo.observeAllSaveStatus().listen((statusList) {
    for (final status in statusList) {
      status.maybeWhen(
        completed: (imageId, error) {
          error?.maybeWhen(
            saveImage: (error) => notifyManager.saveRefImageError(
              imageId: imageId,
              error: error,
            ),
            orElse: () {},
          );
        },
        orElse: () {},
      );
    }
  });
}

@freezed
class ServiceRequest with _$ServiceRequest {
  const factory ServiceRequest({
    required RefImageInfo info,
    @XFileConverter() required XFile srcFile,
    required SecureKey key,
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
class ServiceResult with _$ServiceResult {
  const factory ServiceResult.success({
    required ServiceRequest request,
  }) = ServiceResultSuccess;

  const factory ServiceResult.fail({
    required ServiceRequest request,
    required ServiceError error,
  }) = ServiceResultFail;

  factory ServiceResult.fromJson(Map<String, dynamic> json) =>
      _$ServiceResultFromJson(json);
}

@freezed
class ServiceError with _$ServiceError {
  const factory ServiceError.saveImage(
    SaveRefImageError error,
  ) = ServiceErrorSaveImage;

  const factory ServiceError.generateThumbnail(
    GenerateThumbnailError error,
  ) = ServiceErrorGenerateThumbnail;

  const factory ServiceError.saveThumbnail(
    SaveThumbnailError error,
  ) = ServiceErrorSaveThumbnail;

  factory ServiceError.fromJson(Map<String, dynamic> json) =>
      _$ServiceErrorFromJson(json);
}

@singleton
class SaveRefImageServiceController {
  final SaveRefImageNativeService _nativeService;

  SaveRefImageServiceController(this._nativeService);

  Stream<ServiceRequest> observeQueue() => _nativeService.observeQueue();

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

  Future<void> pushQueue(ServiceRequest request) async {
    await _nativeService.pushQueue(request);
    if (!await _nativeService.isRunning()) {
      await _nativeService.start(callbackDispatcher: callbackDispatcher);
    }
  }
}
