// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_ref_image_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceRequest _$ServiceRequestFromJson(Map<String, dynamic> json) {
  return _ServiceRequest.fromJson(json);
}

/// @nodoc
mixin _$ServiceRequest {
  RefImageInfo get info => throw _privateConstructorUsedError;
  @XFileConverter()
  XFile get srcFile => throw _privateConstructorUsedError;
  AppSecureKey get key => throw _privateConstructorUsedError;

  /// Serializes this ServiceRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceRequestCopyWith<ServiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestCopyWith<$Res> {
  factory $ServiceRequestCopyWith(
          ServiceRequest value, $Res Function(ServiceRequest) then) =
      _$ServiceRequestCopyWithImpl<$Res, ServiceRequest>;
  @useResult
  $Res call(
      {RefImageInfo info, @XFileConverter() XFile srcFile, AppSecureKey key});

  $RefImageInfoCopyWith<$Res> get info;
  $AppSecureKeyCopyWith<$Res> get key;
}

/// @nodoc
class _$ServiceRequestCopyWithImpl<$Res, $Val extends ServiceRequest>
    implements $ServiceRequestCopyWith<$Res> {
  _$ServiceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? srcFile = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      srcFile: null == srcFile
          ? _value.srcFile
          : srcFile // ignore: cast_nullable_to_non_nullable
              as XFile,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AppSecureKey,
    ) as $Val);
  }

  /// Create a copy of ServiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageInfoCopyWith<$Res> get info {
    return $RefImageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  /// Create a copy of ServiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSecureKeyCopyWith<$Res> get key {
    return $AppSecureKeyCopyWith<$Res>(_value.key, (value) {
      return _then(_value.copyWith(key: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceRequestImplCopyWith<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  factory _$$ServiceRequestImplCopyWith(_$ServiceRequestImpl value,
          $Res Function(_$ServiceRequestImpl) then) =
      __$$ServiceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RefImageInfo info, @XFileConverter() XFile srcFile, AppSecureKey key});

  @override
  $RefImageInfoCopyWith<$Res> get info;
  @override
  $AppSecureKeyCopyWith<$Res> get key;
}

/// @nodoc
class __$$ServiceRequestImplCopyWithImpl<$Res>
    extends _$ServiceRequestCopyWithImpl<$Res, _$ServiceRequestImpl>
    implements _$$ServiceRequestImplCopyWith<$Res> {
  __$$ServiceRequestImplCopyWithImpl(
      _$ServiceRequestImpl _value, $Res Function(_$ServiceRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? srcFile = null,
    Object? key = null,
  }) {
    return _then(_$ServiceRequestImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      srcFile: null == srcFile
          ? _value.srcFile
          : srcFile // ignore: cast_nullable_to_non_nullable
              as XFile,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AppSecureKey,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceRequestImpl
    with DiagnosticableTreeMixin
    implements _ServiceRequest {
  const _$ServiceRequestImpl(
      {required this.info,
      @XFileConverter() required this.srcFile,
      required this.key});

  factory _$ServiceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceRequestImplFromJson(json);

  @override
  final RefImageInfo info;
  @override
  @XFileConverter()
  final XFile srcFile;
  @override
  final AppSecureKey key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceRequest(info: $info, srcFile: $srcFile, key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceRequest'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('srcFile', srcFile))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceRequestImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.srcFile, srcFile) || other.srcFile == srcFile) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info, srcFile, key);

  /// Create a copy of ServiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceRequestImplCopyWith<_$ServiceRequestImpl> get copyWith =>
      __$$ServiceRequestImplCopyWithImpl<_$ServiceRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceRequestImplToJson(
      this,
    );
  }
}

abstract class _ServiceRequest implements ServiceRequest {
  const factory _ServiceRequest(
      {required final RefImageInfo info,
      @XFileConverter() required final XFile srcFile,
      required final AppSecureKey key}) = _$ServiceRequestImpl;

  factory _ServiceRequest.fromJson(Map<String, dynamic> json) =
      _$ServiceRequestImpl.fromJson;

  @override
  RefImageInfo get info;
  @override
  @XFileConverter()
  XFile get srcFile;
  @override
  AppSecureKey get key;

  /// Create a copy of ServiceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceRequestImplCopyWith<_$ServiceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceResult _$ServiceResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return ServiceResultSuccess.fromJson(json);
    case 'fail':
      return ServiceResultFail.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ServiceResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ServiceResult {
  ServiceRequest get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServiceRequest request) success,
    required TResult Function(ServiceRequest request, ServiceError error) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServiceRequest request)? success,
    TResult? Function(ServiceRequest request, ServiceError error)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServiceRequest request)? success,
    TResult Function(ServiceRequest request, ServiceError error)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceResultSuccess value) success,
    required TResult Function(ServiceResultFail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceResultSuccess value)? success,
    TResult? Function(ServiceResultFail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceResultSuccess value)? success,
    TResult Function(ServiceResultFail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ServiceResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceResultCopyWith<ServiceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceResultCopyWith<$Res> {
  factory $ServiceResultCopyWith(
          ServiceResult value, $Res Function(ServiceResult) then) =
      _$ServiceResultCopyWithImpl<$Res, ServiceResult>;
  @useResult
  $Res call({ServiceRequest request});

  $ServiceRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$ServiceResultCopyWithImpl<$Res, $Val extends ServiceResult>
    implements $ServiceResultCopyWith<$Res> {
  _$ServiceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
    ) as $Val);
  }

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceRequestCopyWith<$Res> get request {
    return $ServiceRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceResultSuccessImplCopyWith<$Res>
    implements $ServiceResultCopyWith<$Res> {
  factory _$$ServiceResultSuccessImplCopyWith(_$ServiceResultSuccessImpl value,
          $Res Function(_$ServiceResultSuccessImpl) then) =
      __$$ServiceResultSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServiceRequest request});

  @override
  $ServiceRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$ServiceResultSuccessImplCopyWithImpl<$Res>
    extends _$ServiceResultCopyWithImpl<$Res, _$ServiceResultSuccessImpl>
    implements _$$ServiceResultSuccessImplCopyWith<$Res> {
  __$$ServiceResultSuccessImplCopyWithImpl(_$ServiceResultSuccessImpl _value,
      $Res Function(_$ServiceResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$ServiceResultSuccessImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceResultSuccessImpl
    with DiagnosticableTreeMixin
    implements ServiceResultSuccess {
  const _$ServiceResultSuccessImpl({required this.request, final String? $type})
      : $type = $type ?? 'success';

  factory _$ServiceResultSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceResultSuccessImplFromJson(json);

  @override
  final ServiceRequest request;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceResult.success(request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceResult.success'))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceResultSuccessImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceResultSuccessImplCopyWith<_$ServiceResultSuccessImpl>
      get copyWith =>
          __$$ServiceResultSuccessImplCopyWithImpl<_$ServiceResultSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServiceRequest request) success,
    required TResult Function(ServiceRequest request, ServiceError error) fail,
  }) {
    return success(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServiceRequest request)? success,
    TResult? Function(ServiceRequest request, ServiceError error)? fail,
  }) {
    return success?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServiceRequest request)? success,
    TResult Function(ServiceRequest request, ServiceError error)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceResultSuccess value) success,
    required TResult Function(ServiceResultFail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceResultSuccess value)? success,
    TResult? Function(ServiceResultFail value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceResultSuccess value)? success,
    TResult Function(ServiceResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceResultSuccessImplToJson(
      this,
    );
  }
}

abstract class ServiceResultSuccess implements ServiceResult {
  const factory ServiceResultSuccess({required final ServiceRequest request}) =
      _$ServiceResultSuccessImpl;

  factory ServiceResultSuccess.fromJson(Map<String, dynamic> json) =
      _$ServiceResultSuccessImpl.fromJson;

  @override
  ServiceRequest get request;

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceResultSuccessImplCopyWith<_$ServiceResultSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceResultFailImplCopyWith<$Res>
    implements $ServiceResultCopyWith<$Res> {
  factory _$$ServiceResultFailImplCopyWith(_$ServiceResultFailImpl value,
          $Res Function(_$ServiceResultFailImpl) then) =
      __$$ServiceResultFailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServiceRequest request, ServiceError error});

  @override
  $ServiceRequestCopyWith<$Res> get request;
  $ServiceErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ServiceResultFailImplCopyWithImpl<$Res>
    extends _$ServiceResultCopyWithImpl<$Res, _$ServiceResultFailImpl>
    implements _$$ServiceResultFailImplCopyWith<$Res> {
  __$$ServiceResultFailImplCopyWithImpl(_$ServiceResultFailImpl _value,
      $Res Function(_$ServiceResultFailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? error = null,
  }) {
    return _then(_$ServiceResultFailImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServiceError,
    ));
  }

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceErrorCopyWith<$Res> get error {
    return $ServiceErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceResultFailImpl
    with DiagnosticableTreeMixin
    implements ServiceResultFail {
  const _$ServiceResultFailImpl(
      {required this.request, required this.error, final String? $type})
      : $type = $type ?? 'fail';

  factory _$ServiceResultFailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceResultFailImplFromJson(json);

  @override
  final ServiceRequest request;
  @override
  final ServiceError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceResult.fail(request: $request, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceResult.fail'))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceResultFailImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, request, error);

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceResultFailImplCopyWith<_$ServiceResultFailImpl> get copyWith =>
      __$$ServiceResultFailImplCopyWithImpl<_$ServiceResultFailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServiceRequest request) success,
    required TResult Function(ServiceRequest request, ServiceError error) fail,
  }) {
    return fail(request, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ServiceRequest request)? success,
    TResult? Function(ServiceRequest request, ServiceError error)? fail,
  }) {
    return fail?.call(request, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServiceRequest request)? success,
    TResult Function(ServiceRequest request, ServiceError error)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(request, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceResultSuccess value) success,
    required TResult Function(ServiceResultFail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceResultSuccess value)? success,
    TResult? Function(ServiceResultFail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceResultSuccess value)? success,
    TResult Function(ServiceResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceResultFailImplToJson(
      this,
    );
  }
}

abstract class ServiceResultFail implements ServiceResult {
  const factory ServiceResultFail(
      {required final ServiceRequest request,
      required final ServiceError error}) = _$ServiceResultFailImpl;

  factory ServiceResultFail.fromJson(Map<String, dynamic> json) =
      _$ServiceResultFailImpl.fromJson;

  @override
  ServiceRequest get request;
  ServiceError get error;

  /// Create a copy of ServiceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceResultFailImplCopyWith<_$ServiceResultFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceError _$ServiceErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'saveImage':
      return ServiceErrorSaveImage.fromJson(json);
    case 'generateThumbnail':
      return ServiceErrorGenerateThumbnail.fromJson(json);
    case 'saveThumbnail':
      return ServiceErrorSaveThumbnail.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ServiceError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ServiceError {
  Object get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SaveRefImageError error)? saveImage,
    TResult? Function(GenerateThumbnailError error)? generateThumbnail,
    TResult? Function(SaveThumbnailError error)? saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceErrorSaveImage value) saveImage,
    required TResult Function(ServiceErrorGenerateThumbnail value)
        generateThumbnail,
    required TResult Function(ServiceErrorSaveThumbnail value) saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceErrorSaveImage value)? saveImage,
    TResult? Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult? Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceErrorSaveImage value)? saveImage,
    TResult Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ServiceError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceErrorCopyWith<$Res> {
  factory $ServiceErrorCopyWith(
          ServiceError value, $Res Function(ServiceError) then) =
      _$ServiceErrorCopyWithImpl<$Res, ServiceError>;
}

/// @nodoc
class _$ServiceErrorCopyWithImpl<$Res, $Val extends ServiceError>
    implements $ServiceErrorCopyWith<$Res> {
  _$ServiceErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServiceErrorSaveImageImplCopyWith<$Res> {
  factory _$$ServiceErrorSaveImageImplCopyWith(
          _$ServiceErrorSaveImageImpl value,
          $Res Function(_$ServiceErrorSaveImageImpl) then) =
      __$$ServiceErrorSaveImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SaveRefImageError error});

  $SaveRefImageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ServiceErrorSaveImageImplCopyWithImpl<$Res>
    extends _$ServiceErrorCopyWithImpl<$Res, _$ServiceErrorSaveImageImpl>
    implements _$$ServiceErrorSaveImageImplCopyWith<$Res> {
  __$$ServiceErrorSaveImageImplCopyWithImpl(_$ServiceErrorSaveImageImpl _value,
      $Res Function(_$ServiceErrorSaveImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServiceErrorSaveImageImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveRefImageError,
    ));
  }

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaveRefImageErrorCopyWith<$Res> get error {
    return $SaveRefImageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceErrorSaveImageImpl
    with DiagnosticableTreeMixin
    implements ServiceErrorSaveImage {
  const _$ServiceErrorSaveImageImpl(this.error, {final String? $type})
      : $type = $type ?? 'saveImage';

  factory _$ServiceErrorSaveImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceErrorSaveImageImplFromJson(json);

  @override
  final SaveRefImageError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceError.saveImage(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceError.saveImage'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceErrorSaveImageImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceErrorSaveImageImplCopyWith<_$ServiceErrorSaveImageImpl>
      get copyWith => __$$ServiceErrorSaveImageImplCopyWithImpl<
          _$ServiceErrorSaveImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) {
    return saveImage(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SaveRefImageError error)? saveImage,
    TResult? Function(GenerateThumbnailError error)? generateThumbnail,
    TResult? Function(SaveThumbnailError error)? saveThumbnail,
  }) {
    return saveImage?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (saveImage != null) {
      return saveImage(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceErrorSaveImage value) saveImage,
    required TResult Function(ServiceErrorGenerateThumbnail value)
        generateThumbnail,
    required TResult Function(ServiceErrorSaveThumbnail value) saveThumbnail,
  }) {
    return saveImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceErrorSaveImage value)? saveImage,
    TResult? Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult? Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
  }) {
    return saveImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceErrorSaveImage value)? saveImage,
    TResult Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (saveImage != null) {
      return saveImage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceErrorSaveImageImplToJson(
      this,
    );
  }
}

abstract class ServiceErrorSaveImage implements ServiceError {
  const factory ServiceErrorSaveImage(final SaveRefImageError error) =
      _$ServiceErrorSaveImageImpl;

  factory ServiceErrorSaveImage.fromJson(Map<String, dynamic> json) =
      _$ServiceErrorSaveImageImpl.fromJson;

  @override
  SaveRefImageError get error;

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceErrorSaveImageImplCopyWith<_$ServiceErrorSaveImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceErrorGenerateThumbnailImplCopyWith<$Res> {
  factory _$$ServiceErrorGenerateThumbnailImplCopyWith(
          _$ServiceErrorGenerateThumbnailImpl value,
          $Res Function(_$ServiceErrorGenerateThumbnailImpl) then) =
      __$$ServiceErrorGenerateThumbnailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenerateThumbnailError error});

  $GenerateThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ServiceErrorGenerateThumbnailImplCopyWithImpl<$Res>
    extends _$ServiceErrorCopyWithImpl<$Res,
        _$ServiceErrorGenerateThumbnailImpl>
    implements _$$ServiceErrorGenerateThumbnailImplCopyWith<$Res> {
  __$$ServiceErrorGenerateThumbnailImplCopyWithImpl(
      _$ServiceErrorGenerateThumbnailImpl _value,
      $Res Function(_$ServiceErrorGenerateThumbnailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServiceErrorGenerateThumbnailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as GenerateThumbnailError,
    ));
  }

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenerateThumbnailErrorCopyWith<$Res> get error {
    return $GenerateThumbnailErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceErrorGenerateThumbnailImpl
    with DiagnosticableTreeMixin
    implements ServiceErrorGenerateThumbnail {
  const _$ServiceErrorGenerateThumbnailImpl(this.error, {final String? $type})
      : $type = $type ?? 'generateThumbnail';

  factory _$ServiceErrorGenerateThumbnailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServiceErrorGenerateThumbnailImplFromJson(json);

  @override
  final GenerateThumbnailError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceError.generateThumbnail(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceError.generateThumbnail'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceErrorGenerateThumbnailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceErrorGenerateThumbnailImplCopyWith<
          _$ServiceErrorGenerateThumbnailImpl>
      get copyWith => __$$ServiceErrorGenerateThumbnailImplCopyWithImpl<
          _$ServiceErrorGenerateThumbnailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) {
    return generateThumbnail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SaveRefImageError error)? saveImage,
    TResult? Function(GenerateThumbnailError error)? generateThumbnail,
    TResult? Function(SaveThumbnailError error)? saveThumbnail,
  }) {
    return generateThumbnail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (generateThumbnail != null) {
      return generateThumbnail(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceErrorSaveImage value) saveImage,
    required TResult Function(ServiceErrorGenerateThumbnail value)
        generateThumbnail,
    required TResult Function(ServiceErrorSaveThumbnail value) saveThumbnail,
  }) {
    return generateThumbnail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceErrorSaveImage value)? saveImage,
    TResult? Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult? Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
  }) {
    return generateThumbnail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceErrorSaveImage value)? saveImage,
    TResult Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (generateThumbnail != null) {
      return generateThumbnail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceErrorGenerateThumbnailImplToJson(
      this,
    );
  }
}

abstract class ServiceErrorGenerateThumbnail implements ServiceError {
  const factory ServiceErrorGenerateThumbnail(
      final GenerateThumbnailError error) = _$ServiceErrorGenerateThumbnailImpl;

  factory ServiceErrorGenerateThumbnail.fromJson(Map<String, dynamic> json) =
      _$ServiceErrorGenerateThumbnailImpl.fromJson;

  @override
  GenerateThumbnailError get error;

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceErrorGenerateThumbnailImplCopyWith<
          _$ServiceErrorGenerateThumbnailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceErrorSaveThumbnailImplCopyWith<$Res> {
  factory _$$ServiceErrorSaveThumbnailImplCopyWith(
          _$ServiceErrorSaveThumbnailImpl value,
          $Res Function(_$ServiceErrorSaveThumbnailImpl) then) =
      __$$ServiceErrorSaveThumbnailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SaveThumbnailError error});

  $SaveThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$ServiceErrorSaveThumbnailImplCopyWithImpl<$Res>
    extends _$ServiceErrorCopyWithImpl<$Res, _$ServiceErrorSaveThumbnailImpl>
    implements _$$ServiceErrorSaveThumbnailImplCopyWith<$Res> {
  __$$ServiceErrorSaveThumbnailImplCopyWithImpl(
      _$ServiceErrorSaveThumbnailImpl _value,
      $Res Function(_$ServiceErrorSaveThumbnailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServiceErrorSaveThumbnailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveThumbnailError,
    ));
  }

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaveThumbnailErrorCopyWith<$Res> get error {
    return $SaveThumbnailErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceErrorSaveThumbnailImpl
    with DiagnosticableTreeMixin
    implements ServiceErrorSaveThumbnail {
  const _$ServiceErrorSaveThumbnailImpl(this.error, {final String? $type})
      : $type = $type ?? 'saveThumbnail';

  factory _$ServiceErrorSaveThumbnailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceErrorSaveThumbnailImplFromJson(json);

  @override
  final SaveThumbnailError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceError.saveThumbnail(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceError.saveThumbnail'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceErrorSaveThumbnailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceErrorSaveThumbnailImplCopyWith<_$ServiceErrorSaveThumbnailImpl>
      get copyWith => __$$ServiceErrorSaveThumbnailImplCopyWithImpl<
          _$ServiceErrorSaveThumbnailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) {
    return saveThumbnail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SaveRefImageError error)? saveImage,
    TResult? Function(GenerateThumbnailError error)? generateThumbnail,
    TResult? Function(SaveThumbnailError error)? saveThumbnail,
  }) {
    return saveThumbnail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (saveThumbnail != null) {
      return saveThumbnail(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceErrorSaveImage value) saveImage,
    required TResult Function(ServiceErrorGenerateThumbnail value)
        generateThumbnail,
    required TResult Function(ServiceErrorSaveThumbnail value) saveThumbnail,
  }) {
    return saveThumbnail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceErrorSaveImage value)? saveImage,
    TResult? Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult? Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
  }) {
    return saveThumbnail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceErrorSaveImage value)? saveImage,
    TResult Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (saveThumbnail != null) {
      return saveThumbnail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceErrorSaveThumbnailImplToJson(
      this,
    );
  }
}

abstract class ServiceErrorSaveThumbnail implements ServiceError {
  const factory ServiceErrorSaveThumbnail(final SaveThumbnailError error) =
      _$ServiceErrorSaveThumbnailImpl;

  factory ServiceErrorSaveThumbnail.fromJson(Map<String, dynamic> json) =
      _$ServiceErrorSaveThumbnailImpl.fromJson;

  @override
  SaveThumbnailError get error;

  /// Create a copy of ServiceError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceErrorSaveThumbnailImplCopyWith<_$ServiceErrorSaveThumbnailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
