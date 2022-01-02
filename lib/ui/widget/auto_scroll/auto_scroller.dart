// Copyright (C) 2021 Hugo Passos
// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'dart:async';

import 'package:flutter/widgets.dart';

import 'auto_scroll.dart';

/// Allows automatic scrolling by joining [autoScroll]'s and [controller]'s
/// information and features.
@immutable
class AutoScroller {
  /// The duration of the overscroll.
  static const overscrollDuration = Duration(milliseconds: 300);

  /// The distance traveled by the overscroll.
  static const amountOfOverscrollOnScrollStop = 100;

  /// The duration, in milliseconds, that it'll take to scroll by each pixel.
  static const scrollDurationPerPixelInMs = 2;

  /// Creates a new [AutoScroller].
  ///
  /// The [autoScroll] provides the necessary information to perform the scroll,
  /// such as the direction.
  ///
  /// The [controller] allows the actual scroll, but also provides some
  /// information, like the current position of the scroll-view.
  AutoScroller(this.autoScroll, this.controller)
      : currentPosition = controller.hasClients ? controller.offset : null;

  /// Information about the scroll that is possibly going to be performed.
  final AutoScroll autoScroll;

  /// Controller attached to a scrollable widget, which allows the scroll.
  final ScrollController controller;

  /// Current scroll position of the scrollable widget.
  ///
  /// May be null if [controller] has no [ScrollPosition] attached to
  /// [controller].
  final double? currentPosition;

  /// Returns whether auto-scroll must be performed.
  bool get mustScroll =>
      autoScroll.stopEvent.isNotConsumed || autoScroll.isScrolling;

  /// Returns the position in which the [controller] would be after performing
  /// an overscroll.
  @visibleForTesting
  double get positionAfterOverscroll =>
      autoScroll.direction == AutoScrollDirection.forward
          ? currentPosition! + amountOfOverscrollOnScrollStop
          : currentPosition! - amountOfOverscrollOnScrollStop;

  /// Returns the target position of the auto-scroll.
  ///
  /// If the auto-scroll direction is forward, we want to get the last position.
  /// If the auto-scroll direction is backward, we want to get the first
  /// position.
  @visibleForTesting
  double get targetPositionOfTheAutoScroll =>
      autoScroll.direction == AutoScrollDirection.forward
          ? controller.position.maxScrollExtent
          : 0;

  /// Returns whether it is able to perform auto-scroll.
  ///
  /// Rarely returns `false` (only when [ScrollController] has never been
  /// attached or the direction of auto-scroll in `null`).
  ///
  /// Errors are guaranteed to be thrown when trying to perform auto-scroll when
  /// this method returns `false`.
  @visibleForTesting
  bool get isAbleToScroll =>
      currentPosition != null && autoScroll.direction != null;

  /// Returns whether there's anything to scroll.
  ///
  /// If the auto-scroll direction is forward we want to know whether we didn't
  /// reach the end of the [GridView].
  /// If the auto-scroll direction is backward we want to know whether we didn't
  /// reach the top of the [GridView].
  @visibleForTesting
  bool get hasAnythingLeftToScroll =>
      ((autoScroll.direction == AutoScrollDirection.forward) &&
          (currentPosition! < controller.position.maxScrollExtent)) ||
      ((autoScroll.direction == AutoScrollDirection.backward) &&
          (currentPosition! > 0));

  /// Performs a scroll or, if the user stopped dragging, an elegant overscroll.
  ///
  /// Does nothing if either [mustScroll], [isAbleToScroll] or
  /// [hasAnythingLeftToScroll] is false.
  Future<void> scroll() async {
    if (!isAbleToScroll) return;
    if (!hasAnythingLeftToScroll) return;

    if (autoScroll.stopEvent.consume()) {
      await performOverscrollOfScrollStop();
    } else if (autoScroll.isScrolling) {
      await performScroll();
    }
  }

  /// Performs an elegant overscroll.
  ///
  /// This is supposed to run when the user leaves the auto-scroll-hotspot.
  /// Instead of suddenly stopping the auto-scroll, it continues for a short
  /// period, then stops.
  ///
  /// The amount of overscroll is defined by [amountOfOverscrollOnScrollStop].
  @visibleForTesting
  Future<void> performOverscrollOfScrollStop() {
    assert(isAbleToScroll);
    assert(hasAnythingLeftToScroll);
    assert(autoScroll.stopEvent.isConsumed);

    return controller.animateTo(
      positionAfterOverscroll,
      duration: overscrollDuration,
      curve: Curves.easeOut,
    );
  }

  /// Performs the actual scroll.
  @visibleForTesting
  Future<void> performScroll() {
    assert(isAbleToScroll);
    assert(hasAnythingLeftToScroll);
    assert(autoScroll.stopEvent.isConsumed);

    return controller.animateTo(
      targetPositionOfTheAutoScroll,
      curve: Curves.linear,
      duration: calculateScrollDurationWithUniformScrollSpeed(
        targetPositionOfTheAutoScroll,
      ),
    );
  }

  /// Calculates an scroll duration that makes the scroll speed consistent.
  ///
  /// [ScrollController.animateTo] expects a position and a duration.
  /// Considering that the position varies and the duration is constant, the
  /// scroll speed is going to vary, since it has the same time to perform a
  /// scroll to longer and shorter distances.
  ///
  /// However, we don't want the scroll speed to change according to the current
  /// position or the size of the list.
  ///
  /// To solve this problem, the duration cannot be constant, so when the
  /// position changes, the duration is also going to change in order to make
  /// the scroll speed constant.
  @visibleForTesting
  Duration calculateScrollDurationWithUniformScrollSpeed(
    double targetPosition,
  ) {
    final amountToBeScrolled = (targetPosition - currentPosition!).abs();

    final scrollDurationInMs =
        (amountToBeScrolled * scrollDurationPerPixelInMs).toInt();

    return Duration(milliseconds: scrollDurationInMs);
  }
}
