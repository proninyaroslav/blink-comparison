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

import 'package:blink_comparison/core/entity/persistent_auth_factor.dart';
import 'package:sembast/sembast.dart';

const _storeName = 'PasswordInfo';

class PersistentAuthFactorDao {
  final Database _db;
  final _store = stringMapStoreFactory.store(_storeName);

  PersistentAuthFactorDao(this._db);

  Future<void> insert(PersistentAuthFactor factor) async {
    await _store.record(factor.id.value).put(_db, factor.toJson());
  }

  Future<void> delete(PersistentAuthFactor factor) async {
    final finder = Finder(filter: Filter.byKey(factor.id.value));
    await _store.delete(_db, finder: finder);
  }

  Future<PersistentAuthFactor?> getById(PersistentAuthFactorId id) async {
    final snapshot = await _store.record(id.value).get(_db);
    return snapshot == null ? null : PersistentAuthFactor.fromJson(snapshot);
  }
}
