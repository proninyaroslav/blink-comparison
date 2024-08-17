// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationActionReportCrashImpl
    _$$NotificationActionReportCrashImplFromJson(Map<String, dynamic> json) =>
        _$NotificationActionReportCrashImpl(
          info: CrashInfo.fromJson(json['info'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NotificationActionReportCrashImplToJson(
        _$NotificationActionReportCrashImpl instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'runtimeType': instance.$type,
    };

_$NotificationActionOpenRefImageListImpl
    _$$NotificationActionOpenRefImageListImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationActionOpenRefImageListImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NotificationActionOpenRefImageListImplToJson(
        _$NotificationActionOpenRefImageListImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
