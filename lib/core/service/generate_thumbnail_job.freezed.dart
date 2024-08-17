// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_thumbnail_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenerateThumbnailResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List thumbnail) success,
    required TResult Function(GenerateThumbnailError error) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List thumbnail)? success,
    TResult? Function(GenerateThumbnailError error)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List thumbnail)? success,
    TResult Function(GenerateThumbnailError error)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateThumbnailResultSuccess value) success,
    required TResult Function(GenerateThumbnailResultFail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateThumbnailResultSuccess value)? success,
    TResult? Function(GenerateThumbnailResultFail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateThumbnailResultSuccess value)? success,
    TResult Function(GenerateThumbnailResultFail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateThumbnailResultCopyWith<$Res> {
  factory $GenerateThumbnailResultCopyWith(GenerateThumbnailResult value,
          $Res Function(GenerateThumbnailResult) then) =
      _$GenerateThumbnailResultCopyWithImpl<$Res, GenerateThumbnailResult>;
}

/// @nodoc
class _$GenerateThumbnailResultCopyWithImpl<$Res,
        $Val extends GenerateThumbnailResult>
    implements $GenerateThumbnailResultCopyWith<$Res> {
  _$GenerateThumbnailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GenerateThumbnailResultSuccessImplCopyWith<$Res> {
  factory _$$GenerateThumbnailResultSuccessImplCopyWith(
          _$GenerateThumbnailResultSuccessImpl value,
          $Res Function(_$GenerateThumbnailResultSuccessImpl) then) =
      __$$GenerateThumbnailResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List thumbnail});
}

/// @nodoc
class __$$GenerateThumbnailResultSuccessImplCopyWithImpl<$Res>
    extends _$GenerateThumbnailResultCopyWithImpl<$Res,
        _$GenerateThumbnailResultSuccessImpl>
    implements _$$GenerateThumbnailResultSuccessImplCopyWith<$Res> {
  __$$GenerateThumbnailResultSuccessImplCopyWithImpl(
      _$GenerateThumbnailResultSuccessImpl _value,
      $Res Function(_$GenerateThumbnailResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
  }) {
    return _then(_$GenerateThumbnailResultSuccessImpl(
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$GenerateThumbnailResultSuccessImpl
    implements GenerateThumbnailResultSuccess {
  const _$GenerateThumbnailResultSuccessImpl({required this.thumbnail});

  @override
  final Uint8List thumbnail;

  @override
  String toString() {
    return 'GenerateThumbnailResult.success(thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateThumbnailResultSuccessImpl &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(thumbnail));

  /// Create a copy of GenerateThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateThumbnailResultSuccessImplCopyWith<
          _$GenerateThumbnailResultSuccessImpl>
      get copyWith => __$$GenerateThumbnailResultSuccessImplCopyWithImpl<
          _$GenerateThumbnailResultSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List thumbnail) success,
    required TResult Function(GenerateThumbnailError error) fail,
  }) {
    return success(thumbnail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List thumbnail)? success,
    TResult? Function(GenerateThumbnailError error)? fail,
  }) {
    return success?.call(thumbnail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List thumbnail)? success,
    TResult Function(GenerateThumbnailError error)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(thumbnail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateThumbnailResultSuccess value) success,
    required TResult Function(GenerateThumbnailResultFail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateThumbnailResultSuccess value)? success,
    TResult? Function(GenerateThumbnailResultFail value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateThumbnailResultSuccess value)? success,
    TResult Function(GenerateThumbnailResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GenerateThumbnailResultSuccess
    implements GenerateThumbnailResult {
  const factory GenerateThumbnailResultSuccess(
          {required final Uint8List thumbnail}) =
      _$GenerateThumbnailResultSuccessImpl;

  Uint8List get thumbnail;

  /// Create a copy of GenerateThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateThumbnailResultSuccessImplCopyWith<
          _$GenerateThumbnailResultSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateThumbnailResultFailImplCopyWith<$Res> {
  factory _$$GenerateThumbnailResultFailImplCopyWith(
          _$GenerateThumbnailResultFailImpl value,
          $Res Function(_$GenerateThumbnailResultFailImpl) then) =
      __$$GenerateThumbnailResultFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenerateThumbnailError error});

  $GenerateThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$GenerateThumbnailResultFailImplCopyWithImpl<$Res>
    extends _$GenerateThumbnailResultCopyWithImpl<$Res,
        _$GenerateThumbnailResultFailImpl>
    implements _$$GenerateThumbnailResultFailImplCopyWith<$Res> {
  __$$GenerateThumbnailResultFailImplCopyWithImpl(
      _$GenerateThumbnailResultFailImpl _value,
      $Res Function(_$GenerateThumbnailResultFailImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GenerateThumbnailResultFailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as GenerateThumbnailError,
    ));
  }

  /// Create a copy of GenerateThumbnailResult
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

class _$GenerateThumbnailResultFailImpl implements GenerateThumbnailResultFail {
  const _$GenerateThumbnailResultFailImpl(this.error);

  @override
  final GenerateThumbnailError error;

  @override
  String toString() {
    return 'GenerateThumbnailResult.fail(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateThumbnailResultFailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GenerateThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateThumbnailResultFailImplCopyWith<_$GenerateThumbnailResultFailImpl>
      get copyWith => __$$GenerateThumbnailResultFailImplCopyWithImpl<
          _$GenerateThumbnailResultFailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List thumbnail) success,
    required TResult Function(GenerateThumbnailError error) fail,
  }) {
    return fail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List thumbnail)? success,
    TResult? Function(GenerateThumbnailError error)? fail,
  }) {
    return fail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List thumbnail)? success,
    TResult Function(GenerateThumbnailError error)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateThumbnailResultSuccess value) success,
    required TResult Function(GenerateThumbnailResultFail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateThumbnailResultSuccess value)? success,
    TResult? Function(GenerateThumbnailResultFail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateThumbnailResultSuccess value)? success,
    TResult Function(GenerateThumbnailResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class GenerateThumbnailResultFail implements GenerateThumbnailResult {
  const factory GenerateThumbnailResultFail(
      final GenerateThumbnailError error) = _$GenerateThumbnailResultFailImpl;

  GenerateThumbnailError get error;

  /// Create a copy of GenerateThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateThumbnailResultFailImplCopyWith<_$GenerateThumbnailResultFailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GenerateThumbnailError _$GenerateThumbnailErrorFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fs':
      return GenerateThumbnailErrorFs.fromJson(json);
    case 'fileNotFound':
      return GenerateThumbnailErrorFileNotFound.fromJson(json);
    case 'unsupportedFormat':
      return GenerateThumbnailErrorUnsupportedFormat.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'GenerateThumbnailError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$GenerateThumbnailError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsError error) fs,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String path) unsupportedFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsError error)? fs,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String path)? unsupportedFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsError error)? fs,
    TResult Function(String path)? fileNotFound,
    TResult Function(String path)? unsupportedFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateThumbnailErrorFs value) fs,
    required TResult Function(GenerateThumbnailErrorFileNotFound value)
        fileNotFound,
    required TResult Function(GenerateThumbnailErrorUnsupportedFormat value)
        unsupportedFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateThumbnailErrorFs value)? fs,
    TResult? Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult? Function(GenerateThumbnailErrorUnsupportedFormat value)?
        unsupportedFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateThumbnailErrorFs value)? fs,
    TResult Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult Function(GenerateThumbnailErrorUnsupportedFormat value)?
        unsupportedFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this GenerateThumbnailError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateThumbnailErrorCopyWith<$Res> {
  factory $GenerateThumbnailErrorCopyWith(GenerateThumbnailError value,
          $Res Function(GenerateThumbnailError) then) =
      _$GenerateThumbnailErrorCopyWithImpl<$Res, GenerateThumbnailError>;
}

/// @nodoc
class _$GenerateThumbnailErrorCopyWithImpl<$Res,
        $Val extends GenerateThumbnailError>
    implements $GenerateThumbnailErrorCopyWith<$Res> {
  _$GenerateThumbnailErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GenerateThumbnailErrorFsImplCopyWith<$Res> {
  factory _$$GenerateThumbnailErrorFsImplCopyWith(
          _$GenerateThumbnailErrorFsImpl value,
          $Res Function(_$GenerateThumbnailErrorFsImpl) then) =
      __$$GenerateThumbnailErrorFsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$GenerateThumbnailErrorFsImplCopyWithImpl<$Res>
    extends _$GenerateThumbnailErrorCopyWithImpl<$Res,
        _$GenerateThumbnailErrorFsImpl>
    implements _$$GenerateThumbnailErrorFsImplCopyWith<$Res> {
  __$$GenerateThumbnailErrorFsImplCopyWithImpl(
      _$GenerateThumbnailErrorFsImpl _value,
      $Res Function(_$GenerateThumbnailErrorFsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GenerateThumbnailErrorFsImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsErrorCopyWith<$Res> get error {
    return $FsErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateThumbnailErrorFsImpl implements GenerateThumbnailErrorFs {
  const _$GenerateThumbnailErrorFsImpl(this.error, {final String? $type})
      : $type = $type ?? 'fs';

  factory _$GenerateThumbnailErrorFsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateThumbnailErrorFsImplFromJson(json);

  @override
  final FsError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenerateThumbnailError.fs(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateThumbnailErrorFsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateThumbnailErrorFsImplCopyWith<_$GenerateThumbnailErrorFsImpl>
      get copyWith => __$$GenerateThumbnailErrorFsImplCopyWithImpl<
          _$GenerateThumbnailErrorFsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsError error) fs,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String path) unsupportedFormat,
  }) {
    return fs(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsError error)? fs,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String path)? unsupportedFormat,
  }) {
    return fs?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsError error)? fs,
    TResult Function(String path)? fileNotFound,
    TResult Function(String path)? unsupportedFormat,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateThumbnailErrorFs value) fs,
    required TResult Function(GenerateThumbnailErrorFileNotFound value)
        fileNotFound,
    required TResult Function(GenerateThumbnailErrorUnsupportedFormat value)
        unsupportedFormat,
  }) {
    return fs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateThumbnailErrorFs value)? fs,
    TResult? Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult? Function(GenerateThumbnailErrorUnsupportedFormat value)?
        unsupportedFormat,
  }) {
    return fs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateThumbnailErrorFs value)? fs,
    TResult Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult Function(GenerateThumbnailErrorUnsupportedFormat value)?
        unsupportedFormat,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateThumbnailErrorFsImplToJson(
      this,
    );
  }
}

abstract class GenerateThumbnailErrorFs implements GenerateThumbnailError {
  const factory GenerateThumbnailErrorFs(final FsError error) =
      _$GenerateThumbnailErrorFsImpl;

  factory GenerateThumbnailErrorFs.fromJson(Map<String, dynamic> json) =
      _$GenerateThumbnailErrorFsImpl.fromJson;

  FsError get error;

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateThumbnailErrorFsImplCopyWith<_$GenerateThumbnailErrorFsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateThumbnailErrorFileNotFoundImplCopyWith<$Res> {
  factory _$$GenerateThumbnailErrorFileNotFoundImplCopyWith(
          _$GenerateThumbnailErrorFileNotFoundImpl value,
          $Res Function(_$GenerateThumbnailErrorFileNotFoundImpl) then) =
      __$$GenerateThumbnailErrorFileNotFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$GenerateThumbnailErrorFileNotFoundImplCopyWithImpl<$Res>
    extends _$GenerateThumbnailErrorCopyWithImpl<$Res,
        _$GenerateThumbnailErrorFileNotFoundImpl>
    implements _$$GenerateThumbnailErrorFileNotFoundImplCopyWith<$Res> {
  __$$GenerateThumbnailErrorFileNotFoundImplCopyWithImpl(
      _$GenerateThumbnailErrorFileNotFoundImpl _value,
      $Res Function(_$GenerateThumbnailErrorFileNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$GenerateThumbnailErrorFileNotFoundImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateThumbnailErrorFileNotFoundImpl
    implements GenerateThumbnailErrorFileNotFound {
  const _$GenerateThumbnailErrorFileNotFoundImpl(
      {required this.path, final String? $type})
      : $type = $type ?? 'fileNotFound';

  factory _$GenerateThumbnailErrorFileNotFoundImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GenerateThumbnailErrorFileNotFoundImplFromJson(json);

  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenerateThumbnailError.fileNotFound(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateThumbnailErrorFileNotFoundImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateThumbnailErrorFileNotFoundImplCopyWith<
          _$GenerateThumbnailErrorFileNotFoundImpl>
      get copyWith => __$$GenerateThumbnailErrorFileNotFoundImplCopyWithImpl<
          _$GenerateThumbnailErrorFileNotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsError error) fs,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String path) unsupportedFormat,
  }) {
    return fileNotFound(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsError error)? fs,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String path)? unsupportedFormat,
  }) {
    return fileNotFound?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsError error)? fs,
    TResult Function(String path)? fileNotFound,
    TResult Function(String path)? unsupportedFormat,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateThumbnailErrorFs value) fs,
    required TResult Function(GenerateThumbnailErrorFileNotFound value)
        fileNotFound,
    required TResult Function(GenerateThumbnailErrorUnsupportedFormat value)
        unsupportedFormat,
  }) {
    return fileNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateThumbnailErrorFs value)? fs,
    TResult? Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult? Function(GenerateThumbnailErrorUnsupportedFormat value)?
        unsupportedFormat,
  }) {
    return fileNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateThumbnailErrorFs value)? fs,
    TResult Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult Function(GenerateThumbnailErrorUnsupportedFormat value)?
        unsupportedFormat,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateThumbnailErrorFileNotFoundImplToJson(
      this,
    );
  }
}

abstract class GenerateThumbnailErrorFileNotFound
    implements GenerateThumbnailError {
  const factory GenerateThumbnailErrorFileNotFound(
      {required final String path}) = _$GenerateThumbnailErrorFileNotFoundImpl;

  factory GenerateThumbnailErrorFileNotFound.fromJson(
          Map<String, dynamic> json) =
      _$GenerateThumbnailErrorFileNotFoundImpl.fromJson;

  String get path;

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateThumbnailErrorFileNotFoundImplCopyWith<
          _$GenerateThumbnailErrorFileNotFoundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateThumbnailErrorUnsupportedFormatImplCopyWith<$Res> {
  factory _$$GenerateThumbnailErrorUnsupportedFormatImplCopyWith(
          _$GenerateThumbnailErrorUnsupportedFormatImpl value,
          $Res Function(_$GenerateThumbnailErrorUnsupportedFormatImpl) then) =
      __$$GenerateThumbnailErrorUnsupportedFormatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$GenerateThumbnailErrorUnsupportedFormatImplCopyWithImpl<$Res>
    extends _$GenerateThumbnailErrorCopyWithImpl<$Res,
        _$GenerateThumbnailErrorUnsupportedFormatImpl>
    implements _$$GenerateThumbnailErrorUnsupportedFormatImplCopyWith<$Res> {
  __$$GenerateThumbnailErrorUnsupportedFormatImplCopyWithImpl(
      _$GenerateThumbnailErrorUnsupportedFormatImpl _value,
      $Res Function(_$GenerateThumbnailErrorUnsupportedFormatImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$GenerateThumbnailErrorUnsupportedFormatImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateThumbnailErrorUnsupportedFormatImpl
    implements GenerateThumbnailErrorUnsupportedFormat {
  const _$GenerateThumbnailErrorUnsupportedFormatImpl(
      {required this.path, final String? $type})
      : $type = $type ?? 'unsupportedFormat';

  factory _$GenerateThumbnailErrorUnsupportedFormatImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GenerateThumbnailErrorUnsupportedFormatImplFromJson(json);

  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenerateThumbnailError.unsupportedFormat(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateThumbnailErrorUnsupportedFormatImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateThumbnailErrorUnsupportedFormatImplCopyWith<
          _$GenerateThumbnailErrorUnsupportedFormatImpl>
      get copyWith =>
          __$$GenerateThumbnailErrorUnsupportedFormatImplCopyWithImpl<
              _$GenerateThumbnailErrorUnsupportedFormatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsError error) fs,
    required TResult Function(String path) fileNotFound,
    required TResult Function(String path) unsupportedFormat,
  }) {
    return unsupportedFormat(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsError error)? fs,
    TResult? Function(String path)? fileNotFound,
    TResult? Function(String path)? unsupportedFormat,
  }) {
    return unsupportedFormat?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsError error)? fs,
    TResult Function(String path)? fileNotFound,
    TResult Function(String path)? unsupportedFormat,
    required TResult orElse(),
  }) {
    if (unsupportedFormat != null) {
      return unsupportedFormat(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateThumbnailErrorFs value) fs,
    required TResult Function(GenerateThumbnailErrorFileNotFound value)
        fileNotFound,
    required TResult Function(GenerateThumbnailErrorUnsupportedFormat value)
        unsupportedFormat,
  }) {
    return unsupportedFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateThumbnailErrorFs value)? fs,
    TResult? Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult? Function(GenerateThumbnailErrorUnsupportedFormat value)?
        unsupportedFormat,
  }) {
    return unsupportedFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateThumbnailErrorFs value)? fs,
    TResult Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult Function(GenerateThumbnailErrorUnsupportedFormat value)?
        unsupportedFormat,
    required TResult orElse(),
  }) {
    if (unsupportedFormat != null) {
      return unsupportedFormat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateThumbnailErrorUnsupportedFormatImplToJson(
      this,
    );
  }
}

abstract class GenerateThumbnailErrorUnsupportedFormat
    implements GenerateThumbnailError {
  const factory GenerateThumbnailErrorUnsupportedFormat(
          {required final String path}) =
      _$GenerateThumbnailErrorUnsupportedFormatImpl;

  factory GenerateThumbnailErrorUnsupportedFormat.fromJson(
          Map<String, dynamic> json) =
      _$GenerateThumbnailErrorUnsupportedFormatImpl.fromJson;

  String get path;

  /// Create a copy of GenerateThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateThumbnailErrorUnsupportedFormatImplCopyWith<
          _$GenerateThumbnailErrorUnsupportedFormatImpl>
      get copyWith => throw _privateConstructorUsedError;
}
