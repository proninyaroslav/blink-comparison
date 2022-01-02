// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generate_thumbnail_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenerateThumbnailResultTearOff {
  const _$GenerateThumbnailResultTearOff();

  GenerateThumbnailResultSuccess success({required Uint8List thumbnail}) {
    return GenerateThumbnailResultSuccess(
      thumbnail: thumbnail,
    );
  }

  GenerateThumbnailResultFail fail(GenerateThumbnailError error) {
    return GenerateThumbnailResultFail(
      error,
    );
  }
}

/// @nodoc
const $GenerateThumbnailResult = _$GenerateThumbnailResultTearOff();

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
    TResult Function(Uint8List thumbnail)? success,
    TResult Function(GenerateThumbnailError error)? fail,
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
    TResult Function(GenerateThumbnailResultSuccess value)? success,
    TResult Function(GenerateThumbnailResultFail value)? fail,
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
      _$GenerateThumbnailResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenerateThumbnailResultCopyWithImpl<$Res>
    implements $GenerateThumbnailResultCopyWith<$Res> {
  _$GenerateThumbnailResultCopyWithImpl(this._value, this._then);

  final GenerateThumbnailResult _value;
  // ignore: unused_field
  final $Res Function(GenerateThumbnailResult) _then;
}

/// @nodoc
abstract class $GenerateThumbnailResultSuccessCopyWith<$Res> {
  factory $GenerateThumbnailResultSuccessCopyWith(
          GenerateThumbnailResultSuccess value,
          $Res Function(GenerateThumbnailResultSuccess) then) =
      _$GenerateThumbnailResultSuccessCopyWithImpl<$Res>;
  $Res call({Uint8List thumbnail});
}

/// @nodoc
class _$GenerateThumbnailResultSuccessCopyWithImpl<$Res>
    extends _$GenerateThumbnailResultCopyWithImpl<$Res>
    implements $GenerateThumbnailResultSuccessCopyWith<$Res> {
  _$GenerateThumbnailResultSuccessCopyWithImpl(
      GenerateThumbnailResultSuccess _value,
      $Res Function(GenerateThumbnailResultSuccess) _then)
      : super(_value, (v) => _then(v as GenerateThumbnailResultSuccess));

  @override
  GenerateThumbnailResultSuccess get _value =>
      super._value as GenerateThumbnailResultSuccess;

  @override
  $Res call({
    Object? thumbnail = freezed,
  }) {
    return _then(GenerateThumbnailResultSuccess(
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$GenerateThumbnailResultSuccess
    implements GenerateThumbnailResultSuccess {
  const _$GenerateThumbnailResultSuccess({required this.thumbnail});

  @override
  final Uint8List thumbnail;

  @override
  String toString() {
    return 'GenerateThumbnailResult.success(thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateThumbnailResultSuccess &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  $GenerateThumbnailResultSuccessCopyWith<GenerateThumbnailResultSuccess>
      get copyWith => _$GenerateThumbnailResultSuccessCopyWithImpl<
          GenerateThumbnailResultSuccess>(this, _$identity);

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
    TResult Function(Uint8List thumbnail)? success,
    TResult Function(GenerateThumbnailError error)? fail,
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
    TResult Function(GenerateThumbnailResultSuccess value)? success,
    TResult Function(GenerateThumbnailResultFail value)? fail,
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
  const factory GenerateThumbnailResultSuccess({required Uint8List thumbnail}) =
      _$GenerateThumbnailResultSuccess;

  Uint8List get thumbnail;
  @JsonKey(ignore: true)
  $GenerateThumbnailResultSuccessCopyWith<GenerateThumbnailResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateThumbnailResultFailCopyWith<$Res> {
  factory $GenerateThumbnailResultFailCopyWith(
          GenerateThumbnailResultFail value,
          $Res Function(GenerateThumbnailResultFail) then) =
      _$GenerateThumbnailResultFailCopyWithImpl<$Res>;
  $Res call({GenerateThumbnailError error});

  $GenerateThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$GenerateThumbnailResultFailCopyWithImpl<$Res>
    extends _$GenerateThumbnailResultCopyWithImpl<$Res>
    implements $GenerateThumbnailResultFailCopyWith<$Res> {
  _$GenerateThumbnailResultFailCopyWithImpl(GenerateThumbnailResultFail _value,
      $Res Function(GenerateThumbnailResultFail) _then)
      : super(_value, (v) => _then(v as GenerateThumbnailResultFail));

  @override
  GenerateThumbnailResultFail get _value =>
      super._value as GenerateThumbnailResultFail;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GenerateThumbnailResultFail(
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

class _$GenerateThumbnailResultFail implements GenerateThumbnailResultFail {
  const _$GenerateThumbnailResultFail(this.error);

  @override
  final GenerateThumbnailError error;

  @override
  String toString() {
    return 'GenerateThumbnailResult.fail(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateThumbnailResultFail &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $GenerateThumbnailResultFailCopyWith<GenerateThumbnailResultFail>
      get copyWith => _$GenerateThumbnailResultFailCopyWithImpl<
          GenerateThumbnailResultFail>(this, _$identity);

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
    TResult Function(Uint8List thumbnail)? success,
    TResult Function(GenerateThumbnailError error)? fail,
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
    TResult Function(GenerateThumbnailResultSuccess value)? success,
    TResult Function(GenerateThumbnailResultFail value)? fail,
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
  const factory GenerateThumbnailResultFail(GenerateThumbnailError error) =
      _$GenerateThumbnailResultFail;

  GenerateThumbnailError get error;
  @JsonKey(ignore: true)
  $GenerateThumbnailResultFailCopyWith<GenerateThumbnailResultFail>
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
class _$GenerateThumbnailErrorTearOff {
  const _$GenerateThumbnailErrorTearOff();

  GenerateThumbnailErrorFs fs(FsError error) {
    return GenerateThumbnailErrorFs(
      error,
    );
  }

  GenerateThumbnailErrorFileNotFound fileNotFound({required String path}) {
    return GenerateThumbnailErrorFileNotFound(
      path: path,
    );
  }

  GenerateThumbnailErrorUnsupportedFormat unsupportedFormat(
      {required String path}) {
    return GenerateThumbnailErrorUnsupportedFormat(
      path: path,
    );
  }

  GenerateThumbnailError fromJson(Map<String, Object?> json) {
    return GenerateThumbnailError.fromJson(json);
  }
}

/// @nodoc
const $GenerateThumbnailError = _$GenerateThumbnailErrorTearOff();

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
    TResult Function(FsError error)? fs,
    TResult Function(String path)? fileNotFound,
    TResult Function(String path)? unsupportedFormat,
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
    TResult Function(GenerateThumbnailErrorFs value)? fs,
    TResult Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult Function(GenerateThumbnailErrorUnsupportedFormat value)?
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateThumbnailErrorCopyWith<$Res> {
  factory $GenerateThumbnailErrorCopyWith(GenerateThumbnailError value,
          $Res Function(GenerateThumbnailError) then) =
      _$GenerateThumbnailErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenerateThumbnailErrorCopyWithImpl<$Res>
    implements $GenerateThumbnailErrorCopyWith<$Res> {
  _$GenerateThumbnailErrorCopyWithImpl(this._value, this._then);

  final GenerateThumbnailError _value;
  // ignore: unused_field
  final $Res Function(GenerateThumbnailError) _then;
}

/// @nodoc
abstract class $GenerateThumbnailErrorFsCopyWith<$Res> {
  factory $GenerateThumbnailErrorFsCopyWith(GenerateThumbnailErrorFs value,
          $Res Function(GenerateThumbnailErrorFs) then) =
      _$GenerateThumbnailErrorFsCopyWithImpl<$Res>;
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$GenerateThumbnailErrorFsCopyWithImpl<$Res>
    extends _$GenerateThumbnailErrorCopyWithImpl<$Res>
    implements $GenerateThumbnailErrorFsCopyWith<$Res> {
  _$GenerateThumbnailErrorFsCopyWithImpl(GenerateThumbnailErrorFs _value,
      $Res Function(GenerateThumbnailErrorFs) _then)
      : super(_value, (v) => _then(v as GenerateThumbnailErrorFs));

  @override
  GenerateThumbnailErrorFs get _value =>
      super._value as GenerateThumbnailErrorFs;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(GenerateThumbnailErrorFs(
      error == freezed
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
class _$GenerateThumbnailErrorFs implements GenerateThumbnailErrorFs {
  const _$GenerateThumbnailErrorFs(this.error, {String? $type})
      : $type = $type ?? 'fs';

  factory _$GenerateThumbnailErrorFs.fromJson(Map<String, dynamic> json) =>
      _$$GenerateThumbnailErrorFsFromJson(json);

  @override
  final FsError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenerateThumbnailError.fs(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateThumbnailErrorFs &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $GenerateThumbnailErrorFsCopyWith<GenerateThumbnailErrorFs> get copyWith =>
      _$GenerateThumbnailErrorFsCopyWithImpl<GenerateThumbnailErrorFs>(
          this, _$identity);

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
    TResult Function(FsError error)? fs,
    TResult Function(String path)? fileNotFound,
    TResult Function(String path)? unsupportedFormat,
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
    TResult Function(GenerateThumbnailErrorFs value)? fs,
    TResult Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult Function(GenerateThumbnailErrorUnsupportedFormat value)?
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
    return _$$GenerateThumbnailErrorFsToJson(this);
  }
}

abstract class GenerateThumbnailErrorFs implements GenerateThumbnailError {
  const factory GenerateThumbnailErrorFs(FsError error) =
      _$GenerateThumbnailErrorFs;

  factory GenerateThumbnailErrorFs.fromJson(Map<String, dynamic> json) =
      _$GenerateThumbnailErrorFs.fromJson;

  FsError get error;
  @JsonKey(ignore: true)
  $GenerateThumbnailErrorFsCopyWith<GenerateThumbnailErrorFs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateThumbnailErrorFileNotFoundCopyWith<$Res> {
  factory $GenerateThumbnailErrorFileNotFoundCopyWith(
          GenerateThumbnailErrorFileNotFound value,
          $Res Function(GenerateThumbnailErrorFileNotFound) then) =
      _$GenerateThumbnailErrorFileNotFoundCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$GenerateThumbnailErrorFileNotFoundCopyWithImpl<$Res>
    extends _$GenerateThumbnailErrorCopyWithImpl<$Res>
    implements $GenerateThumbnailErrorFileNotFoundCopyWith<$Res> {
  _$GenerateThumbnailErrorFileNotFoundCopyWithImpl(
      GenerateThumbnailErrorFileNotFound _value,
      $Res Function(GenerateThumbnailErrorFileNotFound) _then)
      : super(_value, (v) => _then(v as GenerateThumbnailErrorFileNotFound));

  @override
  GenerateThumbnailErrorFileNotFound get _value =>
      super._value as GenerateThumbnailErrorFileNotFound;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(GenerateThumbnailErrorFileNotFound(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateThumbnailErrorFileNotFound
    implements GenerateThumbnailErrorFileNotFound {
  const _$GenerateThumbnailErrorFileNotFound(
      {required this.path, String? $type})
      : $type = $type ?? 'fileNotFound';

  factory _$GenerateThumbnailErrorFileNotFound.fromJson(
          Map<String, dynamic> json) =>
      _$$GenerateThumbnailErrorFileNotFoundFromJson(json);

  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenerateThumbnailError.fileNotFound(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateThumbnailErrorFileNotFound &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  $GenerateThumbnailErrorFileNotFoundCopyWith<
          GenerateThumbnailErrorFileNotFound>
      get copyWith => _$GenerateThumbnailErrorFileNotFoundCopyWithImpl<
          GenerateThumbnailErrorFileNotFound>(this, _$identity);

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
    TResult Function(FsError error)? fs,
    TResult Function(String path)? fileNotFound,
    TResult Function(String path)? unsupportedFormat,
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
    TResult Function(GenerateThumbnailErrorFs value)? fs,
    TResult Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult Function(GenerateThumbnailErrorUnsupportedFormat value)?
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
    return _$$GenerateThumbnailErrorFileNotFoundToJson(this);
  }
}

abstract class GenerateThumbnailErrorFileNotFound
    implements GenerateThumbnailError {
  const factory GenerateThumbnailErrorFileNotFound({required String path}) =
      _$GenerateThumbnailErrorFileNotFound;

  factory GenerateThumbnailErrorFileNotFound.fromJson(
          Map<String, dynamic> json) =
      _$GenerateThumbnailErrorFileNotFound.fromJson;

  String get path;
  @JsonKey(ignore: true)
  $GenerateThumbnailErrorFileNotFoundCopyWith<
          GenerateThumbnailErrorFileNotFound>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateThumbnailErrorUnsupportedFormatCopyWith<$Res> {
  factory $GenerateThumbnailErrorUnsupportedFormatCopyWith(
          GenerateThumbnailErrorUnsupportedFormat value,
          $Res Function(GenerateThumbnailErrorUnsupportedFormat) then) =
      _$GenerateThumbnailErrorUnsupportedFormatCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$GenerateThumbnailErrorUnsupportedFormatCopyWithImpl<$Res>
    extends _$GenerateThumbnailErrorCopyWithImpl<$Res>
    implements $GenerateThumbnailErrorUnsupportedFormatCopyWith<$Res> {
  _$GenerateThumbnailErrorUnsupportedFormatCopyWithImpl(
      GenerateThumbnailErrorUnsupportedFormat _value,
      $Res Function(GenerateThumbnailErrorUnsupportedFormat) _then)
      : super(
            _value, (v) => _then(v as GenerateThumbnailErrorUnsupportedFormat));

  @override
  GenerateThumbnailErrorUnsupportedFormat get _value =>
      super._value as GenerateThumbnailErrorUnsupportedFormat;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(GenerateThumbnailErrorUnsupportedFormat(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateThumbnailErrorUnsupportedFormat
    implements GenerateThumbnailErrorUnsupportedFormat {
  const _$GenerateThumbnailErrorUnsupportedFormat(
      {required this.path, String? $type})
      : $type = $type ?? 'unsupportedFormat';

  factory _$GenerateThumbnailErrorUnsupportedFormat.fromJson(
          Map<String, dynamic> json) =>
      _$$GenerateThumbnailErrorUnsupportedFormatFromJson(json);

  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenerateThumbnailError.unsupportedFormat(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateThumbnailErrorUnsupportedFormat &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  $GenerateThumbnailErrorUnsupportedFormatCopyWith<
          GenerateThumbnailErrorUnsupportedFormat>
      get copyWith => _$GenerateThumbnailErrorUnsupportedFormatCopyWithImpl<
          GenerateThumbnailErrorUnsupportedFormat>(this, _$identity);

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
    TResult Function(FsError error)? fs,
    TResult Function(String path)? fileNotFound,
    TResult Function(String path)? unsupportedFormat,
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
    TResult Function(GenerateThumbnailErrorFs value)? fs,
    TResult Function(GenerateThumbnailErrorFileNotFound value)? fileNotFound,
    TResult Function(GenerateThumbnailErrorUnsupportedFormat value)?
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
    return _$$GenerateThumbnailErrorUnsupportedFormatToJson(this);
  }
}

abstract class GenerateThumbnailErrorUnsupportedFormat
    implements GenerateThumbnailError {
  const factory GenerateThumbnailErrorUnsupportedFormat(
      {required String path}) = _$GenerateThumbnailErrorUnsupportedFormat;

  factory GenerateThumbnailErrorUnsupportedFormat.fromJson(
          Map<String, dynamic> json) =
      _$GenerateThumbnailErrorUnsupportedFormat.fromJson;

  String get path;
  @JsonKey(ignore: true)
  $GenerateThumbnailErrorUnsupportedFormatCopyWith<
          GenerateThumbnailErrorUnsupportedFormat>
      get copyWith => throw _privateConstructorUsedError;
}
