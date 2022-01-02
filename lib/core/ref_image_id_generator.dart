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

import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

abstract class RefImageIdGenerator {
  /// Generates a unique id for the current instance.
  /// Throws `GenerateIdException` if failed to generate unique id
  String randomUnique();
}

class GenerateIdException implements Exception {
  final String message;

  GenerateIdException(this.message);

  @override
  String toString() => 'GenerateIdException: $message';
}

@Injectable(as: RefImageIdGenerator)
class RefImageIdGeneratorImpl implements RefImageIdGenerator {
  static const _maxNumAttempts = 100;

  final Set<String> _uuidMap = {};
  final _uuidGenerator = const Uuid();

  /// Generates a unique id for the current instance.
  /// Throws `GenerateIdException` if failed to generate unique id
  @override
  String randomUnique() {
    for (var i = 0; i < _maxNumAttempts; i++) {
      final uuid = _uuidGenerator.v4();
      if (!_uuidMap.contains(uuid)) {
        return uuid;
      }
    }
    throw GenerateIdException('Unable to generate unique id');
  }
}
