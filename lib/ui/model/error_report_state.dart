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

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_report_state.freezed.dart';

@freezed
class ErrorReportState with _$ErrorReportState {
  const factory ErrorReportState.initial() = ErrorReportStateInitial;

  const factory ErrorReportState.inProgress() = ErrorReportStateInProgress;

  const factory ErrorReportState.success() = ErrorReportStateSuccess;

  const factory ErrorReportState.emailUnsupported() =
      ErrorReportStateEmailUnsupported;
}