// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveRefImageErrorFs _$$SaveRefImageErrorFsFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageErrorFs(
      path: json['path'] as String,
      error: FsError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageErrorFsToJson(
        _$SaveRefImageErrorFs instance) =>
    <String, dynamic>{
      'path': instance.path,
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$SaveRefImageErrorEncrypt _$$SaveRefImageErrorEncryptFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageErrorEncrypt(
      error: EncryptError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageErrorEncryptToJson(
        _$SaveRefImageErrorEncrypt instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };
