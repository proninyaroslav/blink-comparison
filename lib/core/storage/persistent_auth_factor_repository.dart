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
import 'package:blink_comparison/core/storage/app_database.dart';
import 'package:convert/convert.dart';
import 'package:injectable/injectable.dart';

import '../entity/entity.dart';
import 'storage_result.dart';

abstract class PersistentAuthFactorRepository {
  Future<StorageResult<PersistentAuthFactor>> insert(AuthFactor factor);

  Future<StorageResult<void>> delete(PersistentAuthFactor info);

  Future<StorageResult<PersistentAuthFactor?>> getById(
    PersistentAuthFactorId id,
  );
}

@Singleton(as: PersistentAuthFactorRepository)
class PersistentAuthFactorRepositoryImpl
    implements PersistentAuthFactorRepository {
  final AppDatabase _db;
  final SaltGenerator _saltGenerator;
  final PasswordHasher _hasher;

  PersistentAuthFactorRepositoryImpl(
    this._db,
    this._saltGenerator,
    this._hasher,
  );

  @override
  Future<StorageResult<PersistentAuthFactor>> insert(AuthFactor factor) async {
    late final PersistentAuthFactor persistentFactor;
    try {
      switch (factor) {
        case AuthFactorPassword(:final value?):
          final salt = _saltGenerator.randomBytes();
          final key = await _hasher.calculate(
            password: value,
            salt: salt,
          );
          persistentFactor = PersistentAuthFactor.password(
            hash: hex.encode(key.extractBytes()),
            salt: hex.encode(salt),
          );
        case AuthFactorPassword():
          throw Exception('Auth factor is disposed');
      }
      await _db.persistentAuthFactorDao.insert(persistentFactor);
      return StorageResult(persistentFactor);
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
  Future<StorageResult<void>> delete(PersistentAuthFactor info) async {
    try {
      await _db.persistentAuthFactorDao.delete(info);
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
  Future<StorageResult<PersistentAuthFactor?>> getById(
    PersistentAuthFactorId id,
  ) async {
    try {
      return StorageResult(
        await _db.persistentAuthFactorDao.getById(id),
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
