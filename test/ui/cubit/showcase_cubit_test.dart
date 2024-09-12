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

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/model/showcase_cubit.dart';
import 'package:blink_comparison/ui/model/showcase_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/mock.dart';

void main() {
  group('ShowcaseCubit |', () {
    late AppSettings mockPref;
    late ShowcaseCubit cubit;

    setUp(() async {
      mockPref = MockAppSettings();
      when(() => mockPref.completedShowcases).thenAnswer((_) async => {});
      cubit = ShowcaseCubit(mockPref);
      await cubit.load();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Changed',
      build: () => cubit,
      act: (ShowcaseCubit cubit) async {
        when(
          () => mockPref.setCompletedShowcases(any()),
        ).thenAnswer((_) => Future.value());

        await cubit.completed(const ShowcaseType.blinkComparison());
        verify(
          () => mockPref.setCompletedShowcases({
            const ShowcaseType.blinkComparison(),
          }),
        ).called(1);

        await cubit.completed(const ShowcaseType.opacity());
        verify(
          () => mockPref.setCompletedShowcases({
            const ShowcaseType.blinkComparison(),
            const ShowcaseType.opacity(),
          }),
        ).called(1);

        await cubit.completed(const ShowcaseType.refImageBorder());
        verify(
          () => mockPref.setCompletedShowcases({
            const ShowcaseType.blinkComparison(),
            const ShowcaseType.opacity(),
            const ShowcaseType.refImageBorder(),
          }),
        ).called(1);
      },
      expect: () => [
        ShowcaseState.changed({
          const ShowcaseType.blinkComparison(),
        }),
        ShowcaseState.changed({
          const ShowcaseType.blinkComparison(),
          const ShowcaseType.opacity(),
        }),
        ShowcaseState.changed({
          const ShowcaseType.blinkComparison(),
          const ShowcaseType.opacity(),
          const ShowcaseType.refImageBorder(),
        })
      ],
    );
  });
}
