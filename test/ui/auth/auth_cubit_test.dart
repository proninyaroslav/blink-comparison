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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/persistent_auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/auth/model/auth_cubit.dart';
import 'package:blink_comparison/ui/auth/model/auth_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';
import '../../mocktail_extensions.dart';

void main() {
  group('AuthCubit |', () {
    late PersistentAuthFactorRepository mockPasswordRepo;
    late AppSettings mockPref;
    late AuthCubit cubit;

    setUpAll(() {
      mockPasswordRepo = MockPasswordRepository();
      mockPref = MockAppSettings();
      registerFallbackValue(EncryptionPreference.none);
      when(() => mockPref.setEncryptionPreference(any()))
          .thenAnswer((_) async {});
    });

    setUp(() {
      cubit = AuthCubit(
        mockPasswordRepo,
        mockPref,
      );
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'No encryption preferences',
      build: () => cubit,
      act: (AuthCubit cubit) async {
        when(() => mockPref.encryptionPreferenceSync).thenReturn(null);
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer((_) async => const StorageResult(null));
        await cubit.load();
      },
      expect: () => [
        const AuthState.noEncryptPreferences(),
      ],
    );

    blocTest(
      'No encryption preferences; password already has',
      build: () => cubit,
      act: (AuthCubit cubit) async {
        when(() => mockPref.encryptionPreferenceSync)
            .thenReturnInOrder([null, const EncryptionPreference.password()]);
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer((_) async => const StorageResult(
            PersistentAuthFactor.password(hash: 'hash', salt: 'salt')));
        await cubit.load();
        verify(() => mockPref.setEncryptionPreference(
            const EncryptionPreference.password())).called(1);
      },
      expect: () => [
        const AuthState.signInRequired(),
      ],
    );

    blocTest(
      'None encryption preference',
      build: () => cubit,
      act: (AuthCubit cubit) async {
        when(() => mockPref.encryptionPreferenceSync)
            .thenReturn(const EncryptionPreference.none());
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer((_) async => const StorageResult(null));
        await cubit.load();
      },
      expect: () => [
        const AuthState.noAuthRequired(),
      ],
    );

    blocTest(
      'Sign up required',
      build: () => cubit,
      act: (AuthCubit cubit) async {
        when(() => mockPref.encryptionPreferenceSync)
            .thenReturn(const EncryptionPreference.password());
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer((_) async => const StorageResult(null));
        await cubit.load();
      },
      expect: () => [
        const AuthState.signUpRequired(),
      ],
    );

    blocTest(
      'Sign in required',
      build: () => cubit,
      act: (AuthCubit cubit) async {
        when(() => mockPref.encryptionPreferenceSync)
            .thenReturn(const EncryptionPreference.password());
        when(
          () => mockPasswordRepo.getById(PersistentAuthFactorId.password),
        ).thenAnswer((_) async => const StorageResult(
            PersistentAuthFactor.password(hash: 'hash', salt: 'salt')));
        await cubit.load();
      },
      expect: () => [
        const AuthState.signInRequired(),
      ],
    );

    blocTest(
      'Load failed',
      build: () => cubit,
      act: (AuthCubit cubit) async {
        when(() => mockPref.encryptionPreferenceSync)
            .thenReturn(const EncryptionPreference.password());
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
        isA<AuthStateError>(),
      ],
    );
  });
}
