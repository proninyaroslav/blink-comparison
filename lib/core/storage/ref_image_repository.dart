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

import 'package:blink_comparison/core/date_time_provider.dart';
import 'package:blink_comparison/core/encrypt/salt_generator.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/fs/thumbnail_fs.dart';
import 'package:blink_comparison/core/ref_image_id_generator.dart';
import 'package:blink_comparison/core/storage/app_database.dart';
import 'package:blink_comparison/ui/model/showcase_cubit.dart';
import 'package:convert/convert.dart';
import 'package:cross_file/cross_file.dart';
import 'package:injectable/injectable.dart';

import 'ref_image_secure_storage.dart';
import 'storage_result.dart';

abstract class RefImageRepository {
  Future<SecStorageResult<RefImageInfo>> addFromFile(
    XFile srcImage, {
    required EncryptionPreference? encryption,
    bool removeSourceFile = false,
  });

  Future<SecStorageResult<void>> delete(RefImageInfo info);

  Future<Map<RefImageInfo, SecStorageResult<void>>> deleteList(
    List<RefImageInfo> infoList,
  );

  Future<StorageResult<List<RefImageInfo>>> getAllInfo();

  Stream<StorageResult<List<RefImageInfo>>> observeAllInfo();

  Future<StorageResult<RefImageInfo?>> getInfoById(String id);

  Future<SecStorageResult<RefImage>> getImage(RefImageInfo info);

  Future<StorageResult<bool>> existsById(String id);

  Future<StorageResult<Thumbnail>> getThumbnail(RefImageInfo info);
}

@Singleton(as: RefImageRepository)
class RefImageRepositoryImpl implements RefImageRepository {
  final AppDatabase _db;
  final RefImageIdGenerator _idGenerator;
  final DateTimeProvider _dateTimeProvider;
  final RefImageSecureStorage _secureStorage;
  final ThumbnailFS _thumbnailFs;
  final SaltGenerator _saltGenerator;

  RefImageRepositoryImpl(
    this._db,
    this._idGenerator,
    this._dateTimeProvider,
    this._secureStorage,
    this._thumbnailFs,
    this._saltGenerator,
  );

  @override
  Future<SecStorageResult<RefImageInfo>> addFromFile(
    XFile srcImage, {
    required EncryptionPreference? encryption,
    bool removeSourceFile = false,
  }) async {
    late final RefImageInfo info;
    try {
      final id = await _randomUniqueId();
      info = RefImageInfo(
        id: id,
        dateAdded: _dateTimeProvider.now(),
        encryption: switch (encryption) {
          null || EncryptionPreferenceNone() => const RefImageEncryption.none(),
          EncryptionPreferencePassword() => RefImageEncryption.password(
              encryptSalt: hex.encode(_saltGenerator.randomBytes()),
            ),
        },
      );
      await _db.referenceImageDao.add(info);
    } on Exception catch (e, stackTrace) {
      if (e is GenerateIdException) {
        rethrow;
      }
      return SecStorageResult.error(
        SecStorageError.database(
          exception: e,
          stackTrace: stackTrace,
        ),
      );
    }

    final res = await _secureStorage.add(
      info,
      srcImage,
      removeSourceFile: removeSourceFile,
    );
    return switch (res) {
      SecStorageResultSuccess() => SecStorageResult(info),
      SecStorageResultError(:final error) => SecStorageResult.error(error),
    };
  }

  Future<String> _randomUniqueId() async {
    const maxNumAttempts = 100;
    for (var i = 0; i < maxNumAttempts; i++) {
      final id = _idGenerator.randomUnique();
      final exists = await _db.referenceImageDao.existsById(id);
      if (!exists) {
        return id;
      }
    }
    throw GenerateIdException('Unable to generate unique id');
  }

  @override
  Future<SecStorageResult<void>> delete(RefImageInfo info) async {
    try {
      await _db.referenceImageDao.delete(info);
      await _thumbnailFs.delete(info);
    } on Exception catch (e, stackTrace) {
      return SecStorageResult.error(
        SecStorageError.database(
          exception: e,
          stackTrace: stackTrace,
        ),
      );
    }
    return _secureStorage.delete(info);
  }

  @override
  Future<Map<RefImageInfo, SecStorageResult<void>>> deleteList(
    List<RefImageInfo> infoList,
  ) async {
    try {
      await _db.referenceImageDao.deleteList(infoList);
      final resMap = <RefImageInfo, SecStorageResult<void>>{};
      for (final info in infoList) {
        await _thumbnailFs.delete(info);
        final res = await _secureStorage.delete(info);
        resMap[info] = switch (res) {
          SecStorageResultSuccess() => (SecStorageResult.empty),
          SecStorageResultError(:final error) => SecStorageResult.error(error),
        };
      }
      return resMap;
    } on Exception catch (e, stackTrace) {
      return Map.fromEntries(
        infoList.map(
          (info) => MapEntry(
            info,
            SecStorageResult.error(
              SecStorageError.database(
                exception: e,
                stackTrace: stackTrace,
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  Future<StorageResult<List<RefImageInfo>>> getAllInfo() async {
    try {
      return StorageResult(
        await _db.referenceImageDao.getAll(),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(
          exception: e,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  @override
  Stream<StorageResult<List<RefImageInfo>>> observeAllInfo() {
    final transformer = storageResultTransformer<List<RefImageInfo>>(
      onException: (e, stackTrace) {
        return StorageResult.error(
          StorageError.database(
            exception: e,
            stackTrace: stackTrace,
          ),
        );
      },
    );
    return _db.referenceImageDao.observeAll().transform(transformer);
  }

  @override
  Future<StorageResult<RefImageInfo?>> getInfoById(String id) async {
    try {
      return StorageResult(
        await _db.referenceImageDao.getById(id),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(
          exception: e,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  @override
  Future<SecStorageResult<RefImage>> getImage(RefImageInfo info) =>
      _secureStorage.get(info);

  @override
  Future<StorageResult<bool>> existsById(String id) async {
    try {
      return StorageResult(
        await _db.referenceImageDao.existsById(id),
      );
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(
          exception: e,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  @override
  Future<StorageResult<Thumbnail>> getThumbnail(RefImageInfo info) async {
    final res = await _thumbnailFs.get(info);
    return switch (res) {
      FsResultSuccess(value: final file) => StorageResult(
          Thumbnail(refImageId: info.id, file: file),
        ),
      FsResultError(:final error) =>
        StorageResult.error(StorageError.fs(error: error)),
    };
  }
}
