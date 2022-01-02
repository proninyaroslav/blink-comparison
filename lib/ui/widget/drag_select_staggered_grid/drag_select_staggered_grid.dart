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

import 'package:blink_comparison/ui/widget/drag_select_staggered_grid/selectable.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' hide SelectionChangedCallback;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../auto_scroll/auto_scroller_mixin.dart';
import 'drag_select_staggered_grid_controller.dart';
import 'selection.dart';

/// Function signature for creating widgets based on the index and whether
/// it is selected or not.
typedef SelectableWidgetBuilder = Widget Function(
  BuildContext context,
  int index,
  bool selected,
);

/// Staggered grid that supports both dragging and tapping to select its items.
///
/// By default, a long-press enables selection. The user may select/unselect any
/// item by tapping on it. Dragging allows cascade select/unselect. The flag
/// [triggerSelectionOnTap] allows selection to be enabled by tapping.
///
/// Through auto-scroll, this widget adds the ability to select items that go
/// beyond screen bounds without having to stop the drag. To do so, this widget
/// creates two imaginary zones that, if reached by the pointer while dragging,
/// triggers the auto-scroll.
///
/// The first zone is at the top, and triggers backward auto-scrolling.
/// The second is at the bottom, and triggers forward auto-scrolling.
class DragSelectStaggeredGrid extends StatefulWidget {
  /// Default height of the hotspot that enables auto-scroll.
  static const defaultAutoScrollHotspotHeight = 64.0;

  /// Creates a grid that supports both dragging and tapping to select its
  /// items.
  ///
  /// It is possible to customize the height of the hotspot that enables
  /// auto-scroll by specifying [autoScrollHotspotHeight].
  ///
  /// The [gridController] provides information that can be used to update the
  /// UI to indicate whether there are selected items and how many are selected,
  /// besides allowing to directly update the selected items.
  ///
  /// By leaving [unselectOnWillPop] false, the items won't get unselected when
  /// the user tries to pop the route.
  ///
  /// The [itemBuilder] must be used to create widgets based on the index and
  /// whether they are selected or not.
  ///
  /// For information about the clause of the other parameters, refer to
  /// [GridView.builder].
  DragSelectStaggeredGrid.countBuilder({
    Key? key,
    double? autoScrollHotspotHeight,
    ScrollController? scrollController,
    this.gridController,
    this.triggerSelectionOnTap = false,
    this.reverse = false,
    this.padding,
    required this.itemBuilder,
    required this.crossAxisCount,
    this.itemCount,
  })  : autoScrollHotspotHeight =
            autoScrollHotspotHeight ?? defaultAutoScrollHotspotHeight,
        scrollController = scrollController ?? ScrollController(),
        super(key: key);

  /// The height of the hotspot that enables auto-scroll.
  ///
  /// This value is used for both top and bottom hotspots. The width is going to
  /// match the width of the widget.
  ///
  /// Defaults to [defaultAutoScrollHotspotHeight].
  final double autoScrollHotspotHeight;

  /// Refer to [ScrollView.controller].
  final ScrollController scrollController;

  /// Controller of the grid.
  ///
  /// Provides information that can be used to update the UI to indicate whether
  /// there are selected items and how many are selected.
  ///
  /// Also allows to directly update the selected items.
  ///
  /// This controller may not be used after [DragSelectStaggeredGridState] disposes,
  /// since [DragSelectStaggeredGridController.dispose] will get called and the
  /// listeners are going to be cleaned up.
  final DragSelectStaggeredGridController? gridController;

  /// Whether should start selection by tapping instead of long-pressing.
  ///
  /// Defaults to false.
  final bool triggerSelectionOnTap;

  /// Refer to [ScrollView.reverse].
  final bool reverse;

  /// Refer to [BoxScrollView.padding].
  final EdgeInsetsGeometry? padding;

  final int crossAxisCount;
  final IndexedWidgetBuilder itemBuilder;
  final int? itemCount;

  @override
  DragSelectStaggeredGridState createState() => DragSelectStaggeredGridState();
}

/// The state for a grid that supports both dragging and tapping to select its
/// items.
@visibleForTesting
class DragSelectStaggeredGridState extends State<DragSelectStaggeredGrid>
    with AutoScrollerMixin<DragSelectStaggeredGrid> {
  final _elements = <SelectableElement>{};
  final _selectionManager = SelectionManager();
  LongPressMoveUpdateDetails? _lastMoveUpdateDetails;
  LocalHistoryEntry? _historyEntry;

  DragSelectStaggeredGridController? get _gridController =>
      widget.gridController;

  /// Indexes selected by dragging or tapping.
  Set<int> get selectedIndexes => _selectionManager.selectedIndexes;

  /// Whether any item got selected.
  bool get isSelecting => selectedIndexes.isNotEmpty;

  /// Whether drag gesture is being performed.
  bool get isDragging =>
      (_selectionManager.dragStartIndex != -1) &&
      (_selectionManager.dragEndIndex != -1);

  @override
  double get autoScrollHotspotHeight => widget.autoScrollHotspotHeight;

  @override
  ScrollController get scrollController => widget.scrollController;

  @override
  void handleScroll() {
    final details = _lastMoveUpdateDetails;
    if (details != null) _handleLongPressMoveUpdate(details);
  }

  @override
  void initState() {
    super.initState();
    final controller = _gridController;
    if (controller != null) {
      controller.addListener(_onSelectionChanged);
      _selectionManager.selectedIndexes = controller.value.selectedIndexes;
    }
  }

  @override
  void dispose() {
    _gridController?.removeListener(_onSelectionChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTapUp: _handleTapUp,
      onLongPressStart: _handleLongPressStart,
      onLongPressMoveUpdate: _handleLongPressMoveUpdate,
      onLongPressEnd: _handleLongPressEnd,
      behavior: HitTestBehavior.translucent,
      child: IgnorePointer(
        ignoring: isDragging,
        child: MasonryGridView.count(
          controller: widget.scrollController,
          reverse: widget.reverse,
          padding: widget.padding,
          itemCount: widget.itemCount,
          crossAxisCount: widget.crossAxisCount,
          itemBuilder: (context, index) {
            return IgnorePointer(
              ignoring: isSelecting || widget.triggerSelectionOnTap,
              child: Selectable(
                index: index,
                onMountElement: _elements.add,
                onUnmountElement: _elements.remove,
                child: widget.itemBuilder(context, index),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onSelectionChanged() {
    final controller = _gridController;
    if (controller != null) {
      final controllerSelectedIndexes = controller.value.selectedIndexes;
      if (!setEquals(controllerSelectedIndexes, selectedIndexes)) {
        _selectionManager.selectedIndexes = controllerSelectedIndexes;
      }
    }
  }

  void _handleTapUp(TapUpDetails details) {
    if (isSelecting || widget.triggerSelectionOnTap) {
      final tapIndex = _findIndexOfSelectable(details.localPosition);

      if (tapIndex != -1) {
        setState(() => _selectionManager.tap(tapIndex));
        _notifySelectionChange();
        _updateLocalHistory();
      }
    }
  }

  void _handleLongPressStart(LongPressStartDetails details) {
    final pressIndex = _findIndexOfSelectable(details.localPosition);

    if (pressIndex != -1) {
      setState(() => _selectionManager.startDrag(pressIndex));
      _notifySelectionChange();
      _updateLocalHistory();
    }
  }

  void _handleLongPressMoveUpdate(LongPressMoveUpdateDetails details) {
    if (!isDragging) return;

    _lastMoveUpdateDetails = details;
    final dragIndex = _findIndexOfSelectable(details.localPosition);

    if ((dragIndex != -1) && (dragIndex != _selectionManager.dragEndIndex)) {
      setState(() => _selectionManager.updateDrag(dragIndex));
      _notifySelectionChange();
    }

    if (isInsideUpperAutoScrollHotspot(details.localPosition)) {
      if (widget.reverse) {
        startAutoScrollingForward();
      } else {
        startAutoScrollingBackward();
      }
    } else if (isInsideLowerAutoScrollHotspot(details.localPosition)) {
      if (widget.reverse) {
        startAutoScrollingBackward();
      } else {
        startAutoScrollingForward();
      }
    } else {
      stopScrolling();
    }
  }

  void _handleLongPressEnd(LongPressEndDetails details) {
    setState(_selectionManager.endDrag);
    stopScrolling();
  }

  void _updateLocalHistory() {
    final route = ModalRoute.of(context);
    if (route == null) return;

    if (isSelecting) {
      if (_historyEntry == null) {
        final entry = LocalHistoryEntry(onRemove: () {
          setState(_selectionManager.clear);
          _notifySelectionChange();
          _historyEntry = null;
        });
        route.addLocalHistoryEntry(entry);
        _historyEntry = entry;
      }
    } else {
      final entry = _historyEntry;
      if (entry != null) {
        route.removeLocalHistoryEntry(entry);
        _historyEntry = null;
      }
    }
  }

  int _findIndexOfSelectable(Offset offset) {
    final ancestor = context.findRenderObject();
    var elementFinder = Set.of(_elements).firstWhereOrNull;

    // Conceptually, `Set.singleWhere()` is the safer option, however we're
    // avoiding to iterate over the whole `Set` to improve the performance.
    assert(() {
      elementFinder = Set.of(_elements).singleWhereOrNull;
      return true;
    }());

    final element = elementFinder(
      (element) => element.containsOffset(ancestor, offset),
    );

    return (element == null) ? -1 : element.widget.index;
  }

  void _notifySelectionChange() {
    _gridController?.value = Selection(_selectionManager.selectedIndexes);
  }
}
