// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientMessageInfo _$$ClientMessageInfoFromJson(Map<String, dynamic> json) =>
    _$ClientMessageInfo(
      info: RefImageInfo.fromJson(json['info'] as Map<String, dynamic>),
      srcPath: json['srcPath'] as String,
      key: SecureKey.fromJson(json['key'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClientMessageInfoToJson(_$ClientMessageInfo instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'srcPath': instance.srcPath,
      'key': instance.key.toJson(),
    };

_$ServiceMessageRequestInfo _$$ServiceMessageRequestInfoFromJson(
        Map<String, dynamic> json) =>
    _$ServiceMessageRequestInfo();

Map<String, dynamic> _$$ServiceMessageRequestInfoToJson(
        _$ServiceMessageRequestInfo instance) =>
    <String, dynamic>{};

_$ServiceMessageUpdateStatus _$$ServiceMessageUpdateStatusFromJson(
        Map<String, dynamic> json) =>
    _$ServiceMessageUpdateStatus(
      SaveRefImageStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServiceMessageUpdateStatusToJson(
        _$ServiceMessageUpdateStatus instance) =>
    <String, dynamic>{
      'status': instance.status.toJson(),
    };
