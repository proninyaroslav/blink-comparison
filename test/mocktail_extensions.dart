// Copyright 2016 Dart Mockito authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:collection';

import 'package:mocktail/mocktail.dart';

extension MocktailWhenExtension<T> on When<T> {
  /// Store a sequence of canned responses for this method stub.
  ///
  /// Note: [expects] cannot contain a Future or Stream, due to Zone considerations.
  /// To return a Future or Stream from a method stub, use [thenAnswer].
  ///
  /// Note: when the method stub is called more times than there are responses
  /// in [expects], it will throw an StateError in the missing case.
  void thenReturnInOrder(List<T> expects) {
    if (expects.isEmpty) {
      throw ArgumentError('thenReturnInOrder expects should not be empty');
    }

    expects.forEach(_throwIfInvalid);

    final answers = Queue.of(expects);

    thenAnswer((_) {
      if (answers.isEmpty) {
        throw StateError('thenReturnInOrder does not have enough answers');
      }

      return answers.removeFirst();
    });
  }

  void _throwIfInvalid(T expected) {
    if (expected is Future) {
      throw ArgumentError('`thenReturn` should not be used to return a Future. '
          'Instead, use `thenAnswer((_) => future)`.');
    }
    if (expected is Stream) {
      throw ArgumentError('`thenReturn` should not be used to return a Stream. '
          'Instead, use `thenAnswer((_) => stream)`.');
    }
  }
}
