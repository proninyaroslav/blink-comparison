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

import 'dart:ffi';
import 'dart:io';

import 'package:blink_comparison/env.dart';
import 'package:injectable/injectable.dart';
import 'package:sodium/sodium_sumo.dart' as dart_sumo;
import 'package:sodium_libs/sodium_libs_sumo.dart';

@module
abstract class SodiumModule {
  @Singleton(env: [Env.dev, Env.prod])
  @preResolve
  Future<SodiumSumo> sodiumSumo() async {
    return await SodiumSumoInit.init();
  }

  @Singleton(env: [Env.test])
  @preResolve
  Future<SodiumSumo> sodiumSumoTest() async {
    if (Platform.isLinux) {
      return dart_sumo.SodiumSumoInit.init(() {
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
}
