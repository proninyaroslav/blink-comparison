// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_ref_image_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveRefImageResult {}

/// @nodoc
abstract class $SaveRefImageResultCopyWith<$Res> {
  factory $SaveRefImageResultCopyWith(
          SaveRefImageResult value, $Res Function(SaveRefImageResult) then) =
      _$SaveRefImageResultCopyWithImpl<$Res, SaveRefImageResult>;
}

/// @nodoc
class _$SaveRefImageResultCopyWithImpl<$Res, $Val extends SaveRefImageResult>
    implements $SaveRefImageResultCopyWith<$Res> {
  _$SaveRefImageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveRefImageResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveRefImageResultSuccessImplCopyWith<$Res> {
  factory _$$SaveRefImageResultSuccessImplCopyWith(
          _$SaveRefImageResultSuccessImpl value,
          $Res Function(_$SaveRefImageResultSuccessImpl) then) =
      __$$SaveRefImageResultSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveRefImageResultSuccessImplCopyWithImpl<$Res>
    extends _$SaveRefImageResultCopyWithImpl<$Res,
        _$SaveRefImageResultSuccessImpl>
    implements _$$SaveRefImageResultSuccessImplCopyWith<$Res> {
  __$$SaveRefImageResultSuccessImplCopyWithImpl(
      _$SaveRefImageResultSuccessImpl _value,
      $Res Function(_$SaveRefImageResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveRefImageResultSuccessImpl implements SaveRefImageResultSuccess {
  const _$SaveRefImageResultSuccessImpl();

  @override
  String toString() {
    return 'SaveRefImageResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageResultSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SaveRefImageResultSuccess implements SaveRefImageResult {
  const factory SaveRefImageResultSuccess() = _$SaveRefImageResultSuccessImpl;
}

/// @nodoc
abstract class _$$SaveRefImageResultErrorImplCopyWith<$Res> {
  factory _$$SaveRefImageResultErrorImplCopyWith(
          _$SaveRefImageResultErrorImpl value,
          $Res Function(_$SaveRefImageResultErrorImpl) then) =
      __$$SaveRefImageResultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SaveRefImageError error});

  $SaveRefImageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SaveRefImageResultErrorImplCopyWithImpl<$Res>
    extends _$SaveRefImageResultCopyWithImpl<$Res,
        _$SaveRefImageResultErrorImpl>
    implements _$$SaveRefImageResultErrorImplCopyWith<$Res> {
  __$$SaveRefImageResultErrorImplCopyWithImpl(
      _$SaveRefImageResultErrorImpl _value,
      $Res Function(_$SaveRefImageResultErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SaveRefImageResultErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveRefImageError,
    ));
  }

  /// Create a copy of SaveRefImageResult
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

class _$SaveRefImageResultErrorImpl implements SaveRefImageResultError {
  const _$SaveRefImageResultErrorImpl(this.error);

  @override
  final SaveRefImageError error;

  @override
  String toString() {
    return 'SaveRefImageResult.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageResultErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SaveRefImageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRefImageResultErrorImplCopyWith<_$SaveRefImageResultErrorImpl>
      get copyWith => __$$SaveRefImageResultErrorImplCopyWithImpl<
          _$SaveRefImageResultErrorImpl>(this, _$identity);
}

abstract class SaveRefImageResultError implements SaveRefImageResult {
  const factory SaveRefImageResultError(final SaveRefImageError error) =
      _$SaveRefImageResultErrorImpl;

  SaveRefImageError get error;

  /// Create a copy of SaveRefImageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRefImageResultErrorImplCopyWith<_$SaveRefImageResultErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SaveRefImageError _$SaveRefImageErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fs':
      return SaveRefImageErrorFs.fromJson(json);
    case 'encrypt':
      return SaveRefImageErrorEncrypt.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SaveRefImageError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SaveRefImageError {
  Object get error => throw _privateConstructorUsedError;

  /// Serializes this SaveRefImageError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageErrorCopyWith<$Res> {
  factory $SaveRefImageErrorCopyWith(
          SaveRefImageError value, $Res Function(SaveRefImageError) then) =
      _$SaveRefImageErrorCopyWithImpl<$Res, SaveRefImageError>;
}

/// @nodoc
class _$SaveRefImageErrorCopyWithImpl<$Res, $Val extends SaveRefImageError>
    implements $SaveRefImageErrorCopyWith<$Res> {
  _$SaveRefImageErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveRefImageError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveRefImageErrorFsImplCopyWith<$Res> {
  factory _$$SaveRefImageErrorFsImplCopyWith(_$SaveRefImageErrorFsImpl value,
          $Res Function(_$SaveRefImageErrorFsImpl) then) =
      __$$SaveRefImageErrorFsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path, FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SaveRefImageErrorFsImplCopyWithImpl<$Res>
    extends _$SaveRefImageErrorCopyWithImpl<$Res, _$SaveRefImageErrorFsImpl>
    implements _$$SaveRefImageErrorFsImplCopyWith<$Res> {
  __$$SaveRefImageErrorFsImplCopyWithImpl(_$SaveRefImageErrorFsImpl _value,
      $Res Function(_$SaveRefImageErrorFsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? error = null,
  }) {
    return _then(_$SaveRefImageErrorFsImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  /// Create a copy of SaveRefImageError
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
class _$SaveRefImageErrorFsImpl implements SaveRefImageErrorFs {
  const _$SaveRefImageErrorFsImpl(
      {required this.path, required this.error, final String? $type})
      : $type = $type ?? 'fs';

  factory _$SaveRefImageErrorFsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveRefImageErrorFsImplFromJson(json);

  @override
  final String path;
  @override
  final FsError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SaveRefImageError.fs(path: $path, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageErrorFsImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path, error);

  /// Create a copy of SaveRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRefImageErrorFsImplCopyWith<_$SaveRefImageErrorFsImpl> get copyWith =>
      __$$SaveRefImageErrorFsImplCopyWithImpl<_$SaveRefImageErrorFsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageErrorFsImplToJson(
      this,
    );
  }
}

abstract class SaveRefImageErrorFs implements SaveRefImageError {
  const factory SaveRefImageErrorFs(
      {required final String path,
      required final FsError error}) = _$SaveRefImageErrorFsImpl;

  factory SaveRefImageErrorFs.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageErrorFsImpl.fromJson;

  String get path;
  @override
  FsError get error;

  /// Create a copy of SaveRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRefImageErrorFsImplCopyWith<_$SaveRefImageErrorFsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveRefImageErrorEncryptImplCopyWith<$Res> {
  factory _$$SaveRefImageErrorEncryptImplCopyWith(
          _$SaveRefImageErrorEncryptImpl value,
          $Res Function(_$SaveRefImageErrorEncryptImpl) then) =
      __$$SaveRefImageErrorEncryptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EncryptError error});

  $EncryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SaveRefImageErrorEncryptImplCopyWithImpl<$Res>
    extends _$SaveRefImageErrorCopyWithImpl<$Res,
        _$SaveRefImageErrorEncryptImpl>
    implements _$$SaveRefImageErrorEncryptImplCopyWith<$Res> {
  __$$SaveRefImageErrorEncryptImplCopyWithImpl(
      _$SaveRefImageErrorEncryptImpl _value,
      $Res Function(_$SaveRefImageErrorEncryptImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SaveRefImageErrorEncryptImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as EncryptError,
    ));
  }

  /// Create a copy of SaveRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EncryptErrorCopyWith<$Res> get error {
    return $EncryptErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageErrorEncryptImpl implements SaveRefImageErrorEncrypt {
  const _$SaveRefImageErrorEncryptImpl(
      {required this.error, final String? $type})
      : $type = $type ?? 'encrypt';

  factory _$SaveRefImageErrorEncryptImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveRefImageErrorEncryptImplFromJson(json);

  @override
  final EncryptError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SaveRefImageError.encrypt(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageErrorEncryptImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SaveRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRefImageErrorEncryptImplCopyWith<_$SaveRefImageErrorEncryptImpl>
      get copyWith => __$$SaveRefImageErrorEncryptImplCopyWithImpl<
          _$SaveRefImageErrorEncryptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageErrorEncryptImplToJson(
      this,
    );
  }
}

abstract class SaveRefImageErrorEncrypt implements SaveRefImageError {
  const factory SaveRefImageErrorEncrypt({required final EncryptError error}) =
      _$SaveRefImageErrorEncryptImpl;

  factory SaveRefImageErrorEncrypt.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageErrorEncryptImpl.fromJson;

  @override
  EncryptError get error;

  /// Create a copy of SaveRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRefImageErrorEncryptImplCopyWith<_$SaveRefImageErrorEncryptImpl>
      get copyWith => throw _privateConstructorUsedError;
}
