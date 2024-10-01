// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceRequestImpl _$$ServiceRequestImplFromJson(Map<String, dynamic> json) =>
    _$ServiceRequestImpl(
      info: RefImageInfo.fromJson(json['info'] as Map<String, dynamic>),
      srcFile: const XFileConverter().fromJson(json['srcFile'] as String),
      removeSourceFile: json['removeSourceFile'] as bool,
    );

Map<String, dynamic> _$$ServiceRequestImplToJson(
        _$ServiceRequestImpl instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'srcFile': const XFileConverter().toJson(instance.srcFile),
      'removeSourceFile': instance.removeSourceFile,
    };

_$ServiceResultSuccessImpl _$$ServiceResultSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceResultSuccessImpl(
      request: ServiceRequest.fromJson(json['request'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceResultSuccessImplToJson(
        _$ServiceResultSuccessImpl instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceResultFailImpl _$$ServiceResultFailImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceResultFailImpl(
      request: ServiceRequest.fromJson(json['request'] as Map<String, dynamic>),
      error: ServiceError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceResultFailImplToJson(
        _$ServiceResultFailImpl instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceErrorSaveImageImpl _$$ServiceErrorSaveImageImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceErrorSaveImageImpl(
      SaveRefImageError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceErrorSaveImageImplToJson(
        _$ServiceErrorSaveImageImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceErrorGenerateThumbnailImpl
    _$$ServiceErrorGenerateThumbnailImplFromJson(Map<String, dynamic> json) =>
        _$ServiceErrorGenerateThumbnailImpl(
          GenerateThumbnailError.fromJson(
              json['error'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ServiceErrorGenerateThumbnailImplToJson(
        _$ServiceErrorGenerateThumbnailImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceErrorSaveThumbnailImpl _$$ServiceErrorSaveThumbnailImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceErrorSaveThumbnailImpl(
      SaveThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceErrorSaveThumbnailImplToJson(
        _$ServiceErrorSaveThumbnailImpl instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceQueueItemImpl _$$ServiceQueueItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceQueueItemImpl(
      request: ServiceRequest.fromJson(json['request'] as Map<String, dynamic>),
      factor: json['factor'] == null
          ? null
          : MutableAuthFactor.fromJson(json['factor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServiceQueueItemImplToJson(
        _$ServiceQueueItemImpl instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'factor': instance.factor?.toJson(),
    };
