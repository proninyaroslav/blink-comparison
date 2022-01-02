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

import 'package:blink_comparison/ui/cubit/selectable_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

class _TestSelectableCubit<T> extends SelectableCubit<T> {}

void main() {
  group('SelectableCubit |', () {
    late SelectableCubit<int> cubit;

    setUp(() async {
      cubit = _TestSelectableCubit();
    });

    blocTest(
      'Initial state',
      build: () => cubit,
      expect: () => [],
    );

    blocTest(
      'Select',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.select(1);
        cubit.select(2);
        cubit.select(3);
      },
      expect: () => [
        const SelectableState.selected({1}),
        const SelectableState.selected({1, 2}),
        const SelectableState.selected({1, 2, 3}),
      ],
    );

    blocTest(
      'Select set',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.selectSet({1, 2, 3});
      },
      expect: () => [
        const SelectableState.selected({1, 2, 3}),
      ],
    );

    blocTest(
      'Unselect',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.select(1);
        cubit.select(2);
        cubit.select(3);
        cubit.unselect(2);
        cubit.unselect(1);
        cubit.unselect(3);
      },
      expect: () => [
        const SelectableState.selected({1}),
        const SelectableState.selected({1, 2}),
        const SelectableState.selected({1, 2, 3}),
        const SelectableState.selected({1, 3}),
        const SelectableState.selected({3}),
        const SelectableState<int>.noSelection(),
      ],
    );

    blocTest(
      'Clear selection',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.select(1);
        cubit.select(2);
        cubit.select(3);
        cubit.clearSelection();
      },
      expect: () => [
        const SelectableState.selected({1}),
        const SelectableState.selected({1, 2}),
        const SelectableState.selected({1, 2, 3}),
        const SelectableState<int>.noSelection(),
      ],
    );

    blocTest(
      'Replace set',
      build: () => cubit,
      act: (SelectableCubit<int> cubit) {
        cubit.selectSet({1, 2, 3});
        cubit.replaceSet({4, 5, 6});
      },
      expect: () => [
        const SelectableState.selected({1, 2, 3}),
        const SelectableState.selected({4, 5, 6}),
      ],
    );
  });
}
