// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveRefImageStatusProgressImpl _$$SaveRefImageStatusProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageStatusProgressImpl(
      imageId: json['imageId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageStatusProgressImplToJson(
        _$SaveRefImageStatusProgressImpl instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'runtimeType': instance.$type,
    };

_$SaveRefImageStatusCompletedImpl _$$SaveRefImageStatusCompletedImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveRefImageStatusCompletedImpl(
      imageId: json['imageId'] as String,
      error: json['error'] == null
          ? null
          : SaveRefImageStatusError.fromJson(
              json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveRefImageStatusCompletedImplToJson(
        _$SaveRefImageStatusCompletedImpl instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'error': instance.error?.toJson(),
      'runtimeType': instance.$type,
    };

_$SaveRefImageStatusErrorSaveImageImpl
    _$$SaveRefImageStatusErrorSaveImageImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveRefImageStatusErrorSaveImageImpl(
          SaveRefImageError.fromJson(json['error'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SaveRefImageStatusErrorSaveImageImplToJson(
        _$SaveRefImageStatusErrorSaveImageImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$SaveRefImageStatusErrorGenerateThumbnailImpl
    _$$SaveRefImageStatusErrorGenerateThumbnailImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveRefImageStatusErrorGenerateThumbnailImpl(
          GenerateThumbnailError.fromJson(
              json['error'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SaveRefImageStatusErrorGenerateThumbnailImplToJson(
        _$SaveRefImageStatusErrorGenerateThumbnailImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$SaveRefImageStatusErrorSaveThumbnailImpl
    _$$SaveRefImageStatusErrorSaveThumbnailImplFromJson(
            Map<String, dynamic> json) =>
        _$SaveRefImageStatusErrorSaveThumbnailImpl(
          SaveThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$SaveRefImageStatusErrorSaveThumbnailImplToJson(
        _$SaveRefImageStatusErrorSaveThumbnailImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };
