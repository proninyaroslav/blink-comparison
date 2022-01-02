// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_thumbnail_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateThumbnailErrorFs _$$GenerateThumbnailErrorFsFromJson(
        Map<String, dynamic> json) =>
    _$GenerateThumbnailErrorFs(
      FsError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GenerateThumbnailErrorFsToJson(
        _$GenerateThumbnailErrorFs instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$GenerateThumbnailErrorFileNotFound
    _$$GenerateThumbnailErrorFileNotFoundFromJson(Map<String, dynamic> json) =>
        _$GenerateThumbnailErrorFileNotFound(
          path: json['path'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$GenerateThumbnailErrorFileNotFoundToJson(
        _$GenerateThumbnailErrorFileNotFound instance) =>
    <String, dynamic>{
      'path': instance.path,
      'runtimeType': instance.$type,
    };

_$GenerateThumbnailErrorUnsupportedFormat
    _$$GenerateThumbnailErrorUnsupportedFormatFromJson(
            Map<String, dynamic> json) =>
        _$GenerateThumbnailErrorUnsupportedFormat(
          path: json['path'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$GenerateThumbnailErrorUnsupportedFormatToJson(
        _$GenerateThumbnailErrorUnsupportedFormat instance) =>
    <String, dynamic>{
      'path': instance.path,
      'runtimeType': instance.$type,
    };
