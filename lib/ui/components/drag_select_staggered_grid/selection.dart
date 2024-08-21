// Copyright (c) 2019 Simon Lightfoot
// Copyright (c) 2021 Yaroslav Pronin
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// Holds and calculates selected indexes based on gestures.
///
/// This class is conceptually tied to UI gestures, so its methods have names
/// that suggest interactions (specifically tap and drag), however it just holds
/// data and makes some calculations.
///
/// This behavior is unusual, but in this situation it helps to keep everything
/// more didactic, since you can easily link the UI action to it's consequence
/// regarding selection.
class SelectionManager {
  /// The index in which the drag started.
  int get dragStartIndex => _dragStartIndex;
  var _dragStartIndex = -1;

  /// The last known index which was dragged by.
  int get dragEndIndex => _dragEndIndex;
  var _dragEndIndex = -1;

  /// Gets the indexes that are currently selected.
  ///
  /// Indexes can be directly selected, with [_selectedIndexes] setter, and
  /// selected by gestures, with [startDrag], [updateDrag], [endDrag] and [tap].
  Set<int> get selectedIndexes => UnmodifiableSetView(_selectedIndexes);

  /// Sets the indexes that are currently selected.
  ///
  /// Any drag that is currently active will be interrupted.
  set selectedIndexes(Set<int> selectedIndexes) {
    endDrag();
    _selectedIndexes = Set.of(selectedIndexes);
  }

  var _selectedIndexes = <int>{};

  /// Removes all indexes from [_selectedIndexes].
  ///
  /// Any drag that is currently active will be interrupted.
  void clear() {
    endDrag();
    _selectedIndexes.clear();
  }

  /// Adds the [index] to [_selectedIndexes], or removes it if it's already
  /// there.
  void tap(int index) {
    if (_selectedIndexes.contains(index)) {
      _selectedIndexes.remove(index);
    } else {
      _selectedIndexes.add(index);
    }
  }

  /// Adds the [index] to [_selectedIndexes] and allows [updateDrag] calls.
  void startDrag(int index) {
    _dragStartIndex = _dragEndIndex = index;
    _selectedIndexes.add(index);
  }

  /// Updates the [_selectedIndexes], adding/removing one or more indexes, based
  /// on [index], [dragStartIndex] and [dragEndIndex].
  ///
  /// Does nothing if:
  ///
  ///   * [index] is negative.
  ///   * Drag didn't start.
  void updateDrag(int index) {
    if (index < 0) return;
    if ((_dragStartIndex == -1) || (_dragEndIndex == -1)) return;

    // If the drag is both forward and backward, drag to the start index,
    // and then continue the drag, whether it is forward or backward.
    if ((index < dragStartIndex) && (index < dragEndIndex) ||
        (index > dragStartIndex) && (index > dragEndIndex)) {
      _updateDragForwardOrBackward(_dragStartIndex);
      _dragEndIndex = _dragStartIndex;
    }

    _updateDragForwardOrBackward(index);
    _dragEndIndex = index;
  }

  /// Finishes the current drag.
  void endDrag() {
    _dragStartIndex = -1;
    _dragEndIndex = -1;
  }

  /// Updates the [_selectedIndexes], adding/removing one or more indexes, based
  /// on [index], [dragStartIndex] and [dragEndIndex].
  ///
  /// This cannot handle a drag that is both forward and backward (and vice
  /// versa). It's possible to do so by, while dragging, jumping from an index
  /// bigger than the start index to an index smaller that the start index.
  void _updateDragForwardOrBackward(int index) {
    final indexesDraggedBy = _intSetFromRange(index, _dragEndIndex);

    void removeIndexesDraggedByExceptTheCurrent() {
      indexesDraggedBy.remove(index);
      _selectedIndexes.removeAll(indexesDraggedBy);
    }

    final isSelectingForward = index > _dragStartIndex;
    final isSelectingBackward = index < _dragStartIndex;

    if (isSelectingForward) {
      final isUnselecting = index < _dragEndIndex;
      if (isUnselecting) {
        removeIndexesDraggedByExceptTheCurrent();
      } else {
        _selectedIndexes.addAll(indexesDraggedBy);
      }
    } else if (isSelectingBackward) {
      final isUnselecting = index > _dragEndIndex;
      if (isUnselecting) {
        removeIndexesDraggedByExceptTheCurrent();
      } else {
        _selectedIndexes.addAll(indexesDraggedBy);
      }
    } else {
      removeIndexesDraggedByExceptTheCurrent();
    }
  }

  /// Returns a set of int with all the numbers from [start] to [end].
  ///
  /// Both [start] and [end] are included. As a consequence, an empty set is
  /// never going to be returned, even if [start] and [end] are equal.
  Set<int> _intSetFromRange(int start, int end) {
    final actualStart = (start < end) ? start : end;
    final actualEnd = (start < end) ? end : start;
    return List.generate(
      (actualEnd - actualStart) + 1,
      (index) => actualStart + index,
    ).toSet();
  }
}

/// Information about the grid selection.
@immutable
class Selection {
  /// Creates a new [Selection].
  Selection(Set<int> selectedIndexes)
      : selectedIndexes = UnmodifiableSetView(Set.of(selectedIndexes));

  /// Creates a new [Selection] with no selected items.
  const Selection.empty() : selectedIndexes = const {};

  /// Grid indexes that are selected.
  final Set<int> selectedIndexes;

  /// Amount of selected indexes.
  int get amount => selectedIndexes.length;

  /// Whether the grid is currently in select mode.
  bool get isSelecting => amount > 0;

  @override
  String toString() => 'Selection{_selectedIndexes: $selectedIndexes}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Selection &&
          runtimeType == other.runtimeType &&
          setEquals(selectedIndexes, other.selectedIndexes);

  @override
  int get hashCode => const SetEquality<int>().hash(selectedIndexes);
}
