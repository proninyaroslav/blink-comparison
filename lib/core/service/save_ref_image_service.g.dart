// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceRequest _$ServiceRequestFromJson(Map<String, dynamic> json) =>
    _ServiceRequest(
      info: RefImageInfo.fromJson(json['info'] as Map<String, dynamic>),
      srcFile: const XFileConverter().fromJson(json['srcFile'] as String),
      removeSourceFile: json['removeSourceFile'] as bool,
    );

Map<String, dynamic> _$ServiceRequestToJson(_ServiceRequest instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'srcFile': const XFileConverter().toJson(instance.srcFile),
      'removeSourceFile': instance.removeSourceFile,
    };

ServiceResultSuccess _$ServiceResultSuccessFromJson(
  Map<String, dynamic> json,
) => ServiceResultSuccess(
  request: ServiceRequest.fromJson(json['request'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ServiceResultSuccessToJson(
  ServiceResultSuccess instance,
) => <String, dynamic>{
  'request': instance.request.toJson(),
  'runtimeType': instance.$type,
};

ServiceResultFail _$ServiceResultFailFromJson(Map<String, dynamic> json) =>
    ServiceResultFail(
      request: ServiceRequest.fromJson(json['request'] as Map<String, dynamic>),
      error: ServiceError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServiceResultFailToJson(ServiceResultFail instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

ServiceErrorSaveImage _$ServiceErrorSaveImageFromJson(
  Map<String, dynamic> json,
) => ServiceErrorSaveImage(
  SaveRefImageError.fromJson(json['error'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ServiceErrorSaveImageToJson(
  ServiceErrorSaveImage instance,
) => <String, dynamic>{
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};

ServiceErrorGenerateThumbnail _$ServiceErrorGenerateThumbnailFromJson(
  Map<String, dynamic> json,
) => ServiceErrorGenerateThumbnail(
  GenerateThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ServiceErrorGenerateThumbnailToJson(
  ServiceErrorGenerateThumbnail instance,
) => <String, dynamic>{
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};

ServiceErrorSaveThumbnail _$ServiceErrorSaveThumbnailFromJson(
  Map<String, dynamic> json,
) => ServiceErrorSaveThumbnail(
  SaveThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ServiceErrorSaveThumbnailToJson(
  ServiceErrorSaveThumbnail instance,
) => <String, dynamic>{
  'error': instance.error.toJson(),
  'runtimeType': instance.$type,
};

_ServiceQueueItem _$ServiceQueueItemFromJson(Map<String, dynamic> json) =>
    _ServiceQueueItem(
      request: ServiceRequest.fromJson(json['request'] as Map<String, dynamic>),
      factor: json['factor'] == null
          ? null
          : MutableAuthFactor.fromJson(json['factor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServiceQueueItemToJson(_ServiceQueueItem instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'factor': instance.factor?.toJson(),
    };
