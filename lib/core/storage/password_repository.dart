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
import 'package:blink_comparison/core/encrypt/password_hasher.dart';
import 'package:blink_comparison/core/entity/password.dart';
import 'package:blink_comparison/core/entity/secure_key.dart';
import 'package:blink_comparison/core/storage/app_database.dart';
import 'package:convert/convert.dart';
import 'package:injectable/injectable.dart';

import 'storage_result.dart';

const _encryptKeyId = 'encrypt_key';

abstract class PasswordRepository {
  Future<StorageResult<PasswordInfo>> insert({
    required PasswordType type,
    required ImmutableSecureKey password,
  });

  Future<StorageResult<void>> delete(PasswordInfo info);

  Future<StorageResult<PasswordInfo?>> getByType(PasswordType type);
}

@Singleton(as: PasswordRepository)
class PasswordRepositoryImpl implements PasswordRepository {
  final AppDatabase _db;
  final SaltGenerator _saltGenerator;
  final PasswordHasher _hasher;

  PasswordRepositoryImpl(
    this._db,
    this._saltGenerator,
    this._hasher,
  );

  @override
  Future<StorageResult<PasswordInfo>> insert({
    required PasswordType type,
    required ImmutableSecureKey password,
  }) async {
    final salt = _saltGenerator.randomBytes();
    final key = await _hasher.calculate(
      password: password,
      salt: salt,
    );
    try {
      final info = PasswordInfo(
        id: type.getId(),
        hash: hex.encode(key.extractBytes()),
        salt: hex.encode(salt),
      );
      await _db.passwordDao.insert(info);
      return StorageResult(info);
    } on Exception catch (e, stackTrace) {
      return StorageResult.error(
        StorageError.database(
          exception: e,
          stackTrace: stackTrace,
        ),
      );
    } finally {
      key.dispose();
    }
  }

  @override
  Future<StorageResult<void>> delete(PasswordInfo info) async {
    try {
      await _db.passwordDao.delete(info);
      return StorageResult.empty;
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
  Future<StorageResult<PasswordInfo?>> getByType(PasswordType type) async {
    try {
      return StorageResult(
        await _db.passwordDao.getById(type.getId()),
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
}

extension PasswordTypeExtension on PasswordType {
  String getId() => switch (this) { PasswordTypeEncryptKey() => _encryptKeyId };
}
