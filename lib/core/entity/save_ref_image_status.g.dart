// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveRefImageStatusProgress _$SaveRefImageStatusProgressFromJson(
  Map<String, dynamic> json,
) => SaveRefImageStatusProgress(
  imageId: json['imageId'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SaveRefImageStatusProgressToJson(
  SaveRefImageStatusProgress instance,
) => <String, dynamic>{
  'imageId': instance.imageId,
  'runtimeType': instance.$type,
};

SaveRefImageStatusCompleted _$SaveRefImageStatusCompletedFromJson(
  Map<String, dynamic> json,
) => SaveRefImageStatusCompleted(
  imageId: json['imageId'] as String,
  error: json['error'] == null
      ? null
      : SaveRefImageStatusError.fromJson(json['error'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SaveRefImageStatusCompletedToJson(
  SaveRefImageStatusCompleted instance,
) => <String, dynamic>{
  'imageId': instance.imageId,
  'error': instance.error?.toJson(),
  'runtimeType': instance.$type,
};

SaveRefImageStatusErrorSaveImage _$SaveRefImageStatusErrorSaveImageFromJson(
  Map<String, dynamic> json,
) => SaveRefImageStatusErrorSaveImage(
  SaveRefImageError.fromJson(json['error'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SaveRefImageStatusErrorSaveImageToJson(
  SaveRefImageStatusErrorSaveImage instance,
) => <String, dynamic>{
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};

SaveRefImageStatusErrorGenerateThumbnail
_$SaveRefImageStatusErrorGenerateThumbnailFromJson(Map<String, dynamic> json) =>
    SaveRefImageStatusErrorGenerateThumbnail(
      GenerateThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SaveRefImageStatusErrorGenerateThumbnailToJson(
  SaveRefImageStatusErrorGenerateThumbnail instance,
) => <String, dynamic>{
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};

SaveRefImageStatusErrorSaveThumbnail
_$SaveRefImageStatusErrorSaveThumbnailFromJson(Map<String, dynamic> json) =>
    SaveRefImageStatusErrorSaveThumbnail(
      SaveThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SaveRefImageStatusErrorSaveThumbnailToJson(
  SaveRefImageStatusErrorSaveThumbnail instance,
) => <String, dynamic>{
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};
