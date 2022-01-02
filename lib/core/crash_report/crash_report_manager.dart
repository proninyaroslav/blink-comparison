// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:injectable/injectable.dart';

import 'crash_report_builder.dart';
import 'crash_report_sender.dart';
import 'model.dart';

export 'model.dart';

abstract class CrashReportManager {
  static const reportEmail = 'proninyaroslav@mail.ru';

  Future<CrashReportSendResult> sendReport(CrashInfo info);
}

@Injectable(as: CrashReportManager)
class CrashReportManagerImpl implements CrashReportManager {
  final CrashReportBuilder _builder;
  final CrashReportSender _sender;

  CrashReportManagerImpl(this._builder, this._sender);

  @override
  Future<CrashReportSendResult> sendReport(CrashInfo info) async {
    final report = await _builder.build(info);
    return _sender.send(report);
  }
}
