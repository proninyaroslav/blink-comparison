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

import 'package:blink_comparison/core/entity/converter/converter.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fs_result.freezed.dart';
part 'fs_result.g.dart';

@freezed
sealed class FsResult<T> with _$FsResult<T> {
  const factory FsResult(T value) = FsResultSuccess;
  const factory FsResult.error(
    FsError error,
  ) = FsResultError;

  // ignore: void_checks
  static FsResult<void> get empty => const FsResult({});
}

@freezed
sealed class FsError with _$FsError {
  const factory FsError.io({
    @ExceptionConverter() Exception? exception,
    @StackTraceConverter() StackTrace? stackTrace,
  }) = FsErrorIO;

  factory FsError.fromJson(Map<String, dynamic> json) =>
      _$FsErrorFromJson(json);
}
