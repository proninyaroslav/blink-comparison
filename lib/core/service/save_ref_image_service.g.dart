// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_ref_image_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceRequest _$$_ServiceRequestFromJson(Map<String, dynamic> json) =>
    _$_ServiceRequest(
      info: RefImageInfo.fromJson(json['info'] as Map<String, dynamic>),
      srcFile: const XFileConverter().fromJson(json['srcFile'] as String),
      key: SecureKey.fromJson(json['key'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ServiceRequestToJson(_$_ServiceRequest instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'srcFile': const XFileConverter().toJson(instance.srcFile),
      'key': instance.key.toJson(),
    };

_$ServiceResultSuccess _$$ServiceResultSuccessFromJson(
        Map<String, dynamic> json) =>
    _$ServiceResultSuccess(
      request: ServiceRequest.fromJson(json['request'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceResultSuccessToJson(
        _$ServiceResultSuccess instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceResultFail _$$ServiceResultFailFromJson(Map<String, dynamic> json) =>
    _$ServiceResultFail(
      request: ServiceRequest.fromJson(json['request'] as Map<String, dynamic>),
      error: ServiceError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceResultFailToJson(_$ServiceResultFail instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceErrorSaveImage _$$ServiceErrorSaveImageFromJson(
        Map<String, dynamic> json) =>
    _$ServiceErrorSaveImage(
      SaveRefImageError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceErrorSaveImageToJson(
        _$ServiceErrorSaveImage instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceErrorGenerateThumbnail _$$ServiceErrorGenerateThumbnailFromJson(
        Map<String, dynamic> json) =>
    _$ServiceErrorGenerateThumbnail(
      GenerateThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceErrorGenerateThumbnailToJson(
        _$ServiceErrorGenerateThumbnail instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };

_$ServiceErrorSaveThumbnail _$$ServiceErrorSaveThumbnailFromJson(
        Map<String, dynamic> json) =>
    _$ServiceErrorSaveThumbnail(
      SaveThumbnailError.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServiceErrorSaveThumbnailToJson(
        _$ServiceErrorSaveThumbnail instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'runtimeType': instance.$type,
    };
