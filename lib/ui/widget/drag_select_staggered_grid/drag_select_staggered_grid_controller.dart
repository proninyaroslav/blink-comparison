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

import 'package:flutter/widgets.dart';

import 'drag_select_staggered_grid.dart';
import 'selection.dart';

/// Function signature for notifying whenever the selection changes.
typedef SelectionChangedCallback = void Function(Selection selection);

/// A controller for [DragSelectStaggeredGrid].
///
/// This provides information that can be used to update the UI to indicate
/// whether there are selected items and how many are selected.
///
/// It also allows to directly update the selected items.
class DragSelectStaggeredGridController extends ValueNotifier<Selection> {
  /// Creates a controller for [DragSelectStaggeredGrid].
  ///
  /// The initial selection is [Selection.empty], unless a different one is
  /// provided.
  DragSelectStaggeredGridController([Selection? selection])
      : super(selection ?? const Selection.empty());

  /// Clears the grid selection.
  void clear() => value = const Selection.empty();
}
