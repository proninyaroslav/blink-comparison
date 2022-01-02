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

import 'dart:convert';
import 'dart:typed_data';

import 'package:blink_comparison/core/encrypt/password_hasher.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Password hasher |', () {
    late final PasswordHasher hasher;

    setUpAll(() async {
      hasher = PasswordHasherImpl();
    });

    test('Calculate', () async {
      const expectedHash = 'c929c0c434b93b29f61415cfcd62c25a';
      final salt = Uint8List.fromList(utf8.encode('01234567890abcdf'));
      expect(
        await hasher.calculate(password: 'test', salt: salt),
        expectedHash,
      );
    });
  });
}
