import 'dart:ffi';
import 'dart:io';

import 'package:sodium/sodium_sumo.dart';

Future<SodiumSumo> loadSodiumSumo() {
  if (Platform.isLinux) {
    return SodiumSumoInit.init(() {
      try {
        return DynamicLibrary.open('libsodium.so.23');
      } catch (e) {
        return DynamicLibrary.open('libsodium.so.26');
      }
    });
  } else {
    throw 'Unsupported platform';
  }
}
