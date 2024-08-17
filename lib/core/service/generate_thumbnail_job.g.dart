// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_thumbnail_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateThumbnailErrorFsImpl _$$GenerateThumbnailErrorFsImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateThumbnailErrorFsImpl(
      FsError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GenerateThumbnailErrorFsImplToJson(
        _$GenerateThumbnailErrorFsImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$GenerateThumbnailErrorFileNotFoundImpl
    _$$GenerateThumbnailErrorFileNotFoundImplFromJson(
            Map<String, dynamic> json) =>
        _$GenerateThumbnailErrorFileNotFoundImpl(
          path: json['path'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$GenerateThumbnailErrorFileNotFoundImplToJson(
        _$GenerateThumbnailErrorFileNotFoundImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'runtimeType': instance.$type,
    };

_$GenerateThumbnailErrorUnsupportedFormatImpl
    _$$GenerateThumbnailErrorUnsupportedFormatImplFromJson(
            Map<String, dynamic> json) =>
        _$GenerateThumbnailErrorUnsupportedFormatImpl(
          path: json['path'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$GenerateThumbnailErrorUnsupportedFormatImplToJson(
        _$GenerateThumbnailErrorUnsupportedFormatImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'runtimeType': instance.$type,
    };
