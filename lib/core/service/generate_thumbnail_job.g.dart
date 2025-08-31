// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_thumbnail_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateThumbnailErrorFs _$GenerateThumbnailErrorFsFromJson(
  Map<String, dynamic> json,
) => GenerateThumbnailErrorFs(
  FsError.fromJson(json['error'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$GenerateThumbnailErrorFsToJson(
  GenerateThumbnailErrorFs instance,
) => <String, dynamic>{
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};

GenerateThumbnailErrorFileNotFound _$GenerateThumbnailErrorFileNotFoundFromJson(
  Map<String, dynamic> json,
) => GenerateThumbnailErrorFileNotFound(
  path: json['path'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$GenerateThumbnailErrorFileNotFoundToJson(
  GenerateThumbnailErrorFileNotFound instance,
) => <String, dynamic>{'path': instance.path, 'runtimeType': instance.$type};

GenerateThumbnailErrorUnsupportedFormat
_$GenerateThumbnailErrorUnsupportedFormatFromJson(Map<String, dynamic> json) =>
    GenerateThumbnailErrorUnsupportedFormat(
      path: json['path'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GenerateThumbnailErrorUnsupportedFormatToJson(
  GenerateThumbnailErrorUnsupportedFormat instance,
) => <String, dynamic>{'path': instance.path, 'runtimeType': instance.$type};
