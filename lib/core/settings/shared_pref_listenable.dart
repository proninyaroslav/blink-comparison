// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesAsyncListenable extends SharedPreferencesAsync {
  final StreamController<String> _streamController =
      StreamController.broadcast();

  Stream<String> changePrefStream() => _streamController.stream;

  @override
  Future<void> setBool(String key, bool value) =>
      super.setBool(key, value).then((_) => _streamController.add(key));

  @override
  Future<void> setDouble(String key, double value) =>
      super.setDouble(key, value).then((_) => _streamController.add(key));

  @override
  Future<void> setInt(String key, int value) =>
      super.setInt(key, value).then((_) => _streamController.add(key));

  @override
  Future<void> setString(String key, String value) =>
      super.setString(key, value).then((_) => _streamController.add(key));

  @override
  Future<void> setStringList(String key, List<String> value) =>
      super.setStringList(key, value).then((_) => _streamController.add(key));
}

class SharedPreferencesWithCacheListenable
    implements SharedPreferencesWithCache {
  final SharedPreferencesWithCache _instance;
  final StreamController<String> _streamController =
      StreamController.broadcast();

  SharedPreferencesWithCacheListenable._create(this._instance);

  static Future<SharedPreferencesWithCacheListenable> create({
    required SharedPreferencesWithCacheOptions cacheOptions,
  }) async =>
      SharedPreferencesWithCacheListenable._create(
        await SharedPreferencesWithCache.create(cacheOptions: cacheOptions),
      );

  Stream<String> changePrefStream() => _streamController.stream;

  @override
  Future<void> clear() => _instance.clear();

  @override
  bool containsKey(String key) => _instance.containsKey(key);

  @override
  Object? get(String key) => _instance.get(key);

  @override
  bool? getBool(String key) => _instance.getBool(key);

  @override
  double? getDouble(String key) => _instance.getDouble(key);

  @override
  int? getInt(String key) => _instance.getInt(key);

  @override
  String? getString(String key) => _instance.getString(key);

  @override
  List<String>? getStringList(String key) => _instance.getStringList(key);

  @override
  Set<String> get keys => _instance.keys;

  @override
  Future<void> reloadCache() => _instance.reloadCache();

  @override
  Future<void> remove(String key) => _instance.remove(key);

  @override
  Future<void> setBool(String key, bool value) =>
      _instance.setBool(key, value).then((_) => _streamController.add(key));

  @override
  Future<void> setDouble(String key, double value) =>
      _instance.setDouble(key, value).then((_) => _streamController.add(key));

  @override
  Future<void> setInt(String key, int value) =>
      _instance.setInt(key, value).then((_) => _streamController.add(key));

  @override
  Future<void> setString(String key, String value) =>
      _instance.setString(key, value).then((_) => _streamController.add(key));

  @override
  Future<void> setStringList(String key, List<String> value) => _instance
      .setStringList(key, value)
      .then((_) => _streamController.add(key));
}
