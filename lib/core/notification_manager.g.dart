// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationActionReportCrash _$$NotificationActionReportCrashFromJson(
        Map<String, dynamic> json) =>
    _$NotificationActionReportCrash(
      info: CrashInfo.fromJson(json['info'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotificationActionReportCrashToJson(
        _$NotificationActionReportCrash instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'runtimeType': instance.$type,
    };

_$NotificationActionOpenRefImageList
    _$$NotificationActionOpenRefImageListFromJson(Map<String, dynamic> json) =>
        _$NotificationActionOpenRefImageList(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NotificationActionOpenRefImageListToJson(
        _$NotificationActionOpenRefImageList instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
