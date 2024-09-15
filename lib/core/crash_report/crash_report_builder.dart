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

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../env.dart';
import '../platform_info.dart';
import 'crash_report_id_generator.dart';
import 'crash_report_manager.dart';

abstract class CrashReportBuilder {
  Future<CrashReport> build(CrashInfo info);
}

abstract class CrashReportBuilderImpl implements CrashReportBuilder {
  final PlatformInfo _platform;
  final CrashReportIdGenerator _idGenerator;

  CrashReportBuilderImpl(this._platform, this._idGenerator);

  String get _email;

  @override
  Future<CrashReport> build(CrashInfo info) async {
    final appInfo = await _platform.appInfo;
    return CrashReport(
      email: _email,
      subject: '${appInfo.packageName} Crash Report',
      data: CrashReportData(
        reportId: _idGenerator.random(),
        packageName: appInfo.packageName,
        appName: appInfo.appName,
        version: appInfo.version,
        buildNumber: appInfo.buildNumber,
        error: info.error.toString(),
        stackTrace: info.stackTrace?.toString(),
        comment: info.message,
        deviceInfo: _toReportableInfo(await _platform.deviceInfo),
      ),
    );
  }

  ReportableInfo _toReportableInfo(DeviceInfo info) {
    return switch (info) {
      DeviceInfoUnknown() => const ReportableInfo.unknown(),
      DeviceInfoAndroid(
        :final systemVersion,
        :final supportedAbis,
        :final brand,
        :final device,
        :final model,
        :final hardware,
        :final product,
      ) =>
        ReportableInfo.android(
          systemVersion: systemVersion,
          supportedAbis: supportedAbis,
          brand: brand,
          device: device,
          model: model,
          hardware: hardware,
          product: product,
        ),
      DeviceInfoIOS(
        :final deviceName,
        :final deviceModel,
        :final systemName,
        :final systemVersion,
      ) =>
        ReportableInfo.iOS(
          deviceName: deviceName,
          deviceModel: deviceModel,
          systemName: systemName,
          systemVersion: systemVersion,
        ),
      DeviceInfoLinux(
        :final osName,
        :final kernelVersion,
        :final osVersion,
      ) =>
        ReportableInfo.linux(
          osName: osName,
          kernelVersion: kernelVersion,
          osVersion: osVersion,
        ),
      DeviceInfoWindows(:final osVersion) => ReportableInfo.windows(
          osVersion: osVersion,
        ),
      DeviceInfoMacOS(
        :final arch,
        :final kernelVersion,
        :final osVersion,
        :final model,
      ) =>
        ReportableInfo.macOS(
          arch: arch,
          kernelVersion: kernelVersion,
          osVersion: osVersion,
          model: model,
        ),
      DeviceInfoWeb(
        :final browserName,
        :final platform,
        :final vendor,
      ) =>
        ReportableInfo.web(
          browserName: browserName,
          platform: platform,
          vendor: vendor,
        ),
    };
  }
}

@Injectable(as: CrashReportBuilder, env: [Env.prod])
class ProdCrashReportBuilder extends CrashReportBuilderImpl {
  ProdCrashReportBuilder(
    super.platform,
    super.idGenerator,
  );

  @override
  String get _email => CrashReportManager.reportEmail;
}

@Injectable(as: CrashReportBuilder, env: [Env.dev])
class DevCrashReportBuilder extends CrashReportBuilderImpl {
  DevCrashReportBuilder(
    super.platform,
    super.idGenerator,
  );

  @override
  String get _email => 'foo@bar.com';
}

@visibleForTesting
class TestCrashReportBuilder extends DevCrashReportBuilder {
  TestCrashReportBuilder(
    super.platform,
    super.idGenerator,
  );
}
