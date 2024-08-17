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
import 'package:blink_comparison/core/encrypt/encrypt_key_derivation.dart';
import 'package:injectable/injectable.dart';
import 'package:sodium_libs/sodium_libs_sumo.dart';

abstract class EncryptModuleProvider {
  EncryptModule getByKey(AppSecureKey key);
}

@Singleton(as: EncryptModuleProvider)
class EncryptModuleProviderImpl implements EncryptModuleProvider {
  final SodiumSumo _sodium;
  final EncryptKeyDerivation _derivation;

  EncryptModuleProviderImpl(this._sodium, this._derivation);

  @override
  EncryptModule getByKey(AppSecureKey key) {
    return key.when(
      password: (password) => PBEModule(_sodium, password, _derivation),
    );
  }
}
