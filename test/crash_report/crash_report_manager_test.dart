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

import 'package:blink_comparison/core/crash_report/crash_report_builder.dart';
import 'package:blink_comparison/core/crash_report/crash_report_manager.dart';
import 'package:blink_comparison/core/crash_report/crash_report_sender.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock.dart';

void main() {
  group('Crash report manager |', () {
    late CrashReportBuilder mockBuilder;
    late CrashReportSender mockSender;
    late CrashReportManager manager;

    setUpAll(() {
      mockBuilder = MockCrashReportBuilder();
      mockSender = MockCrashReportSender();
      manager = CrashReportManagerImpl(mockBuilder, mockSender);
    });

    test('Send success', () async {
      const info = CrashInfo(error: 'Error');
      const report = CrashReport(
        email: 'foo@bar.com',
        subject: 'Test',
        data: CrashReportData(
          reportId: CrashReportId('1'),
          packageName: 'test',
          appName: 'Test',
          version: '1.0',
          buildNumber: '1',
          error: 'Error',
          deviceInfo: ReportableInfo.unknown(),
        ),
      );
      when(() => mockBuilder.build(info)).thenAnswer((_) async => report);
      when(
        () => mockSender.send(report),
      ).thenAnswer(
        (_) async => const CrashReportSendResult.success(),
      );

      expect(
        await manager.sendReport(info),
        const CrashReportSendResult.success(),
      );
    });

    test('Email unsupported', () async {
      const info = CrashInfo(error: 'Error');
      const report = CrashReport(
        email: 'foo@bar.com',
        subject: 'Test',
        data: CrashReportData(
          reportId: CrashReportId('1'),
          packageName: 'test',
          appName: 'Test',
          version: '1.0',
          buildNumber: '1',
          error: 'Error',
          deviceInfo: ReportableInfo.unknown(),
        ),
      );
      when(() => mockBuilder.build(info)).thenAnswer((_) async => report);
      when(
        () => mockSender.send(report),
      ).thenAnswer(
        (_) async => const CrashReportSendResult.emailUnsupported(),
      );

      expect(
        await manager.sendReport(info),
        const CrashReportSendResult.emailUnsupported(),
      );
    });
  });
}
