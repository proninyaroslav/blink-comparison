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
import 'dart:typed_data';

import 'package:blink_comparison/core/date_time_provider.dart';
import 'package:blink_comparison/core/encrypt/password_hasher.dart';
import 'package:blink_comparison/core/encrypt/secure_key_factory.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/persistent_auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/auth/model/sign_in_cubit.dart';
import 'package:blink_comparison/ui/auth/model/sign_in_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:convert/convert.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('SignInCubit |', () {
    late PersistentAuthFactorRepository mockPasswordRepo;
    late PasswordHasher mockHasher;
    late DateTimeProvider mockDateTimeProvider;
    late AuthFactorRepository mockFactorRepo;
    late SecureKeyFactory testKeyFactory;
    late SignInCubit cubit;

    setUpAll(() {
      mockPasswordRepo = MockPasswordRepository();
      mockHasher = MockPasswordHasher();
      mockDateTimeProvider = MockDateTimeProvider();
      mockFactorRepo = MockAppSecureKeyRepository();
      testKeyFactory = TestSecureKeyFactory();
      registerFallbackValue(
        MutableAuthFactor.password(value: TestSecureKey(0)),
      );
    });

    setUp(() {
      cubit = SignInCubit(
        mockPasswordRepo,
        mockHasher,
        mockDateTimeProvider,
        mockFactorRepo,
        testKeyFactory,
      );
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Load password',
      build: () => cubit,
      act: (SignInCubit cubit) async {
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer(
          (_) async => const StorageResult(
            PersistentAuthFactor.password(
              hash: 'hash',
              salt: 'salt',
            ),
          ),
        );
        await cubit.load();
      },
      expect: () => [
        const SignInState.passwordLoaded(
          info: PersistentAuthFactor.password(
            hash: 'hash',
            salt: 'salt',
          ),
        ),
      ],
    );

    blocTest(
      'Load password failed',
      build: () => cubit,
      act: (SignInCubit cubit) async {
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer(
          (_) async => StorageResult.error(
            StorageError.database(
              exception: Exception('Failed to get password'),
            ),
          ),
        );
        await cubit.load();
      },
      expect: () => [
        isA<SignInStateLoadPasswordFailed>(),
      ],
    );

    blocTest(
      'No password',
      build: () => cubit,
      act: (SignInCubit cubit) async {
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer(
          (_) async => const StorageResult<PersistentAuthFactor?>(null),
        );
        await cubit.load();
      },
      expect: () => [const SignInState.noPasswordError()],
    );

    blocTest(
      'Password not loaded',
      build: () => cubit,
      act: (SignInCubit cubit) async {
        await cubit.auth('password');
      },
      expect: () => [
        const SignInState.passwordNotLoaded(),
      ],
    );

    blocTest(
      'Failed auth',
      build: () => cubit,
      act: (SignInCubit cubit) async {
        final salt = Uint8List.fromList([1, 2, 3]);
        const passwordStr = 'password';
        final password = TestSecureKey.fromList(utf8.encode(passwordStr));
        final info = PersistentAuthFactor.password(
          hash: hex.encode(utf8.encode('another_password')),
          salt: hex.encode(salt),
        );
        final mockHashKey = MockSecureKey();
        when(() => mockHashKey.extractBytes()).thenReturn(password.list);
        when(() => mockHashKey.dispose()).thenAnswer((_) {});
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer(
          (_) async => StorageResult(info),
        );
        when(
          () => mockHasher.calculate(
            password: password.toImmutable(),
            salt: salt,
          ),
        ).thenAnswer((_) async => mockHashKey);

        final startTime = DateTime.now().toUtc();
        when(() => mockDateTimeProvider.now()).thenReturn(startTime);
        await cubit.load();
        await cubit.auth(passwordStr);
        final endTime = DateTime.now().toUtc();
        final delay = endTime.difference(startTime);
        expect(
          delay >= const Duration(seconds: 3),
          isTrue,
        );
        verify(() => mockHashKey.dispose()).called(1);
      },
      expect: () => [
        SignInState.passwordLoaded(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('another_password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
        SignInState.authInProgress(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('another_password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
        SignInState.authFailed(
            info: PersistentAuthFactor.password(
              hash: hex.encode(utf8.encode('another_password')),
              salt: hex.encode(Uint8List.fromList([1, 2, 3])),
            ),
            reason: const SignInError.wrongPassword()),
      ],
    );

    blocTest(
      'Success auth',
      build: () => cubit,
      act: (SignInCubit cubit) async {
        final salt = Uint8List.fromList([1, 2, 3]);
        const passwordStr = 'password';
        final password = TestSecureKey.fromList(utf8.encode(passwordStr));
        final info = PersistentAuthFactor.password(
          hash: hex.encode(password.list),
          salt: hex.encode(salt),
        );
        final mockHashKey = MockSecureKey();
        when(() => mockHashKey.extractBytes()).thenReturn(password.list);
        when(() => mockHashKey.dispose()).thenAnswer((_) {});
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer(
          (_) async => StorageResult(info),
        );
        when(
          () => mockHasher.calculate(
            password: password.toImmutable(),
            salt: salt,
          ),
        ).thenAnswer((_) async => mockHashKey);
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));
        when(
          () => mockFactorRepo.set(any()),
        ).thenReturn(const AuthFactorModifyResult.success());

        await cubit.load();
        await cubit.auth(passwordStr);

        verify(
          () => mockFactorRepo.set(any()),
        ).called(1);
        verify(() => mockHashKey.dispose()).called(1);
      },
      expect: () => [
        SignInState.passwordLoaded(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
        SignInState.authInProgress(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
        SignInState.authSuccess(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
      ],
    );

    blocTest(
      'Success auth after failed auth',
      build: () => cubit,
      act: (SignInCubit cubit) async {
        final salt = Uint8List.fromList([1, 2, 3]);
        const passwordStr = 'password';
        final password = TestSecureKey.fromList(utf8.encode(passwordStr));
        final info = PersistentAuthFactor.password(
          hash: hex.encode(password.list),
          salt: hex.encode(salt),
        );
        final mockHashKey = MockSecureKey();
        when(() => mockHashKey.dispose()).thenAnswer((_) {});
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer(
          (_) async => StorageResult(info),
        );
        when(() => mockDateTimeProvider.now()).thenReturn(DateTime(2021));
        when(
          () => mockFactorRepo.set(any()),
        ).thenReturn(const AuthFactorModifyResult.success());

        await cubit.load();

        when(() => mockHashKey.extractBytes())
            .thenReturn(utf8.encode('another_password'));
        when(
          () => mockHasher.calculate(
            password: password.toImmutable(),
            salt: salt,
          ),
        ).thenAnswer((_) async => mockHashKey);
        await cubit.auth(passwordStr);

        when(() => mockHashKey.extractBytes()).thenReturn(password.list);
        when(
          () => mockHasher.calculate(
            password: password.toImmutable(),
            salt: salt,
          ),
        ).thenAnswer((_) async => mockHashKey);
        await cubit.auth(passwordStr);
        verify(
          () => mockFactorRepo.set(any()),
        ).called(1);
        verify(() => mockHashKey.dispose()).called(2);
      },
      expect: () => [
        SignInState.passwordLoaded(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
        SignInState.authInProgress(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
        SignInState.authFailed(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
          reason: const SignInError.wrongPassword(),
        ),
        SignInState.authInProgress(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
        SignInState.authSuccess(
          info: PersistentAuthFactor.password(
            hash: hex.encode(utf8.encode('password')),
            salt: hex.encode(Uint8List.fromList([1, 2, 3])),
          ),
        ),
      ],
    );

    blocTest(
      'Password is empty',
      build: () => cubit,
      act: (SignInCubit cubit) async {
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer(
          (_) async => const StorageResult(
            PersistentAuthFactor.password(
              hash: 'hash',
              salt: 'salt',
            ),
          ),
        );
        await cubit.load();
        await cubit.auth('');
      },
      expect: () => [
        const SignInState.passwordLoaded(
          info: PersistentAuthFactor.password(
            hash: 'hash',
            salt: 'salt',
          ),
        ),
        const SignInState.authInProgress(
          info: PersistentAuthFactor.password(
            hash: 'hash',
            salt: 'salt',
          ),
        ),
        const SignInState.authFailed(
          info: PersistentAuthFactor.password(
            hash: 'hash',
            salt: 'salt',
          ),
          reason: SignInError.emptyPassword(),
        ),
      ],
    );
  });
}
