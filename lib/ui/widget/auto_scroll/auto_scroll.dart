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

import 'package:flutter/foundation.dart';

import 'auto_scroller.dart';

/// Possible directions of auto-scroll.
///
/// The actual meaning of forward and backward will depend on the properties of
/// the scroll view.
///
/// For instance, in the most usual scroll-view, in which the scroll-direction
/// is vertical and not reversed, forward is the same as downward, and backward
/// is the same as upward.
enum AutoScrollDirection {
  /// Forward auto-scroll.
  forward,

  /// Backward auto-scroll.
  backward,
}

/// Helper class that holds information created and used by [AutoScroller].
///
/// Since this class has the mutable field [stopEvent], which also overrides
/// operator [==] and [hashCode], you should not use it inside collections. See:
/// https://dart.dev/guides/language/effective-dart/design#avoid-defining-custom-equality-for-mutable-classes
@immutable
class AutoScroll {
  /// Creates a new [AutoScroll].
  AutoScroll({
    required AutoScrollDirection this.direction,
    required Duration this.duration,
  })  : assert(duration != Duration.zero),
        isScrolling = true,
        stopEvent = StopAutoScrollEvent.consumed();

  /// Creates a stopped [AutoScroll].
  ///
  /// The parameter [direction] should be used to indicate the direction of the
  /// [AutoScroll] before it stopped. [AutoScroller] takes this information to
  /// decide whether it should make a stop-scrolling-animation and in which
  /// direction it should be done.
  ///
  /// If [direction] is not specified, [stopEvent] is going to initialize
  /// consumed, assuming that you don't want [AutoScroller] to make a
  /// stop-scrolling-animation.
  AutoScroll.stopped({this.direction})
      : isScrolling = false,
        duration = null,
        stopEvent = direction == null
            ? StopAutoScrollEvent.consumed()
            : StopAutoScrollEvent();

  /// Whether it is auto-scrolling or not.
  final bool isScrolling;

  /// Event to stop auto-scroll.
  final StopAutoScrollEvent stopEvent;

  /// The direction of the auto-scroll.
  final AutoScrollDirection? direction;

  /// The duration of the auto-scroll.
  ///
  /// The longer the duration, the slower the scrolling.
  ///
  /// The shorter the duration, the faster the scrolling.
  final Duration? duration;

  @override
  String toString() => 'AutoScroll{'
      'isStopped: $isScrolling, '
      'stopEvent: $stopEvent, '
      'direction: $direction, '
      'duration: $duration'
      '}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AutoScroll &&
          runtimeType == other.runtimeType &&
          isScrolling == other.isScrolling &&
          stopEvent == other.stopEvent &&
          direction == other.direction &&
          duration == other.duration;

  @override
  int get hashCode =>
      isScrolling.hashCode ^
      stopEvent.hashCode ^
      direction.hashCode ^
      duration.hashCode;
}

/// Event to stop auto-scroll.
///
/// This works as an extension of [AutoScroll.isScrolling], helping
/// [AutoScroller] to decide whether it IS stopped or it SHOULD stop.
///
/// Since this class is mutable and overrides operator [==] and [hashCode],
/// you should not use it inside collections. See:
/// https://dart.dev/guides/language/effective-dart/design#avoid-defining-custom-equality-for-mutable-classes
class StopAutoScrollEvent {
  /// Creates a [StopAutoScrollEvent] that can be consumed.
  StopAutoScrollEvent() : _isConsumed = false;

  /// Creates a [StopAutoScrollEvent] that is already consumed.
  StopAutoScrollEvent.consumed() : _isConsumed = true;

  bool _isConsumed;

  /// Whether the stop-event is consumed.
  bool get isConsumed => _isConsumed;

  /// Whether the stop-event is not consumed.
  bool get isNotConsumed => !_isConsumed;

  /// Consumes the stop-event.
  ///
  /// Returns false if it is already consumed, otherwise return true.
  bool consume() {
    if (_isConsumed) {
      return false;
    } else {
      _isConsumed = true;
      return true;
    }
  }

  @override
  String toString() => 'StopAutoScrollEvent{_isConsumed: $_isConsumed}';

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StopAutoScrollEvent &&
          runtimeType == other.runtimeType &&
          _isConsumed == other._isConsumed;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => _isConsumed.hashCode;
}
