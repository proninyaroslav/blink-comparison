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
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class CrashInfo with _$CrashInfo {
  const factory CrashInfo({
    @ErrorConverter() required Object error,
    @StackTraceConverter() StackTrace? stackTrace,
    String? message,
  }) = _CrashInfo;

  factory CrashInfo.fromJson(Map<String, dynamic> json) =>
      _$CrashInfoFromJson(json);
}

@freezed
abstract class CrashReport with _$CrashReport {
  const factory CrashReport({
    required String email,
    required String subject,
    required CrashReportData data,
  }) = _CrashReport;
}

@freezed
abstract class CrashReportData with _$CrashReportData {
  const factory CrashReportData({
    @CrashReportIdConverter() required CrashReportId reportId,
    required String packageName,
    required String appName,
    required String version,
    required String buildNumber,
    required String error,
    String? comment,
    String? stackTrace,
    required ReportableInfo deviceInfo,
  }) = _CrashReportData;

  factory CrashReportData.fromJson(Map<String, dynamic> json) =>
      _$CrashReportDataFromJson(json);
}

class CrashReportId extends Equatable {
  final String _id;

  const CrashReportId(this._id);

  @override
  List<Object> get props => [_id];

  @override
  String toString() => _id;

  String toJson() => _id;
}

class CrashReportIdConverter implements JsonConverter<CrashReportId, String> {
  const CrashReportIdConverter();

  @override
  CrashReportId fromJson(String json) => CrashReportId(json);

  @override
  String toJson(CrashReportId object) => object.toJson();
}

@freezed
sealed class CrashReportSendResult with _$CrashReportSendResult {
  const factory CrashReportSendResult.success() = CrashReportSendResultSuccess;

  const factory CrashReportSendResult.emailUnsupported() =
      CrashReportSendResultEmailUnsupported;
}

@freezed
sealed class ReportableInfo with _$ReportableInfo {
  const factory ReportableInfo.unknown() = UnknownReportableInfo;

  const factory ReportableInfo.android({
    String? systemVersion,

    /// An ordered list of ABIs supported by this device.
    @Default([]) List<String?> supportedAbis,

    /// The consumer-visible brand with which
    /// the product/hardware will be associated, if any.
    String? brand,

    /// The name of the industrial design.
    String? device,

    /// The end-user-visible name for the end product.
    String? model,

    /// The name of the hardware (from the kernel command line or /proc).
    String? hardware,

    /// The name of the overall product.
    String? product,
  }) = AndroidReportableInfo;

  const factory ReportableInfo.iOS({
    String? deviceName,
    String? deviceModel,
    String? systemName,
    String? systemVersion,
  }) = IOSReportableInfo;

  const factory ReportableInfo.linux({
    required String osName,
    required String kernelVersion,
    String? osVersion,
  }) = LinuxReportableInfo;

  const factory ReportableInfo.windows({required String osVersion}) =
      WindowsReportableInfo;

  const factory ReportableInfo.macOS({
    required String arch,
    required String kernelVersion,
    required String osVersion,
    required String model,
  }) = MacOSReportableInfo;

  const factory ReportableInfo.web({
    required String browserName,

    /// A DOMString identifying the platform on which the browser is running
    String? platform,

    /// The vendor name of the current browser
    String? vendor,
  }) = WebReportableInfo;

  factory ReportableInfo.fromJson(Map<String, dynamic> json) =>
      _$ReportableInfoFromJson(json);
}
