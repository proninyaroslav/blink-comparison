// Copyright (c) 2019 Simon Lightfoot
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

/// Function signature for notifying whenever the element is mounted or
/// unmounted.
typedef ElementUpdateCallback = void Function(SelectableElement);

/// Helps to track the elements of the grid items.
///
/// This provides callbacks that allow storing the elements, so the method
/// [SelectableElement.containsOffset] can be used to determine which grid item
/// is at a given offset.
class Selectable extends ProxyWidget {
  /// Creates a [Selectable].
  const Selectable({
    Key? key,
    required this.index,
    required this.onMountElement,
    required this.onUnmountElement,
    required Widget child,
  }) : super(key: key, child: child);

  /// Widget index inside the grid.
  final int index;

  /// Callback that notifies whenever the element is mounted.
  final ElementUpdateCallback onMountElement;

  /// Callback that notifies whenever the element is unmounted.
  final ElementUpdateCallback onUnmountElement;

  @override
  SelectableElement createElement() => SelectableElement(this);
}

/// The element for a widget that helps to track the elements of the grid items.
class SelectableElement extends ProxyElement {
  /// Creates the element for a widget that helps to track the elements of the
  /// grid items.
  SelectableElement(Selectable widget) : super(widget);

  @override
  Selectable get widget => super.widget as Selectable;

  @override
  void mount(Element? parent, dynamic newSlot) {
    super.mount(parent, newSlot);
    widget.onMountElement.call(this);
  }

  @override
  void unmount() {
    widget.onUnmountElement.call(this);
    super.unmount();
  }

  /// Whether the [offset] is in the bounds of this element.
  bool containsOffset(RenderObject? ancestor, Offset offset) {
    final box = renderObject as RenderBox;
    final rect = box.localToGlobal(Offset.zero, ancestor: ancestor) & box.size;
    return rect.contains(offset);
  }

  @override
  void notifyClients(ProxyWidget oldWidget) {}
}
