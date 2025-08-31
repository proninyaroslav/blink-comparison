// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_ref_image_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceRequest implements DiagnosticableTreeMixin {

 RefImageInfo get info;@XFileConverter() XFile get srcFile; bool get removeSourceFile;
/// Create a copy of ServiceRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceRequestCopyWith<ServiceRequest> get copyWith => _$ServiceRequestCopyWithImpl<ServiceRequest>(this as ServiceRequest, _$identity);

  /// Serializes this ServiceRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceRequest'))
    ..add(DiagnosticsProperty('info', info))..add(DiagnosticsProperty('srcFile', srcFile))..add(DiagnosticsProperty('removeSourceFile', removeSourceFile));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceRequest&&(identical(other.info, info) || other.info == info)&&(identical(other.srcFile, srcFile) || other.srcFile == srcFile)&&(identical(other.removeSourceFile, removeSourceFile) || other.removeSourceFile == removeSourceFile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,srcFile,removeSourceFile);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceRequest(info: $info, srcFile: $srcFile, removeSourceFile: $removeSourceFile)';
}


}

/// @nodoc
abstract mixin class $ServiceRequestCopyWith<$Res>  {
  factory $ServiceRequestCopyWith(ServiceRequest value, $Res Function(ServiceRequest) _then) = _$ServiceRequestCopyWithImpl;
@useResult
$Res call({
 RefImageInfo info,@XFileConverter() XFile srcFile, bool removeSourceFile
});


$RefImageInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$ServiceRequestCopyWithImpl<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  _$ServiceRequestCopyWithImpl(this._self, this._then);

  final ServiceRequest _self;
  final $Res Function(ServiceRequest) _then;

/// Create a copy of ServiceRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? srcFile = null,Object? removeSourceFile = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RefImageInfo,srcFile: null == srcFile ? _self.srcFile : srcFile // ignore: cast_nullable_to_non_nullable
as XFile,removeSourceFile: null == removeSourceFile ? _self.removeSourceFile : removeSourceFile // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ServiceRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageInfoCopyWith<$Res> get info {
  
  return $RefImageInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}



/// @nodoc
@JsonSerializable()

class _ServiceRequest with DiagnosticableTreeMixin implements ServiceRequest {
  const _ServiceRequest({required this.info, @XFileConverter() required this.srcFile, required this.removeSourceFile});
  factory _ServiceRequest.fromJson(Map<String, dynamic> json) => _$ServiceRequestFromJson(json);

@override final  RefImageInfo info;
@override@XFileConverter() final  XFile srcFile;
@override final  bool removeSourceFile;

/// Create a copy of ServiceRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceRequestCopyWith<_ServiceRequest> get copyWith => __$ServiceRequestCopyWithImpl<_ServiceRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceRequest'))
    ..add(DiagnosticsProperty('info', info))..add(DiagnosticsProperty('srcFile', srcFile))..add(DiagnosticsProperty('removeSourceFile', removeSourceFile));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceRequest&&(identical(other.info, info) || other.info == info)&&(identical(other.srcFile, srcFile) || other.srcFile == srcFile)&&(identical(other.removeSourceFile, removeSourceFile) || other.removeSourceFile == removeSourceFile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,srcFile,removeSourceFile);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceRequest(info: $info, srcFile: $srcFile, removeSourceFile: $removeSourceFile)';
}


}

/// @nodoc
abstract mixin class _$ServiceRequestCopyWith<$Res> implements $ServiceRequestCopyWith<$Res> {
  factory _$ServiceRequestCopyWith(_ServiceRequest value, $Res Function(_ServiceRequest) _then) = __$ServiceRequestCopyWithImpl;
@override @useResult
$Res call({
 RefImageInfo info,@XFileConverter() XFile srcFile, bool removeSourceFile
});


@override $RefImageInfoCopyWith<$Res> get info;

}
/// @nodoc
class __$ServiceRequestCopyWithImpl<$Res>
    implements _$ServiceRequestCopyWith<$Res> {
  __$ServiceRequestCopyWithImpl(this._self, this._then);

  final _ServiceRequest _self;
  final $Res Function(_ServiceRequest) _then;

/// Create a copy of ServiceRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? srcFile = null,Object? removeSourceFile = null,}) {
  return _then(_ServiceRequest(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RefImageInfo,srcFile: null == srcFile ? _self.srcFile : srcFile // ignore: cast_nullable_to_non_nullable
as XFile,removeSourceFile: null == removeSourceFile ? _self.removeSourceFile : removeSourceFile // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ServiceRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageInfoCopyWith<$Res> get info {
  
  return $RefImageInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

ServiceResult _$ServiceResultFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'success':
          return ServiceResultSuccess.fromJson(
            json
          );
                case 'fail':
          return ServiceResultFail.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ServiceResult',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ServiceResult implements DiagnosticableTreeMixin {

 ServiceRequest get request;
/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceResultCopyWith<ServiceResult> get copyWith => _$ServiceResultCopyWithImpl<ServiceResult>(this as ServiceResult, _$identity);

  /// Serializes this ServiceResult to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceResult'))
    ..add(DiagnosticsProperty('request', request));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceResult&&(identical(other.request, request) || other.request == request));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceResult(request: $request)';
}


}

/// @nodoc
abstract mixin class $ServiceResultCopyWith<$Res>  {
  factory $ServiceResultCopyWith(ServiceResult value, $Res Function(ServiceResult) _then) = _$ServiceResultCopyWithImpl;
@useResult
$Res call({
 ServiceRequest request
});


$ServiceRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$ServiceResultCopyWithImpl<$Res>
    implements $ServiceResultCopyWith<$Res> {
  _$ServiceResultCopyWithImpl(this._self, this._then);

  final ServiceResult _self;
  final $Res Function(ServiceResult) _then;

/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? request = null,}) {
  return _then(_self.copyWith(
request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ServiceRequest,
  ));
}
/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceRequestCopyWith<$Res> get request {
  
  return $ServiceRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}



/// @nodoc
@JsonSerializable()

class ServiceResultSuccess with DiagnosticableTreeMixin implements ServiceResult {
  const ServiceResultSuccess({required this.request, final  String? $type}): $type = $type ?? 'success';
  factory ServiceResultSuccess.fromJson(Map<String, dynamic> json) => _$ServiceResultSuccessFromJson(json);

@override final  ServiceRequest request;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceResultSuccessCopyWith<ServiceResultSuccess> get copyWith => _$ServiceResultSuccessCopyWithImpl<ServiceResultSuccess>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceResultSuccessToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceResult.success'))
    ..add(DiagnosticsProperty('request', request));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceResultSuccess&&(identical(other.request, request) || other.request == request));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceResult.success(request: $request)';
}


}

/// @nodoc
abstract mixin class $ServiceResultSuccessCopyWith<$Res> implements $ServiceResultCopyWith<$Res> {
  factory $ServiceResultSuccessCopyWith(ServiceResultSuccess value, $Res Function(ServiceResultSuccess) _then) = _$ServiceResultSuccessCopyWithImpl;
@override @useResult
$Res call({
 ServiceRequest request
});


@override $ServiceRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$ServiceResultSuccessCopyWithImpl<$Res>
    implements $ServiceResultSuccessCopyWith<$Res> {
  _$ServiceResultSuccessCopyWithImpl(this._self, this._then);

  final ServiceResultSuccess _self;
  final $Res Function(ServiceResultSuccess) _then;

/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(ServiceResultSuccess(
request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ServiceRequest,
  ));
}

/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceRequestCopyWith<$Res> get request {
  
  return $ServiceRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class ServiceResultFail with DiagnosticableTreeMixin implements ServiceResult {
  const ServiceResultFail({required this.request, required this.error, final  String? $type}): $type = $type ?? 'fail';
  factory ServiceResultFail.fromJson(Map<String, dynamic> json) => _$ServiceResultFailFromJson(json);

@override final  ServiceRequest request;
 final  ServiceError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceResultFailCopyWith<ServiceResultFail> get copyWith => _$ServiceResultFailCopyWithImpl<ServiceResultFail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceResultFailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceResult.fail'))
    ..add(DiagnosticsProperty('request', request))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceResultFail&&(identical(other.request, request) || other.request == request)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,request,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceResult.fail(request: $request, error: $error)';
}


}

/// @nodoc
abstract mixin class $ServiceResultFailCopyWith<$Res> implements $ServiceResultCopyWith<$Res> {
  factory $ServiceResultFailCopyWith(ServiceResultFail value, $Res Function(ServiceResultFail) _then) = _$ServiceResultFailCopyWithImpl;
@override @useResult
$Res call({
 ServiceRequest request, ServiceError error
});


@override $ServiceRequestCopyWith<$Res> get request;$ServiceErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$ServiceResultFailCopyWithImpl<$Res>
    implements $ServiceResultFailCopyWith<$Res> {
  _$ServiceResultFailCopyWithImpl(this._self, this._then);

  final ServiceResultFail _self;
  final $Res Function(ServiceResultFail) _then;

/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? request = null,Object? error = null,}) {
  return _then(ServiceResultFail(
request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ServiceRequest,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ServiceError,
  ));
}

/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceRequestCopyWith<$Res> get request {
  
  return $ServiceRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of ServiceResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceErrorCopyWith<$Res> get error {
  
  return $ServiceErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

ServiceError _$ServiceErrorFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'saveImage':
          return ServiceErrorSaveImage.fromJson(
            json
          );
                case 'generateThumbnail':
          return ServiceErrorGenerateThumbnail.fromJson(
            json
          );
                case 'saveThumbnail':
          return ServiceErrorSaveThumbnail.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ServiceError',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ServiceError implements DiagnosticableTreeMixin {

 Object get error;

  /// Serializes this ServiceError to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceError'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceError&&const DeepCollectionEquality().equals(other.error, error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceError(error: $error)';
}


}

/// @nodoc
class $ServiceErrorCopyWith<$Res>  {
$ServiceErrorCopyWith(ServiceError _, $Res Function(ServiceError) __);
}



/// @nodoc
@JsonSerializable()

class ServiceErrorSaveImage with DiagnosticableTreeMixin implements ServiceError {
  const ServiceErrorSaveImage(this.error, {final  String? $type}): $type = $type ?? 'saveImage';
  factory ServiceErrorSaveImage.fromJson(Map<String, dynamic> json) => _$ServiceErrorSaveImageFromJson(json);

@override final  SaveRefImageError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceErrorSaveImageCopyWith<ServiceErrorSaveImage> get copyWith => _$ServiceErrorSaveImageCopyWithImpl<ServiceErrorSaveImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceErrorSaveImageToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceError.saveImage'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceErrorSaveImage&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceError.saveImage(error: $error)';
}


}

/// @nodoc
abstract mixin class $ServiceErrorSaveImageCopyWith<$Res> implements $ServiceErrorCopyWith<$Res> {
  factory $ServiceErrorSaveImageCopyWith(ServiceErrorSaveImage value, $Res Function(ServiceErrorSaveImage) _then) = _$ServiceErrorSaveImageCopyWithImpl;
@useResult
$Res call({
 SaveRefImageError error
});


$SaveRefImageErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$ServiceErrorSaveImageCopyWithImpl<$Res>
    implements $ServiceErrorSaveImageCopyWith<$Res> {
  _$ServiceErrorSaveImageCopyWithImpl(this._self, this._then);

  final ServiceErrorSaveImage _self;
  final $Res Function(ServiceErrorSaveImage) _then;

/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ServiceErrorSaveImage(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SaveRefImageError,
  ));
}

/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveRefImageErrorCopyWith<$Res> get error {
  
  return $SaveRefImageErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class ServiceErrorGenerateThumbnail with DiagnosticableTreeMixin implements ServiceError {
  const ServiceErrorGenerateThumbnail(this.error, {final  String? $type}): $type = $type ?? 'generateThumbnail';
  factory ServiceErrorGenerateThumbnail.fromJson(Map<String, dynamic> json) => _$ServiceErrorGenerateThumbnailFromJson(json);

@override final  GenerateThumbnailError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceErrorGenerateThumbnailCopyWith<ServiceErrorGenerateThumbnail> get copyWith => _$ServiceErrorGenerateThumbnailCopyWithImpl<ServiceErrorGenerateThumbnail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceErrorGenerateThumbnailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceError.generateThumbnail'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceErrorGenerateThumbnail&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceError.generateThumbnail(error: $error)';
}


}

/// @nodoc
abstract mixin class $ServiceErrorGenerateThumbnailCopyWith<$Res> implements $ServiceErrorCopyWith<$Res> {
  factory $ServiceErrorGenerateThumbnailCopyWith(ServiceErrorGenerateThumbnail value, $Res Function(ServiceErrorGenerateThumbnail) _then) = _$ServiceErrorGenerateThumbnailCopyWithImpl;
@useResult
$Res call({
 GenerateThumbnailError error
});


$GenerateThumbnailErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$ServiceErrorGenerateThumbnailCopyWithImpl<$Res>
    implements $ServiceErrorGenerateThumbnailCopyWith<$Res> {
  _$ServiceErrorGenerateThumbnailCopyWithImpl(this._self, this._then);

  final ServiceErrorGenerateThumbnail _self;
  final $Res Function(ServiceErrorGenerateThumbnail) _then;

/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ServiceErrorGenerateThumbnail(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as GenerateThumbnailError,
  ));
}

/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerateThumbnailErrorCopyWith<$Res> get error {
  
  return $GenerateThumbnailErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class ServiceErrorSaveThumbnail with DiagnosticableTreeMixin implements ServiceError {
  const ServiceErrorSaveThumbnail(this.error, {final  String? $type}): $type = $type ?? 'saveThumbnail';
  factory ServiceErrorSaveThumbnail.fromJson(Map<String, dynamic> json) => _$ServiceErrorSaveThumbnailFromJson(json);

@override final  SaveThumbnailError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceErrorSaveThumbnailCopyWith<ServiceErrorSaveThumbnail> get copyWith => _$ServiceErrorSaveThumbnailCopyWithImpl<ServiceErrorSaveThumbnail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceErrorSaveThumbnailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceError.saveThumbnail'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceErrorSaveThumbnail&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceError.saveThumbnail(error: $error)';
}


}

/// @nodoc
abstract mixin class $ServiceErrorSaveThumbnailCopyWith<$Res> implements $ServiceErrorCopyWith<$Res> {
  factory $ServiceErrorSaveThumbnailCopyWith(ServiceErrorSaveThumbnail value, $Res Function(ServiceErrorSaveThumbnail) _then) = _$ServiceErrorSaveThumbnailCopyWithImpl;
@useResult
$Res call({
 SaveThumbnailError error
});


$SaveThumbnailErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$ServiceErrorSaveThumbnailCopyWithImpl<$Res>
    implements $ServiceErrorSaveThumbnailCopyWith<$Res> {
  _$ServiceErrorSaveThumbnailCopyWithImpl(this._self, this._then);

  final ServiceErrorSaveThumbnail _self;
  final $Res Function(ServiceErrorSaveThumbnail) _then;

/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ServiceErrorSaveThumbnail(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SaveThumbnailError,
  ));
}

/// Create a copy of ServiceError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveThumbnailErrorCopyWith<$Res> get error {
  
  return $SaveThumbnailErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// @nodoc
mixin _$ServiceQueueItem implements DiagnosticableTreeMixin {

 ServiceRequest get request; MutableAuthFactor? get factor;
/// Create a copy of ServiceQueueItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceQueueItemCopyWith<ServiceQueueItem> get copyWith => _$ServiceQueueItemCopyWithImpl<ServiceQueueItem>(this as ServiceQueueItem, _$identity);

  /// Serializes this ServiceQueueItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceQueueItem'))
    ..add(DiagnosticsProperty('request', request))..add(DiagnosticsProperty('factor', factor));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceQueueItem&&(identical(other.request, request) || other.request == request)&&(identical(other.factor, factor) || other.factor == factor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,request,factor);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceQueueItem(request: $request, factor: $factor)';
}


}

/// @nodoc
abstract mixin class $ServiceQueueItemCopyWith<$Res>  {
  factory $ServiceQueueItemCopyWith(ServiceQueueItem value, $Res Function(ServiceQueueItem) _then) = _$ServiceQueueItemCopyWithImpl;
@useResult
$Res call({
 ServiceRequest request, MutableAuthFactor? factor
});


$ServiceRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$ServiceQueueItemCopyWithImpl<$Res>
    implements $ServiceQueueItemCopyWith<$Res> {
  _$ServiceQueueItemCopyWithImpl(this._self, this._then);

  final ServiceQueueItem _self;
  final $Res Function(ServiceQueueItem) _then;

/// Create a copy of ServiceQueueItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? request = null,Object? factor = freezed,}) {
  return _then(_self.copyWith(
request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ServiceRequest,factor: freezed == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as MutableAuthFactor?,
  ));
}
/// Create a copy of ServiceQueueItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceRequestCopyWith<$Res> get request {
  
  return $ServiceRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}



/// @nodoc
@JsonSerializable()

class _ServiceQueueItem with DiagnosticableTreeMixin implements ServiceQueueItem {
  const _ServiceQueueItem({required this.request, required this.factor});
  factory _ServiceQueueItem.fromJson(Map<String, dynamic> json) => _$ServiceQueueItemFromJson(json);

@override final  ServiceRequest request;
@override final  MutableAuthFactor? factor;

/// Create a copy of ServiceQueueItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceQueueItemCopyWith<_ServiceQueueItem> get copyWith => __$ServiceQueueItemCopyWithImpl<_ServiceQueueItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceQueueItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceQueueItem'))
    ..add(DiagnosticsProperty('request', request))..add(DiagnosticsProperty('factor', factor));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceQueueItem&&(identical(other.request, request) || other.request == request)&&(identical(other.factor, factor) || other.factor == factor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,request,factor);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceQueueItem(request: $request, factor: $factor)';
}


}

/// @nodoc
abstract mixin class _$ServiceQueueItemCopyWith<$Res> implements $ServiceQueueItemCopyWith<$Res> {
  factory _$ServiceQueueItemCopyWith(_ServiceQueueItem value, $Res Function(_ServiceQueueItem) _then) = __$ServiceQueueItemCopyWithImpl;
@override @useResult
$Res call({
 ServiceRequest request, MutableAuthFactor? factor
});


@override $ServiceRequestCopyWith<$Res> get request;

}
/// @nodoc
class __$ServiceQueueItemCopyWithImpl<$Res>
    implements _$ServiceQueueItemCopyWith<$Res> {
  __$ServiceQueueItemCopyWithImpl(this._self, this._then);

  final _ServiceQueueItem _self;
  final $Res Function(_ServiceQueueItem) _then;

/// Create a copy of ServiceQueueItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? request = null,Object? factor = freezed,}) {
  return _then(_ServiceQueueItem(
request: null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as ServiceRequest,factor: freezed == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as MutableAuthFactor?,
  ));
}

/// Create a copy of ServiceQueueItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceRequestCopyWith<$Res> get request {
  
  return $ServiceRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

// dart format on
