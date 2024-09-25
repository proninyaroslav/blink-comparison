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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/settings/model/behavior_cubit.dart';
import 'package:blink_comparison/ui/settings/model/behavior_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('BehaviorSettingsCubit |', () {
    late BehaviorSettingsCubit cubit;
    late AuthFactorRepository mockFactorRepo;
    late PasswordRepository mockPasswordRepo;
    late AppSettings mockPref;

    setUpAll(() {
      mockPref = MockAppSettings();
      mockFactorRepo = MockAuthFactorRepository();
      mockPasswordRepo = MockPasswordRepository();
      registerFallbackValue(const AppThemeType.system());
      registerFallbackValue(const AppLocaleType.system());
    });

    setUp(() async {
      when(() => mockPref.encryptionPreferenceSync)
          .thenReturn(const EncryptionPreference.none());
      cubit = BehaviorSettingsCubit(
        mockPref,
        mockFactorRepo,
        mockPasswordRepo,
      );
      await cubit.load();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change encryption preference',
      build: () => cubit,
      act: (BehaviorSettingsCubit cubit) async {
        when(
          () => mockPref.setEncryptionPreference(any()),
        ).thenAnswer((_) => Future.value());

        await cubit
            .setEncryptionPreference(const EncryptionPreference.password());
        verify(
          () => mockPref
              .setEncryptionPreference(const EncryptionPreference.password()),
        ).called(1);

        const passwordInfo = PasswordInfo(
          id: 'id',
          hash: 'hash',
          salt: 'salt',
        );
        when(() => mockFactorRepo.remove())
            .thenAnswer((_) => const AuthFactorModifyResult.success());
        when(() => mockPasswordRepo.getByType(const PasswordType.encryptKey()))
            .thenAnswer((_) async => const StorageResult(passwordInfo));
        when(() => mockPasswordRepo.delete(passwordInfo))
            .thenAnswer((_) async => StorageResult.empty);

        await cubit.setEncryptionPreference(const EncryptionPreference.none());
        verify(
          () => mockPref
              .setEncryptionPreference(const EncryptionPreference.none()),
        ).called(1);

        verify(() => mockFactorRepo.remove()).called(1);
        verify(() =>
                mockPasswordRepo.getByType(const PasswordType.encryptKey()))
            .called(1);
        verify(() => mockPasswordRepo.delete(passwordInfo)).called(1);
      },
      expect: () => [
        const BehaviorState.encryptionChanged(
          BehaviorInfo(
            encryption: EncryptionPreference.password(),
          ),
        ),
        const BehaviorState.encryptionChanged(
          BehaviorInfo(
            encryption: EncryptionPreference.none(),
          ),
        ),
      ],
    );
  });
}
