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

import 'package:blink_comparison/ui/comparison/comparison.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ComparisonSettingsCubit |', () {
    late ComparisonSettingsCubit cubit;

    setUp(() {
      cubit = ComparisonSettingsCubit(refImageBorderColor: 0xffffffff);
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Change reference image border color',
      build: () => cubit,
      act: (ComparisonSettingsCubit cubit) {
        cubit.setRefImageBorderColor(0x00000000);
        cubit.setRefImageBorderColor(0xffffffff);
      },
      expect: () => [
        const ComparisonSettingsState.changed(
          refImageBorderColor: 0x00000000,
        ),
        const ComparisonSettingsState.changed(
          refImageBorderColor: 0xffffffff,
        ),
      ],
    );
  });
}
