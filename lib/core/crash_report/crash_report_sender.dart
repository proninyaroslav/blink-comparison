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

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../logger.dart';
import '../platform_info.dart';
import 'model.dart';

abstract class CrashReportSender {
  Future<CrashReportSendResult> send(CrashReport report);
}

@Injectable(as: CrashReportSender)
class CrashReportSenderImpl implements CrashReportSender {
  final PlatformInfo _platform;

  CrashReportSenderImpl(this._platform);

  @override
  Future<CrashReportSendResult> send(CrashReport report) async {
    if (_platform.isAndroid || _platform.isIOS) {
      return _sendMail(report).then((res) {
        if (res == const CrashReportSendResult.emailUnsupported()) {
          return _sendMailto(report);
        } else {
          return res;
        }
      });
    } else {
      return _sendMailto(report);
    }
  }

  Future<CrashReportSendResult> _sendMail(CrashReport report) async {
    final email = Email(
      body: jsonEncode(report.data),
      subject: report.subject,
      recipients: [report.email],
    );
    try {
      await FlutterEmailSender.send(email);
      return const CrashReportSendResult.success();
    } catch (e, stackTrace) {
      log().e('Unable to send crash report', error: e, stackTrace: stackTrace);
      return const CrashReportSendResult.emailUnsupported();
    }
  }

  Future<CrashReportSendResult> _sendMailto(CrashReport report) async {
    final body = Uri.encodeComponent(jsonEncode(report.data));
    final uri = Uri(
      scheme: 'mailto',
      path: report.email,
      query: 'subject=${report.subject}&body=$body',
    );

    try {
      return await launchUrl(uri)
          ? const CrashReportSendResult.success()
          : const CrashReportSendResult.emailUnsupported();
    } on PlatformException catch (e, stackTrace) {
      log()
          .w('Unable to launch email client', error: e, stackTrace: stackTrace);
      return const CrashReportSendResult.emailUnsupported();
    }
  }
}
