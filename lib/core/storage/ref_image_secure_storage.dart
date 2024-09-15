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

import 'package:blink_comparison/core/encrypt/encrypt.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/fs/ref_image_fs.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:cross_file/cross_file.dart';
import 'package:injectable/injectable.dart';

import '../service/save_ref_image_service.dart';
import 'storage_result.dart';

abstract class RefImageSecureStorage {
  Future<SecStorageResult<void>> add(RefImageInfo info, XFile srcImage);

  Future<SecStorageResult<RefImage>> get(RefImageInfo info);

  Future<SecStorageResult<void>> delete(RefImageInfo info);
}

@Singleton(as: RefImageSecureStorage)
class RefImageSecureStorageImpl implements RefImageSecureStorage {
  final RefImageFS _fs;
  final EncryptModuleProvider _encryptProvider;
  final SaveRefImageService _saveService;
  final AuthFactorRepository _keyRepo;

  RefImageSecureStorageImpl(
    this._fs,
    this._encryptProvider,
    this._saveService,
    this._keyRepo,
  );

  @override
  Future<SecStorageResult<void>> add(
    RefImageInfo info,
    XFile srcImage,
  ) async {
    if (!_keyRepo.hasSecureKey()) {
      return const SecStorageResult.error(
        SecStorageError.noKey(),
      );
    }

    await _saveService.save(
      info: info,
      srcImage: srcImage,
    );

    return SecStorageResult.empty;
  }

  @override
  Future<SecStorageResult<RefImage>> get(RefImageInfo info) async {
    final key = _keyRepo.get();
    if (key == null) {
      return const SecStorageResult.error(
        SecStorageError.noKey(),
      );
    }

    final bytes = await _fs.read(info).then(
          (res) => switch (res) {
            FsResultSuccess(:final value) => value,
            FsResultError(:final error) => throw error,
          },
        );
    final module = _encryptProvider.getByKey(key);
    final res = await module?.decrypt(src: bytes, info: info);
    try {
      return switch (res) {
        null => const SecStorageResult.error(SecStorageError.noKey()),
        DecryptResultSuccess(:final bytes) => SecStorageResult(
            RefImage(info: info, bytes: bytes),
          ),
        DecryptResultFail(:final error) => SecStorageResult.error(
            SecStorageError.decrypt(error: error),
          ),
      };
    } on FsError catch (e) {
      return SecStorageResult.error(
        SecStorageError.fs(error: e),
      );
    }
  }

  @override
  Future<SecStorageResult<void>> delete(RefImageInfo info) async {
    final res = await _fs.delete(info);
    return switch (res) {
      FsResultSuccess() => SecStorageResult.empty,
      FsResultError(:final error) =>
        SecStorageResult.error(SecStorageError.fs(error: error)),
    };
  }
}
