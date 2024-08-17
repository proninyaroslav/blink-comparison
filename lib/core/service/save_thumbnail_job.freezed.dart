// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_thumbnail_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveThumbnailResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SaveThumbnailError error) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SaveThumbnailError error)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveThumbnailError error)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveThumbnailResultSuccess value) success,
    required TResult Function(SaveThumbnailResultFail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveThumbnailResultSuccess value)? success,
    TResult? Function(SaveThumbnailResultFail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveThumbnailResultSuccess value)? success,
    TResult Function(SaveThumbnailResultFail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveThumbnailResultCopyWith<$Res> {
  factory $SaveThumbnailResultCopyWith(
          SaveThumbnailResult value, $Res Function(SaveThumbnailResult) then) =
      _$SaveThumbnailResultCopyWithImpl<$Res, SaveThumbnailResult>;
}

/// @nodoc
class _$SaveThumbnailResultCopyWithImpl<$Res, $Val extends SaveThumbnailResult>
    implements $SaveThumbnailResultCopyWith<$Res> {
  _$SaveThumbnailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveThumbnailResultSuccessImplCopyWith<$Res> {
  factory _$$SaveThumbnailResultSuccessImplCopyWith(
          _$SaveThumbnailResultSuccessImpl value,
          $Res Function(_$SaveThumbnailResultSuccessImpl) then) =
      __$$SaveThumbnailResultSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveThumbnailResultSuccessImplCopyWithImpl<$Res>
    extends _$SaveThumbnailResultCopyWithImpl<$Res,
        _$SaveThumbnailResultSuccessImpl>
    implements _$$SaveThumbnailResultSuccessImplCopyWith<$Res> {
  __$$SaveThumbnailResultSuccessImplCopyWithImpl(
      _$SaveThumbnailResultSuccessImpl _value,
      $Res Function(_$SaveThumbnailResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveThumbnailResultSuccessImpl implements SaveThumbnailResultSuccess {
  const _$SaveThumbnailResultSuccessImpl();

  @override
  String toString() {
    return 'SaveThumbnailResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveThumbnailResultSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SaveThumbnailError error) fail,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SaveThumbnailError error)? fail,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveThumbnailError error)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveThumbnailResultSuccess value) success,
    required TResult Function(SaveThumbnailResultFail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveThumbnailResultSuccess value)? success,
    TResult? Function(SaveThumbnailResultFail value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveThumbnailResultSuccess value)? success,
    TResult Function(SaveThumbnailResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SaveThumbnailResultSuccess implements SaveThumbnailResult {
  const factory SaveThumbnailResultSuccess() = _$SaveThumbnailResultSuccessImpl;
}

/// @nodoc
abstract class _$$SaveThumbnailResultFailImplCopyWith<$Res> {
  factory _$$SaveThumbnailResultFailImplCopyWith(
          _$SaveThumbnailResultFailImpl value,
          $Res Function(_$SaveThumbnailResultFailImpl) then) =
      __$$SaveThumbnailResultFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SaveThumbnailError error});

  $SaveThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SaveThumbnailResultFailImplCopyWithImpl<$Res>
    extends _$SaveThumbnailResultCopyWithImpl<$Res,
        _$SaveThumbnailResultFailImpl>
    implements _$$SaveThumbnailResultFailImplCopyWith<$Res> {
  __$$SaveThumbnailResultFailImplCopyWithImpl(
      _$SaveThumbnailResultFailImpl _value,
      $Res Function(_$SaveThumbnailResultFailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SaveThumbnailResultFailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveThumbnailError,
    ));
  }

  /// Create a copy of SaveThumbnailResult
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

class _$SaveThumbnailResultFailImpl implements SaveThumbnailResultFail {
  const _$SaveThumbnailResultFailImpl(this.error);

  @override
  final SaveThumbnailError error;

  @override
  String toString() {
    return 'SaveThumbnailResult.fail(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveThumbnailResultFailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SaveThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveThumbnailResultFailImplCopyWith<_$SaveThumbnailResultFailImpl>
      get copyWith => __$$SaveThumbnailResultFailImplCopyWithImpl<
          _$SaveThumbnailResultFailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SaveThumbnailError error) fail,
  }) {
    return fail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(SaveThumbnailError error)? fail,
  }) {
    return fail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveThumbnailError error)? fail,
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
    required TResult Function(SaveThumbnailResultSuccess value) success,
    required TResult Function(SaveThumbnailResultFail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveThumbnailResultSuccess value)? success,
    TResult? Function(SaveThumbnailResultFail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveThumbnailResultSuccess value)? success,
    TResult Function(SaveThumbnailResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class SaveThumbnailResultFail implements SaveThumbnailResult {
  const factory SaveThumbnailResultFail(final SaveThumbnailError error) =
      _$SaveThumbnailResultFailImpl;

  SaveThumbnailError get error;

  /// Create a copy of SaveThumbnailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveThumbnailResultFailImplCopyWith<_$SaveThumbnailResultFailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SaveThumbnailError _$SaveThumbnailErrorFromJson(Map<String, dynamic> json) {
  return SaveThumbnailErrorFs.fromJson(json);
}

/// @nodoc
mixin _$SaveThumbnailError {
  FsError get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsError error) fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsError error)? fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsError error)? fs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveThumbnailErrorFs value) fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveThumbnailErrorFs value)? fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveThumbnailErrorFs value)? fs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SaveThumbnailError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaveThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveThumbnailErrorCopyWith<SaveThumbnailError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveThumbnailErrorCopyWith<$Res> {
  factory $SaveThumbnailErrorCopyWith(
          SaveThumbnailError value, $Res Function(SaveThumbnailError) then) =
      _$SaveThumbnailErrorCopyWithImpl<$Res, SaveThumbnailError>;
  @useResult
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveThumbnailErrorCopyWithImpl<$Res, $Val extends SaveThumbnailError>
    implements $SaveThumbnailErrorCopyWith<$Res> {
  _$SaveThumbnailErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ) as $Val);
  }

  /// Create a copy of SaveThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsErrorCopyWith<$Res> get error {
    return $FsErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveThumbnailErrorFsImplCopyWith<$Res>
    implements $SaveThumbnailErrorCopyWith<$Res> {
  factory _$$SaveThumbnailErrorFsImplCopyWith(_$SaveThumbnailErrorFsImpl value,
          $Res Function(_$SaveThumbnailErrorFsImpl) then) =
      __$$SaveThumbnailErrorFsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FsError error});

  @override
  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SaveThumbnailErrorFsImplCopyWithImpl<$Res>
    extends _$SaveThumbnailErrorCopyWithImpl<$Res, _$SaveThumbnailErrorFsImpl>
    implements _$$SaveThumbnailErrorFsImplCopyWith<$Res> {
  __$$SaveThumbnailErrorFsImplCopyWithImpl(_$SaveThumbnailErrorFsImpl _value,
      $Res Function(_$SaveThumbnailErrorFsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SaveThumbnailErrorFsImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveThumbnailErrorFsImpl implements SaveThumbnailErrorFs {
  const _$SaveThumbnailErrorFsImpl(this.error);

  factory _$SaveThumbnailErrorFsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveThumbnailErrorFsImplFromJson(json);

  @override
  final FsError error;

  @override
  String toString() {
    return 'SaveThumbnailError.fs(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveThumbnailErrorFsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SaveThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveThumbnailErrorFsImplCopyWith<_$SaveThumbnailErrorFsImpl>
      get copyWith =>
          __$$SaveThumbnailErrorFsImplCopyWithImpl<_$SaveThumbnailErrorFsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FsError error) fs,
  }) {
    return fs(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FsError error)? fs,
  }) {
    return fs?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FsError error)? fs,
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
    required TResult Function(SaveThumbnailErrorFs value) fs,
  }) {
    return fs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveThumbnailErrorFs value)? fs,
  }) {
    return fs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveThumbnailErrorFs value)? fs,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveThumbnailErrorFsImplToJson(
      this,
    );
  }
}

abstract class SaveThumbnailErrorFs implements SaveThumbnailError {
  const factory SaveThumbnailErrorFs(final FsError error) =
      _$SaveThumbnailErrorFsImpl;

  factory SaveThumbnailErrorFs.fromJson(Map<String, dynamic> json) =
      _$SaveThumbnailErrorFsImpl.fromJson;

  @override
  FsError get error;

  /// Create a copy of SaveThumbnailError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveThumbnailErrorFsImplCopyWith<_$SaveThumbnailErrorFsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
