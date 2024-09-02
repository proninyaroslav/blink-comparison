import 'dart:typed_data';

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Auth factor |', () {
    test('Copy', () {
      final factor = MutableAuthFactor.password(
        value: TestSecureKey.fromList(
          Uint8List.fromList([1, 2, 3]),
        ),
      );
      final factorCopy = factor.copy();
      expect(factorCopy?.value.extractBytes(), factor.value.extractBytes());
    });

    test('Copy after dispose', () {
      final factor = MutableAuthFactor.password(
        value: TestSecureKey.fromList(
          Uint8List.fromList([1, 2, 3]),
        ),
      );
      factor.dispose();
      expect(factor.copy(), isNull);
    });

    test('Extract bytes after dispose', () {
      final factor = MutableAuthFactor.password(
        value: TestSecureKey.fromList(
          Uint8List.fromList([1, 2, 3]),
        ),
      );
      factor.dispose();
      expect(
        switch (factor.toImmutable()) {
          AuthFactorPassword(:final value) => value
        },
        isNull,
      );
    });

    test('To immutable', () {
      final factor = MutableAuthFactor.password(
        value: TestSecureKey.fromList(
          Uint8List.fromList([1, 2, 3]),
        ),
      );
      expect(
        switch (factor.toImmutable()) {
          AuthFactorPassword(:final value) => value?.extractBytes()
        },
        factor.value.extractBytes(),
      );
    });
  });
}
