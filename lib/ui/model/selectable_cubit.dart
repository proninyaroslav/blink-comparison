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

import 'package:blink_comparison/ui/model/selectable_state.dart';
import 'package:bloc/bloc.dart';

abstract class SelectableCubit<T> extends Cubit<SelectableState<T>> {
  SelectableCubit() : super(SelectableState<T>.initial());

  void select(T item) {
    if (state case SelectableStateSelected(:final items)) {
      emit(SelectableState<T>.selected({...items, item}));
    } else {
      emit(SelectableState<T>.selected({item}));
    }
  }

  void selectSet(Set<T> items) {
    if (state case SelectableStateSelected(items: final selectedItems)) {
      emit(SelectableState<T>.selected({...items, ...selectedItems}));
    } else {
      emit(SelectableState<T>.selected(items));
    }
  }

  void unselect(T item) {
    if (state case SelectableStateSelected(:final items)) {
      final newItems = items.where((i) => i != item).toSet();
      if (newItems.isNotEmpty) {
        emit(SelectableState<T>.selected(newItems));
      } else {
        emit(SelectableState<T>.noSelection());
      }
    }
  }

  void clearSelection() {
    emit(SelectableState<T>.noSelection());
  }

  void replaceSet(Set<T> items) {
    emit(SelectableState<T>.selected(items));
  }
}
