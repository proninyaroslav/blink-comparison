import 'dart:async';

import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/ui/auth_lifecycle_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Auth lifecycle observer', () {
    late AuthFactorRepository mockFactorRepo;
    late AppLifecycleListener lifecycleListener;
    late AuthLifecycleObserver observer;
    late Completer onReevaluateGuardsCompleter;

    setUpAll(() {
      TestWidgetsFlutterBinding.ensureInitialized();
    });

    setUp(() {
      mockFactorRepo = MockAuthFactorRepository();
      when(() => mockFactorRepo.remove())
          .thenAnswer((_) => AuthFactorModifyResult.success());

      onReevaluateGuardsCompleter = Completer();
      observer = AuthLifecycleObserver(
        mockFactorRepo,
        listenerBuilder: (onStateChange) {
          lifecycleListener = AppLifecycleListener(
            onStateChange: onStateChange,
          );
          return lifecycleListener;
        },
        onReevaluateGuards: () => onReevaluateGuardsCompleter.complete(),
      );
    });

    test('Minimize app', () async {
      when(() => mockFactorRepo.hasSecureKey()).thenReturn(true);
      lifecycleListener
        ..onStateChange!(AppLifecycleState.inactive)
        ..onStateChange!(AppLifecycleState.hidden)
        ..onStateChange!(AppLifecycleState.paused);
      verify(() => mockFactorRepo.remove()).called(1);

      observer.dispose();
    });

    test('Maximize app', () async {
      when(() => mockFactorRepo.hasSecureKey()).thenReturn(true);
      lifecycleListener
        ..onStateChange!(AppLifecycleState.inactive)
        ..onStateChange!(AppLifecycleState.hidden)
        ..onStateChange!(AppLifecycleState.paused);
      verify(() => mockFactorRepo.remove()).called(1);

      when(() => mockFactorRepo.hasSecureKey()).thenReturn(false);
      lifecycleListener
        ..onStateChange!(AppLifecycleState.hidden)
        ..onStateChange!(AppLifecycleState.inactive)
        ..onStateChange!(AppLifecycleState.resumed);
      await onReevaluateGuardsCompleter.future
          .timeout(const Duration(seconds: 3));

      observer.dispose();
    });

    test('App is hidden or inactive', () async {
      when(() => mockFactorRepo.hasSecureKey()).thenReturn(true);
      lifecycleListener
        ..onStateChange!(AppLifecycleState.inactive)
        ..onStateChange!(AppLifecycleState.hidden);
      verifyNever(() => mockFactorRepo.remove());

      observer.dispose();
    });
  });
}
