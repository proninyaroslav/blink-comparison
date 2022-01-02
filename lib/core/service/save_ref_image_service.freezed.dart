// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_ref_image_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceRequest _$ServiceRequestFromJson(Map<String, dynamic> json) {
  return _ServiceRequest.fromJson(json);
}

/// @nodoc
class _$ServiceRequestTearOff {
  const _$ServiceRequestTearOff();

  _ServiceRequest call(
      {required RefImageInfo info,
      @XFileConverter() required XFile srcFile,
      required SecureKey key}) {
    return _ServiceRequest(
      info: info,
      srcFile: srcFile,
      key: key,
    );
  }

  ServiceRequest fromJson(Map<String, Object?> json) {
    return ServiceRequest.fromJson(json);
  }
}

/// @nodoc
const $ServiceRequest = _$ServiceRequestTearOff();

/// @nodoc
mixin _$ServiceRequest {
  RefImageInfo get info => throw _privateConstructorUsedError;
  @XFileConverter()
  XFile get srcFile => throw _privateConstructorUsedError;
  SecureKey get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceRequestCopyWith<ServiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestCopyWith<$Res> {
  factory $ServiceRequestCopyWith(
          ServiceRequest value, $Res Function(ServiceRequest) then) =
      _$ServiceRequestCopyWithImpl<$Res>;
  $Res call(
      {RefImageInfo info, @XFileConverter() XFile srcFile, SecureKey key});

  $RefImageInfoCopyWith<$Res> get info;
  $SecureKeyCopyWith<$Res> get key;
}

/// @nodoc
class _$ServiceRequestCopyWithImpl<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  _$ServiceRequestCopyWithImpl(this._value, this._then);

  final ServiceRequest _value;
  // ignore: unused_field
  final $Res Function(ServiceRequest) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? srcFile = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      srcFile: srcFile == freezed
          ? _value.srcFile
          : srcFile // ignore: cast_nullable_to_non_nullable
              as XFile,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as SecureKey,
    ));
  }

  @override
  $RefImageInfoCopyWith<$Res> get info {
    return $RefImageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $SecureKeyCopyWith<$Res> get key {
    return $SecureKeyCopyWith<$Res>(_value.key, (value) {
      return _then(_value.copyWith(key: value));
    });
  }
}

/// @nodoc
abstract class _$ServiceRequestCopyWith<$Res>
    implements $ServiceRequestCopyWith<$Res> {
  factory _$ServiceRequestCopyWith(
          _ServiceRequest value, $Res Function(_ServiceRequest) then) =
      __$ServiceRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {RefImageInfo info, @XFileConverter() XFile srcFile, SecureKey key});

  @override
  $RefImageInfoCopyWith<$Res> get info;
  @override
  $SecureKeyCopyWith<$Res> get key;
}

/// @nodoc
class __$ServiceRequestCopyWithImpl<$Res>
    extends _$ServiceRequestCopyWithImpl<$Res>
    implements _$ServiceRequestCopyWith<$Res> {
  __$ServiceRequestCopyWithImpl(
      _ServiceRequest _value, $Res Function(_ServiceRequest) _then)
      : super(_value, (v) => _then(v as _ServiceRequest));

  @override
  _ServiceRequest get _value => super._value as _ServiceRequest;

  @override
  $Res call({
    Object? info = freezed,
    Object? srcFile = freezed,
    Object? key = freezed,
  }) {
    return _then(_ServiceRequest(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      srcFile: srcFile == freezed
          ? _value.srcFile
          : srcFile // ignore: cast_nullable_to_non_nullable
              as XFile,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as SecureKey,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceRequest
    with DiagnosticableTreeMixin
    implements _ServiceRequest {
  const _$_ServiceRequest(
      {required this.info,
      @XFileConverter() required this.srcFile,
      required this.key});

  factory _$_ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceRequestFromJson(json);

  @override
  final RefImageInfo info;
  @override
  @XFileConverter()
  final XFile srcFile;
  @override
  final SecureKey key;

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceRequest &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.srcFile, srcFile) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(srcFile),
      const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$ServiceRequestCopyWith<_ServiceRequest> get copyWith =>
      __$ServiceRequestCopyWithImpl<_ServiceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceRequestToJson(this);
  }
}

abstract class _ServiceRequest implements ServiceRequest {
  const factory _ServiceRequest(
      {required RefImageInfo info,
      @XFileConverter() required XFile srcFile,
      required SecureKey key}) = _$_ServiceRequest;

  factory _ServiceRequest.fromJson(Map<String, dynamic> json) =
      _$_ServiceRequest.fromJson;

  @override
  RefImageInfo get info;
  @override
  @XFileConverter()
  XFile get srcFile;
  @override
  SecureKey get key;
  @override
  @JsonKey(ignore: true)
  _$ServiceRequestCopyWith<_ServiceRequest> get copyWith =>
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
class _$ServiceResultTearOff {
  const _$ServiceResultTearOff();

  ServiceResultSuccess success({required ServiceRequest request}) {
    return ServiceResultSuccess(
      request: request,
    );
  }

  ServiceResultFail fail(
      {required ServiceRequest request, required ServiceError error}) {
    return ServiceResultFail(
      request: request,
      error: error,
    );
  }

  ServiceResult fromJson(Map<String, Object?> json) {
    return ServiceResult.fromJson(json);
  }
}

/// @nodoc
const $ServiceResult = _$ServiceResultTearOff();

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
    TResult Function(ServiceRequest request)? success,
    TResult Function(ServiceRequest request, ServiceError error)? fail,
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
    TResult Function(ServiceResultSuccess value)? success,
    TResult Function(ServiceResultFail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceResultSuccess value)? success,
    TResult Function(ServiceResultFail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceResultCopyWith<ServiceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceResultCopyWith<$Res> {
  factory $ServiceResultCopyWith(
          ServiceResult value, $Res Function(ServiceResult) then) =
      _$ServiceResultCopyWithImpl<$Res>;
  $Res call({ServiceRequest request});

  $ServiceRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$ServiceResultCopyWithImpl<$Res>
    implements $ServiceResultCopyWith<$Res> {
  _$ServiceResultCopyWithImpl(this._value, this._then);

  final ServiceResult _value;
  // ignore: unused_field
  final $Res Function(ServiceResult) _then;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
    ));
  }

  @override
  $ServiceRequestCopyWith<$Res> get request {
    return $ServiceRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
abstract class $ServiceResultSuccessCopyWith<$Res>
    implements $ServiceResultCopyWith<$Res> {
  factory $ServiceResultSuccessCopyWith(ServiceResultSuccess value,
          $Res Function(ServiceResultSuccess) then) =
      _$ServiceResultSuccessCopyWithImpl<$Res>;
  @override
  $Res call({ServiceRequest request});

  @override
  $ServiceRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$ServiceResultSuccessCopyWithImpl<$Res>
    extends _$ServiceResultCopyWithImpl<$Res>
    implements $ServiceResultSuccessCopyWith<$Res> {
  _$ServiceResultSuccessCopyWithImpl(
      ServiceResultSuccess _value, $Res Function(ServiceResultSuccess) _then)
      : super(_value, (v) => _then(v as ServiceResultSuccess));

  @override
  ServiceResultSuccess get _value => super._value as ServiceResultSuccess;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(ServiceResultSuccess(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceResultSuccess
    with DiagnosticableTreeMixin
    implements ServiceResultSuccess {
  const _$ServiceResultSuccess({required this.request, String? $type})
      : $type = $type ?? 'success';

  factory _$ServiceResultSuccess.fromJson(Map<String, dynamic> json) =>
      _$$ServiceResultSuccessFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceResultSuccess &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  $ServiceResultSuccessCopyWith<ServiceResultSuccess> get copyWith =>
      _$ServiceResultSuccessCopyWithImpl<ServiceResultSuccess>(
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
    TResult Function(ServiceRequest request)? success,
    TResult Function(ServiceRequest request, ServiceError error)? fail,
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
    TResult Function(ServiceResultSuccess value)? success,
    TResult Function(ServiceResultFail value)? fail,
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
    return _$$ServiceResultSuccessToJson(this);
  }
}

abstract class ServiceResultSuccess implements ServiceResult {
  const factory ServiceResultSuccess({required ServiceRequest request}) =
      _$ServiceResultSuccess;

  factory ServiceResultSuccess.fromJson(Map<String, dynamic> json) =
      _$ServiceResultSuccess.fromJson;

  @override
  ServiceRequest get request;
  @override
  @JsonKey(ignore: true)
  $ServiceResultSuccessCopyWith<ServiceResultSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceResultFailCopyWith<$Res>
    implements $ServiceResultCopyWith<$Res> {
  factory $ServiceResultFailCopyWith(
          ServiceResultFail value, $Res Function(ServiceResultFail) then) =
      _$ServiceResultFailCopyWithImpl<$Res>;
  @override
  $Res call({ServiceRequest request, ServiceError error});

  @override
  $ServiceRequestCopyWith<$Res> get request;
  $ServiceErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ServiceResultFailCopyWithImpl<$Res>
    extends _$ServiceResultCopyWithImpl<$Res>
    implements $ServiceResultFailCopyWith<$Res> {
  _$ServiceResultFailCopyWithImpl(
      ServiceResultFail _value, $Res Function(ServiceResultFail) _then)
      : super(_value, (v) => _then(v as ServiceResultFail));

  @override
  ServiceResultFail get _value => super._value as ServiceResultFail;

  @override
  $Res call({
    Object? request = freezed,
    Object? error = freezed,
  }) {
    return _then(ServiceResultFail(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ServiceRequest,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServiceError,
    ));
  }

  @override
  $ServiceErrorCopyWith<$Res> get error {
    return $ServiceErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceResultFail
    with DiagnosticableTreeMixin
    implements ServiceResultFail {
  const _$ServiceResultFail(
      {required this.request, required this.error, String? $type})
      : $type = $type ?? 'fail';

  factory _$ServiceResultFail.fromJson(Map<String, dynamic> json) =>
      _$$ServiceResultFailFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceResultFail &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ServiceResultFailCopyWith<ServiceResultFail> get copyWith =>
      _$ServiceResultFailCopyWithImpl<ServiceResultFail>(this, _$identity);

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
    TResult Function(ServiceRequest request)? success,
    TResult Function(ServiceRequest request, ServiceError error)? fail,
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
    TResult Function(ServiceResultSuccess value)? success,
    TResult Function(ServiceResultFail value)? fail,
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
    return _$$ServiceResultFailToJson(this);
  }
}

abstract class ServiceResultFail implements ServiceResult {
  const factory ServiceResultFail(
      {required ServiceRequest request,
      required ServiceError error}) = _$ServiceResultFail;

  factory ServiceResultFail.fromJson(Map<String, dynamic> json) =
      _$ServiceResultFail.fromJson;

  @override
  ServiceRequest get request;
  ServiceError get error;
  @override
  @JsonKey(ignore: true)
  $ServiceResultFailCopyWith<ServiceResultFail> get copyWith =>
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
class _$ServiceErrorTearOff {
  const _$ServiceErrorTearOff();

  ServiceErrorSaveImage saveImage(SaveRefImageError error) {
    return ServiceErrorSaveImage(
      error,
    );
  }

  ServiceErrorGenerateThumbnail generateThumbnail(
      GenerateThumbnailError error) {
    return ServiceErrorGenerateThumbnail(
      error,
    );
  }

  ServiceErrorSaveThumbnail saveThumbnail(SaveThumbnailError error) {
    return ServiceErrorSaveThumbnail(
      error,
    );
  }

  ServiceError fromJson(Map<String, Object?> json) {
    return ServiceError.fromJson(json);
  }
}

/// @nodoc
const $ServiceError = _$ServiceErrorTearOff();

/// @nodoc
mixin _$ServiceError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
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
    TResult Function(ServiceErrorSaveImage value)? saveImage,
    TResult Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceErrorCopyWith<$Res> {
  factory $ServiceErrorCopyWith(
          ServiceError value, $Res Function(ServiceError) then) =
      _$ServiceErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceErrorCopyWithImpl<$Res> implements $ServiceErrorCopyWith<$Res> {
  _$ServiceErrorCopyWithImpl(this._value, this._then);

  final ServiceError _value;
  // ignore: unused_field
  final $Res Function(ServiceError) _then;
}

/// @nodoc
abstract class $ServiceErrorSaveImageCopyWith<$Res> {
  factory $ServiceErrorSaveImageCopyWith(ServiceErrorSaveImage value,
          $Res Function(ServiceErrorSaveImage) then) =
      _$ServiceErrorSaveImageCopyWithImpl<$Res>;
  $Res call({SaveRefImageError error});

  $SaveRefImageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ServiceErrorSaveImageCopyWithImpl<$Res>
    extends _$ServiceErrorCopyWithImpl<$Res>
    implements $ServiceErrorSaveImageCopyWith<$Res> {
  _$ServiceErrorSaveImageCopyWithImpl(
      ServiceErrorSaveImage _value, $Res Function(ServiceErrorSaveImage) _then)
      : super(_value, (v) => _then(v as ServiceErrorSaveImage));

  @override
  ServiceErrorSaveImage get _value => super._value as ServiceErrorSaveImage;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ServiceErrorSaveImage(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveRefImageError,
    ));
  }

  @override
  $SaveRefImageErrorCopyWith<$Res> get error {
    return $SaveRefImageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceErrorSaveImage
    with DiagnosticableTreeMixin
    implements ServiceErrorSaveImage {
  const _$ServiceErrorSaveImage(this.error, {String? $type})
      : $type = $type ?? 'saveImage';

  factory _$ServiceErrorSaveImage.fromJson(Map<String, dynamic> json) =>
      _$$ServiceErrorSaveImageFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceErrorSaveImage &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ServiceErrorSaveImageCopyWith<ServiceErrorSaveImage> get copyWith =>
      _$ServiceErrorSaveImageCopyWithImpl<ServiceErrorSaveImage>(
          this, _$identity);

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
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
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
    TResult Function(ServiceErrorSaveImage value)? saveImage,
    TResult Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
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
    return _$$ServiceErrorSaveImageToJson(this);
  }
}

abstract class ServiceErrorSaveImage implements ServiceError {
  const factory ServiceErrorSaveImage(SaveRefImageError error) =
      _$ServiceErrorSaveImage;

  factory ServiceErrorSaveImage.fromJson(Map<String, dynamic> json) =
      _$ServiceErrorSaveImage.fromJson;

  SaveRefImageError get error;
  @JsonKey(ignore: true)
  $ServiceErrorSaveImageCopyWith<ServiceErrorSaveImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceErrorGenerateThumbnailCopyWith<$Res> {
  factory $ServiceErrorGenerateThumbnailCopyWith(
          ServiceErrorGenerateThumbnail value,
          $Res Function(ServiceErrorGenerateThumbnail) then) =
      _$ServiceErrorGenerateThumbnailCopyWithImpl<$Res>;
  $Res call({GenerateThumbnailError error});

  $GenerateThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ServiceErrorGenerateThumbnailCopyWithImpl<$Res>
    extends _$ServiceErrorCopyWithImpl<$Res>
    implements $ServiceErrorGenerateThumbnailCopyWith<$Res> {
  _$ServiceErrorGenerateThumbnailCopyWithImpl(
      ServiceErrorGenerateThumbnail _value,
      $Res Function(ServiceErrorGenerateThumbnail) _then)
      : super(_value, (v) => _then(v as ServiceErrorGenerateThumbnail));

  @override
  ServiceErrorGenerateThumbnail get _value =>
      super._value as ServiceErrorGenerateThumbnail;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ServiceErrorGenerateThumbnail(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as GenerateThumbnailError,
    ));
  }

  @override
  $GenerateThumbnailErrorCopyWith<$Res> get error {
    return $GenerateThumbnailErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceErrorGenerateThumbnail
    with DiagnosticableTreeMixin
    implements ServiceErrorGenerateThumbnail {
  const _$ServiceErrorGenerateThumbnail(this.error, {String? $type})
      : $type = $type ?? 'generateThumbnail';

  factory _$ServiceErrorGenerateThumbnail.fromJson(Map<String, dynamic> json) =>
      _$$ServiceErrorGenerateThumbnailFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceErrorGenerateThumbnail &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ServiceErrorGenerateThumbnailCopyWith<ServiceErrorGenerateThumbnail>
      get copyWith => _$ServiceErrorGenerateThumbnailCopyWithImpl<
          ServiceErrorGenerateThumbnail>(this, _$identity);

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
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
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
    TResult Function(ServiceErrorSaveImage value)? saveImage,
    TResult Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
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
    return _$$ServiceErrorGenerateThumbnailToJson(this);
  }
}

abstract class ServiceErrorGenerateThumbnail implements ServiceError {
  const factory ServiceErrorGenerateThumbnail(GenerateThumbnailError error) =
      _$ServiceErrorGenerateThumbnail;

  factory ServiceErrorGenerateThumbnail.fromJson(Map<String, dynamic> json) =
      _$ServiceErrorGenerateThumbnail.fromJson;

  GenerateThumbnailError get error;
  @JsonKey(ignore: true)
  $ServiceErrorGenerateThumbnailCopyWith<ServiceErrorGenerateThumbnail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceErrorSaveThumbnailCopyWith<$Res> {
  factory $ServiceErrorSaveThumbnailCopyWith(ServiceErrorSaveThumbnail value,
          $Res Function(ServiceErrorSaveThumbnail) then) =
      _$ServiceErrorSaveThumbnailCopyWithImpl<$Res>;
  $Res call({SaveThumbnailError error});

  $SaveThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$ServiceErrorSaveThumbnailCopyWithImpl<$Res>
    extends _$ServiceErrorCopyWithImpl<$Res>
    implements $ServiceErrorSaveThumbnailCopyWith<$Res> {
  _$ServiceErrorSaveThumbnailCopyWithImpl(ServiceErrorSaveThumbnail _value,
      $Res Function(ServiceErrorSaveThumbnail) _then)
      : super(_value, (v) => _then(v as ServiceErrorSaveThumbnail));

  @override
  ServiceErrorSaveThumbnail get _value =>
      super._value as ServiceErrorSaveThumbnail;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ServiceErrorSaveThumbnail(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveThumbnailError,
    ));
  }

  @override
  $SaveThumbnailErrorCopyWith<$Res> get error {
    return $SaveThumbnailErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceErrorSaveThumbnail
    with DiagnosticableTreeMixin
    implements ServiceErrorSaveThumbnail {
  const _$ServiceErrorSaveThumbnail(this.error, {String? $type})
      : $type = $type ?? 'saveThumbnail';

  factory _$ServiceErrorSaveThumbnail.fromJson(Map<String, dynamic> json) =>
      _$$ServiceErrorSaveThumbnailFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceErrorSaveThumbnail &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ServiceErrorSaveThumbnailCopyWith<ServiceErrorSaveThumbnail> get copyWith =>
      _$ServiceErrorSaveThumbnailCopyWithImpl<ServiceErrorSaveThumbnail>(
          this, _$identity);

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
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
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
    TResult Function(ServiceErrorSaveImage value)? saveImage,
    TResult Function(ServiceErrorGenerateThumbnail value)? generateThumbnail,
    TResult Function(ServiceErrorSaveThumbnail value)? saveThumbnail,
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
    return _$$ServiceErrorSaveThumbnailToJson(this);
  }
}

abstract class ServiceErrorSaveThumbnail implements ServiceError {
  const factory ServiceErrorSaveThumbnail(SaveThumbnailError error) =
      _$ServiceErrorSaveThumbnail;

  factory ServiceErrorSaveThumbnail.fromJson(Map<String, dynamic> json) =
      _$ServiceErrorSaveThumbnail.fromJson;

  SaveThumbnailError get error;
  @JsonKey(ignore: true)
  $ServiceErrorSaveThumbnailCopyWith<ServiceErrorSaveThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}
