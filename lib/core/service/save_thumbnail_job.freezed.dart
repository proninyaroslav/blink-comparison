// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_thumbnail_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaveThumbnailResultTearOff {
  const _$SaveThumbnailResultTearOff();

  SaveThumbnailResultSuccess success() {
    return const SaveThumbnailResultSuccess();
  }

  SaveThumbnailResultFail fail(SaveThumbnailError error) {
    return SaveThumbnailResultFail(
      error,
    );
  }
}

/// @nodoc
const $SaveThumbnailResult = _$SaveThumbnailResultTearOff();

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
    TResult Function()? success,
    TResult Function(SaveThumbnailError error)? fail,
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
    TResult Function(SaveThumbnailResultSuccess value)? success,
    TResult Function(SaveThumbnailResultFail value)? fail,
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
      _$SaveThumbnailResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveThumbnailResultCopyWithImpl<$Res>
    implements $SaveThumbnailResultCopyWith<$Res> {
  _$SaveThumbnailResultCopyWithImpl(this._value, this._then);

  final SaveThumbnailResult _value;
  // ignore: unused_field
  final $Res Function(SaveThumbnailResult) _then;
}

/// @nodoc
abstract class $SaveThumbnailResultSuccessCopyWith<$Res> {
  factory $SaveThumbnailResultSuccessCopyWith(SaveThumbnailResultSuccess value,
          $Res Function(SaveThumbnailResultSuccess) then) =
      _$SaveThumbnailResultSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveThumbnailResultSuccessCopyWithImpl<$Res>
    extends _$SaveThumbnailResultCopyWithImpl<$Res>
    implements $SaveThumbnailResultSuccessCopyWith<$Res> {
  _$SaveThumbnailResultSuccessCopyWithImpl(SaveThumbnailResultSuccess _value,
      $Res Function(SaveThumbnailResultSuccess) _then)
      : super(_value, (v) => _then(v as SaveThumbnailResultSuccess));

  @override
  SaveThumbnailResultSuccess get _value =>
      super._value as SaveThumbnailResultSuccess;
}

/// @nodoc

class _$SaveThumbnailResultSuccess implements SaveThumbnailResultSuccess {
  const _$SaveThumbnailResultSuccess();

  @override
  String toString() {
    return 'SaveThumbnailResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveThumbnailResultSuccess);
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
    TResult Function()? success,
    TResult Function(SaveThumbnailError error)? fail,
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
    TResult Function(SaveThumbnailResultSuccess value)? success,
    TResult Function(SaveThumbnailResultFail value)? fail,
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
  const factory SaveThumbnailResultSuccess() = _$SaveThumbnailResultSuccess;
}

/// @nodoc
abstract class $SaveThumbnailResultFailCopyWith<$Res> {
  factory $SaveThumbnailResultFailCopyWith(SaveThumbnailResultFail value,
          $Res Function(SaveThumbnailResultFail) then) =
      _$SaveThumbnailResultFailCopyWithImpl<$Res>;
  $Res call({SaveThumbnailError error});

  $SaveThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveThumbnailResultFailCopyWithImpl<$Res>
    extends _$SaveThumbnailResultCopyWithImpl<$Res>
    implements $SaveThumbnailResultFailCopyWith<$Res> {
  _$SaveThumbnailResultFailCopyWithImpl(SaveThumbnailResultFail _value,
      $Res Function(SaveThumbnailResultFail) _then)
      : super(_value, (v) => _then(v as SaveThumbnailResultFail));

  @override
  SaveThumbnailResultFail get _value => super._value as SaveThumbnailResultFail;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SaveThumbnailResultFail(
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

class _$SaveThumbnailResultFail implements SaveThumbnailResultFail {
  const _$SaveThumbnailResultFail(this.error);

  @override
  final SaveThumbnailError error;

  @override
  String toString() {
    return 'SaveThumbnailResult.fail(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveThumbnailResultFail &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveThumbnailResultFailCopyWith<SaveThumbnailResultFail> get copyWith =>
      _$SaveThumbnailResultFailCopyWithImpl<SaveThumbnailResultFail>(
          this, _$identity);

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
    TResult Function()? success,
    TResult Function(SaveThumbnailError error)? fail,
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
    TResult Function(SaveThumbnailResultSuccess value)? success,
    TResult Function(SaveThumbnailResultFail value)? fail,
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
  const factory SaveThumbnailResultFail(SaveThumbnailError error) =
      _$SaveThumbnailResultFail;

  SaveThumbnailError get error;
  @JsonKey(ignore: true)
  $SaveThumbnailResultFailCopyWith<SaveThumbnailResultFail> get copyWith =>
      throw _privateConstructorUsedError;
}

SaveThumbnailError _$SaveThumbnailErrorFromJson(Map<String, dynamic> json) {
  return SaveThumbnailErrorFs.fromJson(json);
}

/// @nodoc
class _$SaveThumbnailErrorTearOff {
  const _$SaveThumbnailErrorTearOff();

  SaveThumbnailErrorFs fs(FsError error) {
    return SaveThumbnailErrorFs(
      error,
    );
  }

  SaveThumbnailError fromJson(Map<String, Object?> json) {
    return SaveThumbnailError.fromJson(json);
  }
}

/// @nodoc
const $SaveThumbnailError = _$SaveThumbnailErrorTearOff();

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
    TResult Function(FsError error)? fs,
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
    TResult Function(SaveThumbnailErrorFs value)? fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveThumbnailErrorFs value)? fs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveThumbnailErrorCopyWith<SaveThumbnailError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveThumbnailErrorCopyWith<$Res> {
  factory $SaveThumbnailErrorCopyWith(
          SaveThumbnailError value, $Res Function(SaveThumbnailError) then) =
      _$SaveThumbnailErrorCopyWithImpl<$Res>;
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveThumbnailErrorCopyWithImpl<$Res>
    implements $SaveThumbnailErrorCopyWith<$Res> {
  _$SaveThumbnailErrorCopyWithImpl(this._value, this._then);

  final SaveThumbnailError _value;
  // ignore: unused_field
  final $Res Function(SaveThumbnailError) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  @override
  $FsErrorCopyWith<$Res> get error {
    return $FsErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class $SaveThumbnailErrorFsCopyWith<$Res>
    implements $SaveThumbnailErrorCopyWith<$Res> {
  factory $SaveThumbnailErrorFsCopyWith(SaveThumbnailErrorFs value,
          $Res Function(SaveThumbnailErrorFs) then) =
      _$SaveThumbnailErrorFsCopyWithImpl<$Res>;
  @override
  $Res call({FsError error});

  @override
  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveThumbnailErrorFsCopyWithImpl<$Res>
    extends _$SaveThumbnailErrorCopyWithImpl<$Res>
    implements $SaveThumbnailErrorFsCopyWith<$Res> {
  _$SaveThumbnailErrorFsCopyWithImpl(
      SaveThumbnailErrorFs _value, $Res Function(SaveThumbnailErrorFs) _then)
      : super(_value, (v) => _then(v as SaveThumbnailErrorFs));

  @override
  SaveThumbnailErrorFs get _value => super._value as SaveThumbnailErrorFs;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SaveThumbnailErrorFs(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveThumbnailErrorFs implements SaveThumbnailErrorFs {
  const _$SaveThumbnailErrorFs(this.error);

  factory _$SaveThumbnailErrorFs.fromJson(Map<String, dynamic> json) =>
      _$$SaveThumbnailErrorFsFromJson(json);

  @override
  final FsError error;

  @override
  String toString() {
    return 'SaveThumbnailError.fs(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveThumbnailErrorFs &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveThumbnailErrorFsCopyWith<SaveThumbnailErrorFs> get copyWith =>
      _$SaveThumbnailErrorFsCopyWithImpl<SaveThumbnailErrorFs>(
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
    TResult Function(FsError error)? fs,
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
    TResult Function(SaveThumbnailErrorFs value)? fs,
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
    return _$$SaveThumbnailErrorFsToJson(this);
  }
}

abstract class SaveThumbnailErrorFs implements SaveThumbnailError {
  const factory SaveThumbnailErrorFs(FsError error) = _$SaveThumbnailErrorFs;

  factory SaveThumbnailErrorFs.fromJson(Map<String, dynamic> json) =
      _$SaveThumbnailErrorFs.fromJson;

  @override
  FsError get error;
  @override
  @JsonKey(ignore: true)
  $SaveThumbnailErrorFsCopyWith<SaveThumbnailErrorFs> get copyWith =>
      throw _privateConstructorUsedError;
}
