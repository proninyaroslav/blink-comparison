// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveRefImageErrorFs _$SaveRefImageErrorFsFromJson(Map<String, dynamic> json) =>
    SaveRefImageErrorFs(
      path: json['path'] as String,
      error: FsError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SaveRefImageErrorFsToJson(
  SaveRefImageErrorFs instance,
) => <String, dynamic>{
  'path': instance.path,
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};

SaveRefImageErrorEncrypt _$SaveRefImageErrorEncryptFromJson(
  Map<String, dynamic> json,
) => SaveRefImageErrorEncrypt(
  error: EncryptError.fromJson(json['error'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SaveRefImageErrorEncryptToJson(
  SaveRefImageErrorEncrypt instance,
) => <String, dynamic>{
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};
