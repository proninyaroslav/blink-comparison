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

import 'dart:typed_data';

import 'package:blink_comparison/env.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sodium_libs/sodium_libs_sumo.dart';

import '../entity/entity.dart';

abstract class SecureKeyFactory {
  /// See [SecureKey]
  SecureKey empty(int length);

  /// See [SecureKey.fromList]
  SecureKey fromList(Uint8List data);

  /// See [SecureKey.random]
  SecureKey random(int length);
}

@Injectable(as: SecureKeyFactory, env: [Env.dev, Env.prod])
class SecureKeyFactoryImpl implements SecureKeyFactory {
  final SodiumSumo _sodium;

  SecureKeyFactoryImpl(this._sodium);

  @override
  SecureKey empty(int length) => SecureKey(_sodium, length);

  @override
  SecureKey fromList(Uint8List data) => SecureKey.fromList(_sodium, data);

  @override
  SecureKey random(int length) => SecureKey.random(_sodium, length);
}

@Injectable(as: SecureKeyFactory, env: [Env.test])
@visibleForTesting
class TestSecureKeyFactory implements SecureKeyFactory {
  @override
  SecureKey empty(int length) => TestSecureKey(length);

  @override
  SecureKey fromList(Uint8List data) => TestSecureKey.fromList(data);

  @override
  SecureKey random(int length) {
    throw UnimplementedError();
  }
}
