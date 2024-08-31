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

import 'dart:convert';

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Auth factor repository |', () {
    late AuthFactorRepository repo;

    setUp(() {
      repo = AuthFactorRepositoryImpl();
    });

    test('Set', () {
      final factor = MutableAuthFactor.password(
        value: TestSecureKey.fromList(utf8.encode('123')),
      );

      expect(repo.hasSecureKey(), isFalse);
      repo.set(factor);
      expect(repo.hasSecureKey(), isTrue);
      expect(repo.get(), factor.toImmutable());
    });

    test('Remove', () {
      final factor = MutableAuthFactor.password(
        value: TestSecureKey.fromList(utf8.encode('123')),
      );

      repo.set(factor);
      expect(repo.hasSecureKey(), isTrue);

      repo.remove();
      expect(repo.hasSecureKey(), isFalse);
      expect((factor.value as TestSecureKey).isDisposed, isTrue);
    });

    test('Replace', () {
      final factor1 = MutableAuthFactor.password(
        value: TestSecureKey.fromList(utf8.encode('321')),
      );
      final factor2 = MutableAuthFactor.password(
        value: TestSecureKey.fromList(utf8.encode('123')),
      );

      repo.set(factor1);
      expect(repo.get(), factor1.toImmutable());

      repo.set(factor2);
      expect(repo.get(), factor2.toImmutable());
      expect((factor1.value as TestSecureKey).isDisposed, isTrue);
    });
  });
}
