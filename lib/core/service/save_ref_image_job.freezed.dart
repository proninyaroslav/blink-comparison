// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_ref_image_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaveRefImageResultTearOff {
  const _$SaveRefImageResultTearOff();

  SaveRefImageResultSuccess success() {
    return const SaveRefImageResultSuccess();
  }

  SaveRefImageResultError error(SaveRefImageError error) {
    return SaveRefImageResultError(
      error,
    );
  }
}

/// @nodoc
const $SaveRefImageResult = _$SaveRefImageResultTearOff();

/// @nodoc
mixin _$SaveRefImageResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SaveRefImageError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveRefImageError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveRefImageError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageResultSuccess value) success,
    required TResult Function(SaveRefImageResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageResultSuccess value)? success,
    TResult Function(SaveRefImageResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageResultSuccess value)? success,
    TResult Function(SaveRefImageResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageResultCopyWith<$Res> {
  factory $SaveRefImageResultCopyWith(
          SaveRefImageResult value, $Res Function(SaveRefImageResult) then) =
      _$SaveRefImageResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveRefImageResultCopyWithImpl<$Res>
    implements $SaveRefImageResultCopyWith<$Res> {
  _$SaveRefImageResultCopyWithImpl(this._value, this._then);

  final SaveRefImageResult _value;
  // ignore: unused_field
  final $Res Function(SaveRefImageResult) _then;
}

/// @nodoc
abstract class $SaveRefImageResultSuccessCopyWith<$Res> {
  factory $SaveRefImageResultSuccessCopyWith(SaveRefImageResultSuccess value,
          $Res Function(SaveRefImageResultSuccess) then) =
      _$SaveRefImageResultSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveRefImageResultSuccessCopyWithImpl<$Res>
    extends _$SaveRefImageResultCopyWithImpl<$Res>
    implements $SaveRefImageResultSuccessCopyWith<$Res> {
  _$SaveRefImageResultSuccessCopyWithImpl(SaveRefImageResultSuccess _value,
      $Res Function(SaveRefImageResultSuccess) _then)
      : super(_value, (v) => _then(v as SaveRefImageResultSuccess));

  @override
  SaveRefImageResultSuccess get _value =>
      super._value as SaveRefImageResultSuccess;
}

/// @nodoc

class _$SaveRefImageResultSuccess implements SaveRefImageResultSuccess {
  const _$SaveRefImageResultSuccess();

  @override
  String toString() {
    return 'SaveRefImageResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageResultSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SaveRefImageError error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveRefImageError error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveRefImageError error)? error,
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
    required TResult Function(SaveRefImageResultSuccess value) success,
    required TResult Function(SaveRefImageResultError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageResultSuccess value)? success,
    TResult Function(SaveRefImageResultError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageResultSuccess value)? success,
    TResult Function(SaveRefImageResultError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SaveRefImageResultSuccess implements SaveRefImageResult {
  const factory SaveRefImageResultSuccess() = _$SaveRefImageResultSuccess;
}

/// @nodoc
abstract class $SaveRefImageResultErrorCopyWith<$Res> {
  factory $SaveRefImageResultErrorCopyWith(SaveRefImageResultError value,
          $Res Function(SaveRefImageResultError) then) =
      _$SaveRefImageResultErrorCopyWithImpl<$Res>;
  $Res call({SaveRefImageError error});

  $SaveRefImageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveRefImageResultErrorCopyWithImpl<$Res>
    extends _$SaveRefImageResultCopyWithImpl<$Res>
    implements $SaveRefImageResultErrorCopyWith<$Res> {
  _$SaveRefImageResultErrorCopyWithImpl(SaveRefImageResultError _value,
      $Res Function(SaveRefImageResultError) _then)
      : super(_value, (v) => _then(v as SaveRefImageResultError));

  @override
  SaveRefImageResultError get _value => super._value as SaveRefImageResultError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SaveRefImageResultError(
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

class _$SaveRefImageResultError implements SaveRefImageResultError {
  const _$SaveRefImageResultError(this.error);

  @override
  final SaveRefImageError error;

  @override
  String toString() {
    return 'SaveRefImageResult.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageResultError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveRefImageResultErrorCopyWith<SaveRefImageResultError> get copyWith =>
      _$SaveRefImageResultErrorCopyWithImpl<SaveRefImageResultError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(SaveRefImageError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveRefImageError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(SaveRefImageError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageResultSuccess value) success,
    required TResult Function(SaveRefImageResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageResultSuccess value)? success,
    TResult Function(SaveRefImageResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageResultSuccess value)? success,
    TResult Function(SaveRefImageResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SaveRefImageResultError implements SaveRefImageResult {
  const factory SaveRefImageResultError(SaveRefImageError error) =
      _$SaveRefImageResultError;

  SaveRefImageError get error;
  @JsonKey(ignore: true)
  $SaveRefImageResultErrorCopyWith<SaveRefImageResultError> get copyWith =>
      throw _privateConstructorUsedError;
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
class _$SaveRefImageErrorTearOff {
  const _$SaveRefImageErrorTearOff();

  SaveRefImageErrorFs fs({required String path, required FsError error}) {
    return SaveRefImageErrorFs(
      path: path,
      error: error,
    );
  }

  SaveRefImageErrorEncrypt encrypt({required EncryptError error}) {
    return SaveRefImageErrorEncrypt(
      error: error,
    );
  }

  SaveRefImageError fromJson(Map<String, Object?> json) {
    return SaveRefImageError.fromJson(json);
  }
}

/// @nodoc
const $SaveRefImageError = _$SaveRefImageErrorTearOff();

/// @nodoc
mixin _$SaveRefImageError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path, FsError error) fs,
    required TResult Function(EncryptError error) encrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path, FsError error)? fs,
    TResult Function(EncryptError error)? encrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, FsError error)? fs,
    TResult Function(EncryptError error)? encrypt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageErrorFs value) fs,
    required TResult Function(SaveRefImageErrorEncrypt value) encrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageErrorFs value)? fs,
    TResult Function(SaveRefImageErrorEncrypt value)? encrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageErrorFs value)? fs,
    TResult Function(SaveRefImageErrorEncrypt value)? encrypt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageErrorCopyWith<$Res> {
  factory $SaveRefImageErrorCopyWith(
          SaveRefImageError value, $Res Function(SaveRefImageError) then) =
      _$SaveRefImageErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveRefImageErrorCopyWithImpl<$Res>
    implements $SaveRefImageErrorCopyWith<$Res> {
  _$SaveRefImageErrorCopyWithImpl(this._value, this._then);

  final SaveRefImageError _value;
  // ignore: unused_field
  final $Res Function(SaveRefImageError) _then;
}

/// @nodoc
abstract class $SaveRefImageErrorFsCopyWith<$Res> {
  factory $SaveRefImageErrorFsCopyWith(
          SaveRefImageErrorFs value, $Res Function(SaveRefImageErrorFs) then) =
      _$SaveRefImageErrorFsCopyWithImpl<$Res>;
  $Res call({String path, FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveRefImageErrorFsCopyWithImpl<$Res>
    extends _$SaveRefImageErrorCopyWithImpl<$Res>
    implements $SaveRefImageErrorFsCopyWith<$Res> {
  _$SaveRefImageErrorFsCopyWithImpl(
      SaveRefImageErrorFs _value, $Res Function(SaveRefImageErrorFs) _then)
      : super(_value, (v) => _then(v as SaveRefImageErrorFs));

  @override
  SaveRefImageErrorFs get _value => super._value as SaveRefImageErrorFs;

  @override
  $Res call({
    Object? path = freezed,
    Object? error = freezed,
  }) {
    return _then(SaveRefImageErrorFs(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$SaveRefImageErrorFs implements SaveRefImageErrorFs {
  const _$SaveRefImageErrorFs(
      {required this.path, required this.error, String? $type})
      : $type = $type ?? 'fs';

  factory _$SaveRefImageErrorFs.fromJson(Map<String, dynamic> json) =>
      _$$SaveRefImageErrorFsFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageErrorFs &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveRefImageErrorFsCopyWith<SaveRefImageErrorFs> get copyWith =>
      _$SaveRefImageErrorFsCopyWithImpl<SaveRefImageErrorFs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path, FsError error) fs,
    required TResult Function(EncryptError error) encrypt,
  }) {
    return fs(path, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path, FsError error)? fs,
    TResult Function(EncryptError error)? encrypt,
  }) {
    return fs?.call(path, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, FsError error)? fs,
    TResult Function(EncryptError error)? encrypt,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(path, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageErrorFs value) fs,
    required TResult Function(SaveRefImageErrorEncrypt value) encrypt,
  }) {
    return fs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageErrorFs value)? fs,
    TResult Function(SaveRefImageErrorEncrypt value)? encrypt,
  }) {
    return fs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageErrorFs value)? fs,
    TResult Function(SaveRefImageErrorEncrypt value)? encrypt,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageErrorFsToJson(this);
  }
}

abstract class SaveRefImageErrorFs implements SaveRefImageError {
  const factory SaveRefImageErrorFs(
      {required String path, required FsError error}) = _$SaveRefImageErrorFs;

  factory SaveRefImageErrorFs.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageErrorFs.fromJson;

  String get path;
  FsError get error;
  @JsonKey(ignore: true)
  $SaveRefImageErrorFsCopyWith<SaveRefImageErrorFs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageErrorEncryptCopyWith<$Res> {
  factory $SaveRefImageErrorEncryptCopyWith(SaveRefImageErrorEncrypt value,
          $Res Function(SaveRefImageErrorEncrypt) then) =
      _$SaveRefImageErrorEncryptCopyWithImpl<$Res>;
  $Res call({EncryptError error});

  $EncryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveRefImageErrorEncryptCopyWithImpl<$Res>
    extends _$SaveRefImageErrorCopyWithImpl<$Res>
    implements $SaveRefImageErrorEncryptCopyWith<$Res> {
  _$SaveRefImageErrorEncryptCopyWithImpl(SaveRefImageErrorEncrypt _value,
      $Res Function(SaveRefImageErrorEncrypt) _then)
      : super(_value, (v) => _then(v as SaveRefImageErrorEncrypt));

  @override
  SaveRefImageErrorEncrypt get _value =>
      super._value as SaveRefImageErrorEncrypt;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SaveRefImageErrorEncrypt(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as EncryptError,
    ));
  }

  @override
  $EncryptErrorCopyWith<$Res> get error {
    return $EncryptErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageErrorEncrypt implements SaveRefImageErrorEncrypt {
  const _$SaveRefImageErrorEncrypt({required this.error, String? $type})
      : $type = $type ?? 'encrypt';

  factory _$SaveRefImageErrorEncrypt.fromJson(Map<String, dynamic> json) =>
      _$$SaveRefImageErrorEncryptFromJson(json);

  @override
  final EncryptError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SaveRefImageError.encrypt(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageErrorEncrypt &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveRefImageErrorEncryptCopyWith<SaveRefImageErrorEncrypt> get copyWith =>
      _$SaveRefImageErrorEncryptCopyWithImpl<SaveRefImageErrorEncrypt>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path, FsError error) fs,
    required TResult Function(EncryptError error) encrypt,
  }) {
    return encrypt(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path, FsError error)? fs,
    TResult Function(EncryptError error)? encrypt,
  }) {
    return encrypt?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path, FsError error)? fs,
    TResult Function(EncryptError error)? encrypt,
    required TResult orElse(),
  }) {
    if (encrypt != null) {
      return encrypt(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageErrorFs value) fs,
    required TResult Function(SaveRefImageErrorEncrypt value) encrypt,
  }) {
    return encrypt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageErrorFs value)? fs,
    TResult Function(SaveRefImageErrorEncrypt value)? encrypt,
  }) {
    return encrypt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageErrorFs value)? fs,
    TResult Function(SaveRefImageErrorEncrypt value)? encrypt,
    required TResult orElse(),
  }) {
    if (encrypt != null) {
      return encrypt(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageErrorEncryptToJson(this);
  }
}

abstract class SaveRefImageErrorEncrypt implements SaveRefImageError {
  const factory SaveRefImageErrorEncrypt({required EncryptError error}) =
      _$SaveRefImageErrorEncrypt;

  factory SaveRefImageErrorEncrypt.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageErrorEncrypt.fromJson;

  EncryptError get error;
  @JsonKey(ignore: true)
  $SaveRefImageErrorEncryptCopyWith<SaveRefImageErrorEncrypt> get copyWith =>
      throw _privateConstructorUsedError;
}
