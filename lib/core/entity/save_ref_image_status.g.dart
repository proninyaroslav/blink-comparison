// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveRefImageStatusProgress _$$SaveRefImageStatusProgressFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageStatusProgress(
      imageId: json['imageId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageStatusProgressToJson(
        _$SaveRefImageStatusProgress instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'runtimeType': instance.$type,
    };

_$SaveRefImageStatusCompleted _$$SaveRefImageStatusCompletedFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageStatusCompleted(
      imageId: json['imageId'] as String,
      error: json['error'] == null
          ? null
          : SaveRefImageStatusError.fromJson(
              json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageStatusCompletedToJson(
        _$SaveRefImageStatusCompleted instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'error': instance.error?.toJson(),
      'runtimeType': instance.$type,
    };

_$SaveRefImageStatusErrorSaveImage _$$SaveRefImageStatusErrorSaveImageFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageStatusErrorSaveImage(
      SaveRefImageError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageStatusErrorSaveImageToJson(
        _$SaveRefImageStatusErrorSaveImage instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$SaveRefImageStatusErrorGenerateThumbnail
    _$$SaveRefImageStatusErrorGenerateThumbnailFromJson(
            Map<String, dynamic> json) =>
        _$SaveRefImageStatusErrorGenerateThumbnail(
          GenerateThumbnailError.fromJson(
              json['error'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SaveRefImageStatusErrorGenerateThumbnailToJson(
        _$SaveRefImageStatusErrorGenerateThumbnail instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$SaveRefImageStatusErrorSaveThumbnail
    _$$SaveRefImageStatusErrorSaveThumbnailFromJson(
            Map<String, dynamic> json) =>
        _$SaveRefImageStatusErrorSaveThumbnail(
          SaveThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SaveRefImageStatusErrorSaveThumbnailToJson(
        _$SaveRefImageStatusErrorSaveThumbnail instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };
