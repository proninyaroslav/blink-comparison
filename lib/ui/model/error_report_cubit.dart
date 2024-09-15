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

import 'package:blink_comparison/core/crash_report/crash_report_manager.dart';
import 'package:blink_comparison/ui/model/error_report_state.dart';
import 'package:bloc/bloc.dart';

class ErrorReportCubit extends Cubit<ErrorReportState> {
  final CrashReportManager _reportManager;

  ErrorReportCubit(this._reportManager)
      : super(const ErrorReportState.initial());

  Future<void> sendReport({
    required Object error,
    StackTrace? stackTrace,
    String? message,
  }) async {
    emit(const ErrorReportState.inProgress());
    final res = await _reportManager.sendReport(
      CrashInfo(
        error: error,
        stackTrace: stackTrace,
        message: message,
      ),
    );
    emit(switch (res) {
      CrashReportSendResultSuccess() => const ErrorReportState.success(),
      CrashReportSendResultEmailUnsupported() =>
        const ErrorReportState.emailUnsupported(),
    });
  }
}
