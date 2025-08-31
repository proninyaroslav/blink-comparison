// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationActionReportCrash _$NotificationActionReportCrashFromJson(
  Map<String, dynamic> json,
) => NotificationActionReportCrash(
  info: CrashInfo.fromJson(json['info'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$NotificationActionReportCrashToJson(
  NotificationActionReportCrash instance,
) => <String, dynamic>{
  'info': instance.info.toJson(),
  'runtimeType': instance.$type,
};

NotificationActionOpenRefImageList _$NotificationActionOpenRefImageListFromJson(
  Map<String, dynamic> json,
) => NotificationActionOpenRefImageList($type: json['runtimeType'] as String?);

Map<String, dynamic> _$NotificationActionOpenRefImageListToJson(
  NotificationActionOpenRefImageList instance,
) => <String, dynamic>{'runtimeType': instance.$type};
