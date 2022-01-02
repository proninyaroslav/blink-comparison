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

import 'package:blink_comparison/core/entity/password.dart';
import 'package:sembast/sembast.dart';

const _storeName = 'PasswordInfo';

class PasswordDao {
  final Database _db;
  final _store = stringMapStoreFactory.store(_storeName);

  PasswordDao(this._db);

  Future<void> insert(PasswordInfo info) async {
    await _store.record(info.id).put(_db, info.toJson());
  }

  Future<void> delete(PasswordInfo info) async {
    final finder = Finder(filter: Filter.byKey(info.id));
    await _store.delete(_db, finder: finder);
  }

  Future<PasswordInfo?> getById(String id) async {
    final snapshot = await _store.record(id).get(_db);
    return snapshot == null ? null : PasswordInfo.fromJson(snapshot);
  }
}
