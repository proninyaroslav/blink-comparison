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

import 'package:blink_comparison/core/entity/ref_image.dart';
import 'package:sembast/sembast.dart';

const _storeName = 'RefImageInfo';

class RefImageDao {
  final Database _db;
  final _store = stringMapStoreFactory.store(_storeName);

  RefImageDao(this._db);

  Future<void> add(RefImageInfo image) async {
    await _store.record(image.id).add(_db, image.toJson());
  }

  Future<void> delete(RefImageInfo image) async {
    final finder = Finder(filter: Filter.byKey(image.id));
    await _store.delete(_db, finder: finder);
  }

  Future<void> deleteList(List<RefImageInfo> imagesList) async {
    await _store.records(imagesList.map((info) => info.id)).delete(_db);
  }

  Future<List<RefImageInfo>> getAll() async {
    final snapshots = await _store.find(_db);
    return snapshots
        .map((record) => RefImageInfo.fromJson(record.value))
        .toList();
  }

  Stream<List<RefImageInfo>> observeAll() {
    return _store.query().onSnapshots(_db).map(
          (snapshots) => snapshots
              .map((snapshot) => RefImageInfo.fromJson(snapshot.value))
              .toList(),
        );
  }

  Stream<RefImageInfo?> observeById(String id) {
    return _store.record(id).onSnapshot(_db).map((snapshot) =>
        snapshot == null ? null : RefImageInfo.fromJson(snapshot.value));
  }

  Future<RefImageInfo?> getById(String id) async {
    final snapshot = await _store.record(id).get(_db);
    return snapshot == null ? null : RefImageInfo.fromJson(snapshot);
  }

  Future<bool> existsById(String id) => _store.record(id).exists(_db);

  Future<void> update(RefImageInfo image) async {
    await _store.record(image.id).update(_db, image.toJson());
  }
}
