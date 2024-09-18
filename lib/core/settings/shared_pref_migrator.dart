// https://github.com/flutter/flutter/issues/150732#issuecomment-2262043205

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

import '../../logger.dart';

const _prefKey = 'shared_preferences_v1_2_0_did_migrate';

class SharedPreferencesMigrator {
  final SharedPreferences oldPrefs;
  final SharedPreferencesAsync newPrefs;

  SharedPreferencesMigrator({required this.oldPrefs, required this.newPrefs});

  bool? get didMigrate => oldPrefs.getBool(_prefKey);

  /// Reads all the values from [oldPrefs] and saves them to [newPrefs].
  Future<void> migrate() async {
    if (didMigrate ?? false) {
      return;
    }
    final keys = oldPrefs.getKeys();
    for (final key in keys) {
      final value = oldPrefs.get(key);
      if (value is String) {
        await newPrefs.setString(key, value);
      } else if (value is bool) {
        await newPrefs.setBool(key, value);
      } else if (value is double) {
        await newPrefs.setDouble(key, value);
      } else if (value is int) {
        await newPrefs.setInt(key, value);
      } else if (value is List<String>) {
        await newPrefs.setStringList(key, value);
      }
    }
    if (keys.isNotEmpty) {
      log().i('[SharedPreferences] Migration completed');
    }
    oldPrefs.setBool(_prefKey, true);
  }
}
