// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CrashInfo _$CrashInfoFromJson(Map<String, dynamic> json) => _CrashInfo(
  error: const ErrorConverter().fromJson(json['error'] as String),
  stackTrace: const StackTraceConverter().fromJson(
    json['stackTrace'] as String?,
  ),
  message: json['message'] as String?,
);

Map<String, dynamic> _$CrashInfoToJson(_CrashInfo instance) =>
    <String, dynamic>{
      'error': const ErrorConverter().toJson(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
      'message': instance.message,
    };

_CrashReportData _$CrashReportDataFromJson(Map<String, dynamic> json) =>
    _CrashReportData(
      reportId: const CrashReportIdConverter().fromJson(
        json['reportId'] as String,
      ),
      packageName: json['packageName'] as String,
      appName: json['appName'] as String,
      version: json['version'] as String,
      buildNumber: json['buildNumber'] as String,
      error: json['error'] as String,
      comment: json['comment'] as String?,
      stackTrace: json['stackTrace'] as String?,
      deviceInfo: ReportableInfo.fromJson(
        json['deviceInfo'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CrashReportDataToJson(_CrashReportData instance) =>
    <String, dynamic>{
      'reportId': const CrashReportIdConverter().toJson(instance.reportId),
      'packageName': instance.packageName,
      'appName': instance.appName,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'error': instance.error,
      'comment': instance.comment,
      'stackTrace': instance.stackTrace,
      'deviceInfo': instance.deviceInfo.toJson(),
    };

UnknownReportableInfo _$UnknownReportableInfoFromJson(
  Map<String, dynamic> json,
) => UnknownReportableInfo($type: json['runtimeType'] as String?);

Map<String, dynamic> _$UnknownReportableInfoToJson(
  UnknownReportableInfo instance,
) => <String, dynamic>{'runtimeType': instance.$type};

AndroidReportableInfo _$AndroidReportableInfoFromJson(
  Map<String, dynamic> json,
) => AndroidReportableInfo(
  systemVersion: json['systemVersion'] as String?,
  supportedAbis:
      (json['supportedAbis'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList() ??
      const [],
  brand: json['brand'] as String?,
  device: json['device'] as String?,
  model: json['model'] as String?,
  hardware: json['hardware'] as String?,
  product: json['product'] as String?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$AndroidReportableInfoToJson(
  AndroidReportableInfo instance,
) => <String, dynamic>{
  'systemVersion': instance.systemVersion,
  'supportedAbis': instance.supportedAbis,
  'brand': instance.brand,
  'device': instance.device,
  'model': instance.model,
  'hardware': instance.hardware,
  'product': instance.product,
  'runtimeType': instance.$type,
};

IOSReportableInfo _$IOSReportableInfoFromJson(Map<String, dynamic> json) =>
    IOSReportableInfo(
      deviceName: json['deviceName'] as String?,
      deviceModel: json['deviceModel'] as String?,
      systemName: json['systemName'] as String?,
      systemVersion: json['systemVersion'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$IOSReportableInfoToJson(IOSReportableInfo instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'deviceModel': instance.deviceModel,
      'systemName': instance.systemName,
      'systemVersion': instance.systemVersion,
      'runtimeType': instance.$type,
    };

LinuxReportableInfo _$LinuxReportableInfoFromJson(Map<String, dynamic> json) =>
    LinuxReportableInfo(
      osName: json['osName'] as String,
      kernelVersion: json['kernelVersion'] as String,
      osVersion: json['osVersion'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LinuxReportableInfoToJson(
  LinuxReportableInfo instance,
) => <String, dynamic>{
  'osName': instance.osName,
  'kernelVersion': instance.kernelVersion,
  'osVersion': instance.osVersion,
  'runtimeType': instance.$type,
};

WindowsReportableInfo _$WindowsReportableInfoFromJson(
  Map<String, dynamic> json,
) => WindowsReportableInfo(
  osVersion: json['osVersion'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WindowsReportableInfoToJson(
  WindowsReportableInfo instance,
) => <String, dynamic>{
  'osVersion': instance.osVersion,
  'runtimeType': instance.$type,
};

MacOSReportableInfo _$MacOSReportableInfoFromJson(Map<String, dynamic> json) =>
    MacOSReportableInfo(
      arch: json['arch'] as String,
      kernelVersion: json['kernelVersion'] as String,
      osVersion: json['osVersion'] as String,
      model: json['model'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MacOSReportableInfoToJson(
  MacOSReportableInfo instance,
) => <String, dynamic>{
  'arch': instance.arch,
  'kernelVersion': instance.kernelVersion,
  'osVersion': instance.osVersion,
  'model': instance.model,
  'runtimeType': instance.$type,
};

WebReportableInfo _$WebReportableInfoFromJson(Map<String, dynamic> json) =>
    WebReportableInfo(
      browserName: json['browserName'] as String,
      platform: json['platform'] as String?,
      vendor: json['vendor'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WebReportableInfoToJson(WebReportableInfo instance) =>
    <String, dynamic>{
      'browserName': instance.browserName,
      'platform': instance.platform,
      'vendor': instance.vendor,
      'runtimeType': instance.$type,
    };
