// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveRefImageErrorFsImpl _$$SaveRefImageErrorFsImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageErrorFsImpl(
      path: json['path'] as String,
      error: FsError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageErrorFsImplToJson(
        _$SaveRefImageErrorFsImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$SaveRefImageErrorEncryptImpl _$$SaveRefImageErrorEncryptImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageErrorEncryptImpl(
      error: EncryptError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageErrorEncryptImplToJson(
        _$SaveRefImageErrorEncryptImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };
