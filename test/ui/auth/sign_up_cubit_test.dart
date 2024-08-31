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

import 'package:blink_comparison/core/encrypt/secure_key_factory.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_cubit.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('SignUpCubit |', () {
    late final PasswordRepository mockPasswordRepo;
    late final AuthFactorRepository mockAppSecureKeyRepo;
    late final SecureKeyFactory testKeyFactory;
    late SignUpCubit cubit;

    setUpAll(() {
      mockPasswordRepo = MockPasswordRepository();
      mockAppSecureKeyRepo = MockAppSecureKeyRepository();
      testKeyFactory = TestSecureKeyFactory();
      registerFallbackValue(ImmutableSecureKey(TestSecureKey(0)));
      registerFallbackValue(
        MutableAuthFactor.password(value: TestSecureKey(0)),
      );
    });

    setUp(() {
      cubit = SignUpCubit(
        mockPasswordRepo,
        mockAppSecureKeyRepo,
        testKeyFactory,
      );
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change password',
      build: () => cubit,
      act: (SignUpCubit cubit) {
        cubit.passwordChanged('123');
        cubit.passwordChanged('12345');
      },
      expect: () => [
        const SignUpState.passwordChanged(
          password: Password(value: '123'),
          repeatPassword: RepeatPassword(),
        ),
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(),
        ),
      ],
    );

    blocTest(
      'Change repeat password',
      build: () => cubit,
      act: (SignUpCubit cubit) {
        cubit.repeatPasswordChanged('123');
        cubit.repeatPasswordChanged('12345');
      },
      expect: () => [
        const SignUpState.passwordChanged(
          password: Password(),
          repeatPassword: RepeatPassword(value: '123'),
        ),
        const SignUpState.passwordChanged(
          password: Password(),
          repeatPassword: RepeatPassword(value: '12345'),
        ),
      ],
    );

    blocTest(
      'Submit empty password',
      build: () => cubit,
      act: (SignUpCubit cubit) async {
        await cubit.submit();
        cubit.repeatPasswordChanged('123');
        await cubit.submit();
      },
      expect: () => [
        const SignUpState.invalidPassword(
          password: Password(
            error: PasswordError.empty(),
          ),
          repeatPassword: RepeatPassword(
            error: RepeatPasswordError.empty(),
          ),
        ),
        const SignUpState.passwordChanged(
          password: Password(
            error: PasswordError.empty(),
          ),
          repeatPassword: RepeatPassword(value: '123'),
        ),
        const SignUpState.invalidPassword(
          password: Password(
            error: PasswordError.empty(),
          ),
          repeatPassword: RepeatPassword(value: '123'),
        )
      ],
    );

    blocTest(
      'Submit too short password',
      build: () => cubit,
      act: (SignUpCubit cubit) async {
        cubit.passwordChanged(List.filled(Password.minLength - 1, '0').join());
        cubit.repeatPasswordChanged('123');
        await cubit.submit();
      },
      expect: () => [
        SignUpState.passwordChanged(
          password: Password(
            value: List.filled(Password.minLength - 1, '0').join(),
          ),
          repeatPassword: const RepeatPassword(),
        ),
        SignUpState.passwordChanged(
          password: Password(
            value: List.filled(Password.minLength - 1, '0').join(),
          ),
          repeatPassword: const RepeatPassword(value: '123'),
        ),
        SignUpState.invalidPassword(
          password: Password(
            value: List.filled(Password.minLength - 1, '0').join(),
            error: const PasswordError.tooShort(),
          ),
          repeatPassword: const RepeatPassword(value: '123'),
        )
      ],
    );

    blocTest(
      'Submit too long password',
      build: () => cubit,
      act: (SignUpCubit cubit) async {
        cubit.passwordChanged(List.filled(Password.maxLength + 1, '0').join());
        cubit.repeatPasswordChanged('123');
        await cubit.submit();
      },
      expect: () => [
        SignUpState.passwordChanged(
          password: Password(
            value: List.filled(Password.maxLength + 1, '0').join(),
          ),
          repeatPassword: const RepeatPassword(),
        ),
        SignUpState.passwordChanged(
          password: Password(
            value: List.filled(Password.maxLength + 1, '0').join(),
          ),
          repeatPassword: const RepeatPassword(value: '123'),
        ),
        SignUpState.invalidPassword(
          password: Password(
            value: List.filled(Password.maxLength + 1, '0').join(),
            error: const PasswordError.tooLong(),
          ),
          repeatPassword: const RepeatPassword(value: '123'),
        )
      ],
    );

    blocTest(
      'Submit',
      build: () => cubit,
      act: (SignUpCubit cubit) async {
        const password = '12345';
        when(
          () => mockPasswordRepo.insert(
            type: const PasswordType.encryptKey(),
            password: any(named: 'password'),
          ),
        ).thenAnswer(
          (_) async => const StorageResult(
            PasswordInfo(
              id: 'test',
              hash: 'hash',
              salt: 'salt',
            ),
          ),
        );
        when(() => mockAppSecureKeyRepo.set(any()))
            .thenReturn(AuthFactorModifyResult.success());
        cubit.passwordChanged(password);
        cubit.repeatPasswordChanged(password);
        await cubit.submit();
        verify(
          () => mockPasswordRepo.insert(
            type: const PasswordType.encryptKey(),
            password: any(named: 'password'),
          ),
        ).called(1);
        verify(() => mockAppSecureKeyRepo.set(any())).called(1);
      },
      expect: () => [
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(),
        ),
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(value: '12345'),
        ),
        const SignUpState.savingPassword(),
        const SignUpState.savedAndAuthorized(),
      ],
    );

    blocTest(
      'Password mismatch',
      build: () => cubit,
      act: (SignUpCubit cubit) async {
        const password = '12345';
        when(
          () => mockPasswordRepo.insert(
            type: const PasswordType.encryptKey(),
            password: any(named: 'password'),
          ),
        ).thenAnswer(
          (_) async => const StorageResult(
            PasswordInfo(
              id: 'test',
              hash: 'hash',
              salt: 'salt',
            ),
          ),
        );
        cubit.passwordChanged(password);
        cubit.repeatPasswordChanged('123');
        await cubit.submit();
      },
      expect: () => [
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(),
        ),
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(value: '123'),
        ),
        const SignUpState.passwordMismatch(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(
            value: '123',
            error: RepeatPasswordError.mismatch(),
          ),
        ),
      ],
    );

    blocTest(
      'Submit after failed saving',
      build: () => cubit,
      act: (SignUpCubit cubit) async {
        const password = '12345';
        when(() => mockAppSecureKeyRepo.set(any()))
            .thenReturn(AuthFactorModifyResult.success());
        when(
          () => mockPasswordRepo.insert(
            type: const PasswordType.encryptKey(),
            password: any(named: 'password'),
          ),
        ).thenAnswer(
          (_) async => StorageResult.error(
            StorageError.database(
              exception: Exception('Failed to insert password'),
            ),
          ),
        );
        cubit.passwordChanged(password);
        cubit.repeatPasswordChanged(password);
        await cubit.submit();

        when(
          () => mockPasswordRepo.insert(
            type: const PasswordType.encryptKey(),
            password: any(named: 'password'),
          ),
        ).thenAnswer(
          (_) async => const StorageResult(
            PasswordInfo(
              id: 'test',
              hash: 'hash',
              salt: 'salt',
            ),
          ),
        );
        await cubit.submit();
        verify(() => mockAppSecureKeyRepo.set(any())).called(1);
      },
      expect: () => [
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(),
        ),
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(value: '12345'),
        ),
        const SignUpState.savingPassword(),
        isA<SignUpStateSavePasswordFailed>(),
        const SignUpState.savingPassword(),
        const SignUpState.savedAndAuthorized(),
      ],
    );

    blocTest(
      'Password changed after success saving',
      build: () => cubit,
      act: (SignUpCubit cubit) async {
        const password = '12345';
        when(
          () => mockPasswordRepo.insert(
            type: const PasswordType.encryptKey(),
            password: any(named: 'password'),
          ),
        ).thenAnswer(
          (_) async => const StorageResult(
            PasswordInfo(
              id: 'test',
              hash: 'hash',
              salt: 'salt',
            ),
          ),
        );
        when(() => mockAppSecureKeyRepo.set(any()))
            .thenReturn(AuthFactorModifyResult.success());
        cubit.passwordChanged(password);
        cubit.repeatPasswordChanged(password);
        await cubit.submit();
        cubit.passwordChanged('123456');
        verify(() => mockAppSecureKeyRepo.set(any())).called(1);
      },
      expect: () => [
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(),
        ),
        const SignUpState.passwordChanged(
          password: Password(value: '12345'),
          repeatPassword: RepeatPassword(value: '12345'),
        ),
        const SignUpState.savingPassword(),
        const SignUpState.savedAndAuthorized(),
      ],
    );
  });
}
