// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'encrypt_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EncryptResultTearOff {
  const _$EncryptResultTearOff();

  _EncryptResultSuccess success({required Uint8List bytes}) {
    return _EncryptResultSuccess(
      bytes: bytes,
    );
  }

  _EncryptResultFail fail(EncryptError error) {
    return _EncryptResultFail(
      error,
    );
  }
}

/// @nodoc
const $EncryptResult = _$EncryptResultTearOff();

/// @nodoc
mixin _$EncryptResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) success,
    required TResult Function(EncryptError error) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(EncryptError error)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(EncryptError error)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EncryptResultSuccess value) success,
    required TResult Function(_EncryptResultFail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EncryptResultSuccess value)? success,
    TResult Function(_EncryptResultFail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EncryptResultSuccess value)? success,
    TResult Function(_EncryptResultFail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptResultCopyWith<$Res> {
  factory $EncryptResultCopyWith(
          EncryptResult value, $Res Function(EncryptResult) then) =
      _$EncryptResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$EncryptResultCopyWithImpl<$Res>
    implements $EncryptResultCopyWith<$Res> {
  _$EncryptResultCopyWithImpl(this._value, this._then);

  final EncryptResult _value;
  // ignore: unused_field
  final $Res Function(EncryptResult) _then;
}

/// @nodoc
abstract class _$EncryptResultSuccessCopyWith<$Res> {
  factory _$EncryptResultSuccessCopyWith(_EncryptResultSuccess value,
          $Res Function(_EncryptResultSuccess) then) =
      __$EncryptResultSuccessCopyWithImpl<$Res>;
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$EncryptResultSuccessCopyWithImpl<$Res>
    extends _$EncryptResultCopyWithImpl<$Res>
    implements _$EncryptResultSuccessCopyWith<$Res> {
  __$EncryptResultSuccessCopyWithImpl(
      _EncryptResultSuccess _value, $Res Function(_EncryptResultSuccess) _then)
      : super(_value, (v) => _then(v as _EncryptResultSuccess));

  @override
  _EncryptResultSuccess get _value => super._value as _EncryptResultSuccess;

  @override
  $Res call({
    Object? bytes = freezed,
  }) {
    return _then(_EncryptResultSuccess(
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_EncryptResultSuccess
    with DiagnosticableTreeMixin
    implements _EncryptResultSuccess {
  const _$_EncryptResultSuccess({required this.bytes});

  @override
  final Uint8List bytes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EncryptResult.success(bytes: $bytes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EncryptResult.success'))
      ..add(DiagnosticsProperty('bytes', bytes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptResultSuccess &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  _$EncryptResultSuccessCopyWith<_EncryptResultSuccess> get copyWith =>
      __$EncryptResultSuccessCopyWithImpl<_EncryptResultSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) success,
    required TResult Function(EncryptError error) fail,
  }) {
    return success(bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(EncryptError error)? fail,
  }) {
    return success?.call(bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(EncryptError error)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EncryptResultSuccess value) success,
    required TResult Function(_EncryptResultFail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EncryptResultSuccess value)? success,
    TResult Function(_EncryptResultFail value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EncryptResultSuccess value)? success,
    TResult Function(_EncryptResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _EncryptResultSuccess implements EncryptResult {
  const factory _EncryptResultSuccess({required Uint8List bytes}) =
      _$_EncryptResultSuccess;

  Uint8List get bytes;
  @JsonKey(ignore: true)
  _$EncryptResultSuccessCopyWith<_EncryptResultSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EncryptResultFailCopyWith<$Res> {
  factory _$EncryptResultFailCopyWith(
          _EncryptResultFail value, $Res Function(_EncryptResultFail) then) =
      __$EncryptResultFailCopyWithImpl<$Res>;
  $Res call({EncryptError error});

  $EncryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$EncryptResultFailCopyWithImpl<$Res>
    extends _$EncryptResultCopyWithImpl<$Res>
    implements _$EncryptResultFailCopyWith<$Res> {
  __$EncryptResultFailCopyWithImpl(
      _EncryptResultFail _value, $Res Function(_EncryptResultFail) _then)
      : super(_value, (v) => _then(v as _EncryptResultFail));

  @override
  _EncryptResultFail get _value => super._value as _EncryptResultFail;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_EncryptResultFail(
      error == freezed
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

class _$_EncryptResultFail
    with DiagnosticableTreeMixin
    implements _EncryptResultFail {
  const _$_EncryptResultFail(this.error);

  @override
  final EncryptError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EncryptResult.fail(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EncryptResult.fail'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptResultFail &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$EncryptResultFailCopyWith<_EncryptResultFail> get copyWith =>
      __$EncryptResultFailCopyWithImpl<_EncryptResultFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) success,
    required TResult Function(EncryptError error) fail,
  }) {
    return fail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(EncryptError error)? fail,
  }) {
    return fail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(EncryptError error)? fail,
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
    required TResult Function(_EncryptResultSuccess value) success,
    required TResult Function(_EncryptResultFail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EncryptResultSuccess value)? success,
    TResult Function(_EncryptResultFail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EncryptResultSuccess value)? success,
    TResult Function(_EncryptResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _EncryptResultFail implements EncryptResult {
  const factory _EncryptResultFail(EncryptError error) = _$_EncryptResultFail;

  EncryptError get error;
  @JsonKey(ignore: true)
  _$EncryptResultFailCopyWith<_EncryptResultFail> get copyWith =>
      throw _privateConstructorUsedError;
}

EncryptError _$EncryptErrorFromJson(Map<String, dynamic> json) {
  return _EncryptError.fromJson(json);
}

/// @nodoc
class _$EncryptErrorTearOff {
  const _$EncryptErrorTearOff();

  _EncryptError call(
      {@ExceptionConverter() Exception? error,
      @StackTraceConverter() StackTrace? stackTrace}) {
    return _EncryptError(
      error: error,
      stackTrace: stackTrace,
    );
  }

  EncryptError fromJson(Map<String, Object?> json) {
    return EncryptError.fromJson(json);
  }
}

/// @nodoc
const $EncryptError = _$EncryptErrorTearOff();

/// @nodoc
mixin _$EncryptError {
  @ExceptionConverter()
  Exception? get error => throw _privateConstructorUsedError;
  @StackTraceConverter()
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptErrorCopyWith<EncryptError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptErrorCopyWith<$Res> {
  factory $EncryptErrorCopyWith(
          EncryptError value, $Res Function(EncryptError) then) =
      _$EncryptErrorCopyWithImpl<$Res>;
  $Res call(
      {@ExceptionConverter() Exception? error,
      @StackTraceConverter() StackTrace? stackTrace});
}

/// @nodoc
class _$EncryptErrorCopyWithImpl<$Res> implements $EncryptErrorCopyWith<$Res> {
  _$EncryptErrorCopyWithImpl(this._value, this._then);

  final EncryptError _value;
  // ignore: unused_field
  final $Res Function(EncryptError) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
abstract class _$EncryptErrorCopyWith<$Res>
    implements $EncryptErrorCopyWith<$Res> {
  factory _$EncryptErrorCopyWith(
          _EncryptError value, $Res Function(_EncryptError) then) =
      __$EncryptErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {@ExceptionConverter() Exception? error,
      @StackTraceConverter() StackTrace? stackTrace});
}

/// @nodoc
class __$EncryptErrorCopyWithImpl<$Res> extends _$EncryptErrorCopyWithImpl<$Res>
    implements _$EncryptErrorCopyWith<$Res> {
  __$EncryptErrorCopyWithImpl(
      _EncryptError _value, $Res Function(_EncryptError) _then)
      : super(_value, (v) => _then(v as _EncryptError));

  @override
  _EncryptError get _value => super._value as _EncryptError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_EncryptError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EncryptError with DiagnosticableTreeMixin implements _EncryptError {
  const _$_EncryptError(
      {@ExceptionConverter() this.error,
      @StackTraceConverter() this.stackTrace});

  factory _$_EncryptError.fromJson(Map<String, dynamic> json) =>
      _$$_EncryptErrorFromJson(json);

  @override
  @ExceptionConverter()
  final Exception? error;
  @override
  @StackTraceConverter()
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EncryptError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EncryptError'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$EncryptErrorCopyWith<_EncryptError> get copyWith =>
      __$EncryptErrorCopyWithImpl<_EncryptError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptErrorToJson(this);
  }
}

abstract class _EncryptError implements EncryptError {
  const factory _EncryptError(
      {@ExceptionConverter() Exception? error,
      @StackTraceConverter() StackTrace? stackTrace}) = _$_EncryptError;

  factory _EncryptError.fromJson(Map<String, dynamic> json) =
      _$_EncryptError.fromJson;

  @override
  @ExceptionConverter()
  Exception? get error;
  @override
  @StackTraceConverter()
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$EncryptErrorCopyWith<_EncryptError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DecryptResultTearOff {
  const _$DecryptResultTearOff();

  _DecryptResulttSuccess success({required Uint8List bytes}) {
    return _DecryptResulttSuccess(
      bytes: bytes,
    );
  }

  _DecryptResultFail fail(DecryptError error) {
    return _DecryptResultFail(
      error,
    );
  }
}

/// @nodoc
const $DecryptResult = _$DecryptResultTearOff();

/// @nodoc
mixin _$DecryptResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) success,
    required TResult Function(DecryptError error) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(DecryptError error)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(DecryptError error)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DecryptResulttSuccess value) success,
    required TResult Function(_DecryptResultFail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DecryptResulttSuccess value)? success,
    TResult Function(_DecryptResultFail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DecryptResulttSuccess value)? success,
    TResult Function(_DecryptResultFail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptResultCopyWith<$Res> {
  factory $DecryptResultCopyWith(
          DecryptResult value, $Res Function(DecryptResult) then) =
      _$DecryptResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$DecryptResultCopyWithImpl<$Res>
    implements $DecryptResultCopyWith<$Res> {
  _$DecryptResultCopyWithImpl(this._value, this._then);

  final DecryptResult _value;
  // ignore: unused_field
  final $Res Function(DecryptResult) _then;
}

/// @nodoc
abstract class _$DecryptResulttSuccessCopyWith<$Res> {
  factory _$DecryptResulttSuccessCopyWith(_DecryptResulttSuccess value,
          $Res Function(_DecryptResulttSuccess) then) =
      __$DecryptResulttSuccessCopyWithImpl<$Res>;
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$DecryptResulttSuccessCopyWithImpl<$Res>
    extends _$DecryptResultCopyWithImpl<$Res>
    implements _$DecryptResulttSuccessCopyWith<$Res> {
  __$DecryptResulttSuccessCopyWithImpl(_DecryptResulttSuccess _value,
      $Res Function(_DecryptResulttSuccess) _then)
      : super(_value, (v) => _then(v as _DecryptResulttSuccess));

  @override
  _DecryptResulttSuccess get _value => super._value as _DecryptResulttSuccess;

  @override
  $Res call({
    Object? bytes = freezed,
  }) {
    return _then(_DecryptResulttSuccess(
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_DecryptResulttSuccess
    with DiagnosticableTreeMixin
    implements _DecryptResulttSuccess {
  const _$_DecryptResulttSuccess({required this.bytes});

  @override
  final Uint8List bytes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecryptResult.success(bytes: $bytes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DecryptResult.success'))
      ..add(DiagnosticsProperty('bytes', bytes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecryptResulttSuccess &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  _$DecryptResulttSuccessCopyWith<_DecryptResulttSuccess> get copyWith =>
      __$DecryptResulttSuccessCopyWithImpl<_DecryptResulttSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) success,
    required TResult Function(DecryptError error) fail,
  }) {
    return success(bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(DecryptError error)? fail,
  }) {
    return success?.call(bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(DecryptError error)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DecryptResulttSuccess value) success,
    required TResult Function(_DecryptResultFail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DecryptResulttSuccess value)? success,
    TResult Function(_DecryptResultFail value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DecryptResulttSuccess value)? success,
    TResult Function(_DecryptResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DecryptResulttSuccess implements DecryptResult {
  const factory _DecryptResulttSuccess({required Uint8List bytes}) =
      _$_DecryptResulttSuccess;

  Uint8List get bytes;
  @JsonKey(ignore: true)
  _$DecryptResulttSuccessCopyWith<_DecryptResulttSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DecryptResultFailCopyWith<$Res> {
  factory _$DecryptResultFailCopyWith(
          _DecryptResultFail value, $Res Function(_DecryptResultFail) then) =
      __$DecryptResultFailCopyWithImpl<$Res>;
  $Res call({DecryptError error});

  $DecryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$DecryptResultFailCopyWithImpl<$Res>
    extends _$DecryptResultCopyWithImpl<$Res>
    implements _$DecryptResultFailCopyWith<$Res> {
  __$DecryptResultFailCopyWithImpl(
      _DecryptResultFail _value, $Res Function(_DecryptResultFail) _then)
      : super(_value, (v) => _then(v as _DecryptResultFail));

  @override
  _DecryptResultFail get _value => super._value as _DecryptResultFail;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_DecryptResultFail(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DecryptError,
    ));
  }

  @override
  $DecryptErrorCopyWith<$Res> get error {
    return $DecryptErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_DecryptResultFail
    with DiagnosticableTreeMixin
    implements _DecryptResultFail {
  const _$_DecryptResultFail(this.error);

  @override
  final DecryptError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecryptResult.fail(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DecryptResult.fail'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecryptResultFail &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$DecryptResultFailCopyWith<_DecryptResultFail> get copyWith =>
      __$DecryptResultFailCopyWithImpl<_DecryptResultFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List bytes) success,
    required TResult Function(DecryptError error) fail,
  }) {
    return fail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(DecryptError error)? fail,
  }) {
    return fail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List bytes)? success,
    TResult Function(DecryptError error)? fail,
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
    required TResult Function(_DecryptResulttSuccess value) success,
    required TResult Function(_DecryptResultFail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DecryptResulttSuccess value)? success,
    TResult Function(_DecryptResultFail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DecryptResulttSuccess value)? success,
    TResult Function(_DecryptResultFail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _DecryptResultFail implements DecryptResult {
  const factory _DecryptResultFail(DecryptError error) = _$_DecryptResultFail;

  DecryptError get error;
  @JsonKey(ignore: true)
  _$DecryptResultFailCopyWith<_DecryptResultFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DecryptErrorTearOff {
  const _$DecryptErrorTearOff();

  DecryptErrorValue call({Exception? error, StackTrace? stackTrace}) {
    return DecryptErrorValue(
      error: error,
      stackTrace: stackTrace,
    );
  }

  DecryptErrorInvalidKey invalidKey() {
    return const DecryptErrorInvalidKey();
  }
}

/// @nodoc
const $DecryptError = _$DecryptErrorTearOff();

/// @nodoc
mixin _$DecryptError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace) $default, {
    required TResult Function() invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult Function()? invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DecryptErrorValue value) $default, {
    required TResult Function(DecryptErrorInvalidKey value) invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DecryptErrorValue value)? $default, {
    TResult Function(DecryptErrorInvalidKey value)? invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DecryptErrorValue value)? $default, {
    TResult Function(DecryptErrorInvalidKey value)? invalidKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptErrorCopyWith<$Res> {
  factory $DecryptErrorCopyWith(
          DecryptError value, $Res Function(DecryptError) then) =
      _$DecryptErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$DecryptErrorCopyWithImpl<$Res> implements $DecryptErrorCopyWith<$Res> {
  _$DecryptErrorCopyWithImpl(this._value, this._then);

  final DecryptError _value;
  // ignore: unused_field
  final $Res Function(DecryptError) _then;
}

/// @nodoc
abstract class $DecryptErrorValueCopyWith<$Res> {
  factory $DecryptErrorValueCopyWith(
          DecryptErrorValue value, $Res Function(DecryptErrorValue) then) =
      _$DecryptErrorValueCopyWithImpl<$Res>;
  $Res call({Exception? error, StackTrace? stackTrace});
}

/// @nodoc
class _$DecryptErrorValueCopyWithImpl<$Res>
    extends _$DecryptErrorCopyWithImpl<$Res>
    implements $DecryptErrorValueCopyWith<$Res> {
  _$DecryptErrorValueCopyWithImpl(
      DecryptErrorValue _value, $Res Function(DecryptErrorValue) _then)
      : super(_value, (v) => _then(v as DecryptErrorValue));

  @override
  DecryptErrorValue get _value => super._value as DecryptErrorValue;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(DecryptErrorValue(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$DecryptErrorValue
    with DiagnosticableTreeMixin
    implements DecryptErrorValue {
  const _$DecryptErrorValue({this.error, this.stackTrace});

  @override
  final Exception? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecryptError(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DecryptError'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DecryptErrorValue &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $DecryptErrorValueCopyWith<DecryptErrorValue> get copyWith =>
      _$DecryptErrorValueCopyWithImpl<DecryptErrorValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace) $default, {
    required TResult Function() invalidKey,
  }) {
    return $default(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult Function()? invalidKey,
  }) {
    return $default?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DecryptErrorValue value) $default, {
    required TResult Function(DecryptErrorInvalidKey value) invalidKey,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DecryptErrorValue value)? $default, {
    TResult Function(DecryptErrorInvalidKey value)? invalidKey,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DecryptErrorValue value)? $default, {
    TResult Function(DecryptErrorInvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DecryptErrorValue implements DecryptError {
  const factory DecryptErrorValue({Exception? error, StackTrace? stackTrace}) =
      _$DecryptErrorValue;

  Exception? get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $DecryptErrorValueCopyWith<DecryptErrorValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptErrorInvalidKeyCopyWith<$Res> {
  factory $DecryptErrorInvalidKeyCopyWith(DecryptErrorInvalidKey value,
          $Res Function(DecryptErrorInvalidKey) then) =
      _$DecryptErrorInvalidKeyCopyWithImpl<$Res>;
}

/// @nodoc
class _$DecryptErrorInvalidKeyCopyWithImpl<$Res>
    extends _$DecryptErrorCopyWithImpl<$Res>
    implements $DecryptErrorInvalidKeyCopyWith<$Res> {
  _$DecryptErrorInvalidKeyCopyWithImpl(DecryptErrorInvalidKey _value,
      $Res Function(DecryptErrorInvalidKey) _then)
      : super(_value, (v) => _then(v as DecryptErrorInvalidKey));

  @override
  DecryptErrorInvalidKey get _value => super._value as DecryptErrorInvalidKey;
}

/// @nodoc

class _$DecryptErrorInvalidKey
    with DiagnosticableTreeMixin
    implements DecryptErrorInvalidKey {
  const _$DecryptErrorInvalidKey();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecryptError.invalidKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DecryptError.invalidKey'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DecryptErrorInvalidKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace) $default, {
    required TResult Function() invalidKey,
  }) {
    return invalidKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult Function()? invalidKey,
  }) {
    return invalidKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult Function()? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DecryptErrorValue value) $default, {
    required TResult Function(DecryptErrorInvalidKey value) invalidKey,
  }) {
    return invalidKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DecryptErrorValue value)? $default, {
    TResult Function(DecryptErrorInvalidKey value)? invalidKey,
  }) {
    return invalidKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DecryptErrorValue value)? $default, {
    TResult Function(DecryptErrorInvalidKey value)? invalidKey,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey(this);
    }
    return orElse();
  }
}

abstract class DecryptErrorInvalidKey implements DecryptError {
  const factory DecryptErrorInvalidKey() = _$DecryptErrorInvalidKey;
}

/// @nodoc
class _$_PBEInfoTearOff {
  const _$_PBEInfoTearOff();

  _PBEInfoData call({required Uint8List src, required Uint8List key}) {
    return _PBEInfoData(
      src: src,
      key: key,
    );
  }
}

/// @nodoc
const _$PBEInfo = _$_PBEInfoTearOff();

/// @nodoc
mixin _$_PBEInfo {
  Uint8List get src => throw _privateConstructorUsedError;
  Uint8List get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$PBEInfoCopyWith<_PBEInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PBEInfoCopyWith<$Res> {
  factory _$PBEInfoCopyWith(_PBEInfo value, $Res Function(_PBEInfo) then) =
      __$PBEInfoCopyWithImpl<$Res>;
  $Res call({Uint8List src, Uint8List key});
}

/// @nodoc
class __$PBEInfoCopyWithImpl<$Res> implements _$PBEInfoCopyWith<$Res> {
  __$PBEInfoCopyWithImpl(this._value, this._then);

  final _PBEInfo _value;
  // ignore: unused_field
  final $Res Function(_PBEInfo) _then;

  @override
  $Res call({
    Object? src = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$PBEInfoDataCopyWith<$Res> implements _$PBEInfoCopyWith<$Res> {
  factory _$PBEInfoDataCopyWith(
          _PBEInfoData value, $Res Function(_PBEInfoData) then) =
      __$PBEInfoDataCopyWithImpl<$Res>;
  @override
  $Res call({Uint8List src, Uint8List key});
}

/// @nodoc
class __$PBEInfoDataCopyWithImpl<$Res> extends __$PBEInfoCopyWithImpl<$Res>
    implements _$PBEInfoDataCopyWith<$Res> {
  __$PBEInfoDataCopyWithImpl(
      _PBEInfoData _value, $Res Function(_PBEInfoData) _then)
      : super(_value, (v) => _then(v as _PBEInfoData));

  @override
  _PBEInfoData get _value => super._value as _PBEInfoData;

  @override
  $Res call({
    Object? src = freezed,
    Object? key = freezed,
  }) {
    return _then(_PBEInfoData(
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_PBEInfoData with DiagnosticableTreeMixin implements _PBEInfoData {
  const _$_PBEInfoData({required this.src, required this.key});

  @override
  final Uint8List src;
  @override
  final Uint8List key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_PBEInfo(src: $src, key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_PBEInfo'))
      ..add(DiagnosticsProperty('src', src))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PBEInfoData &&
            const DeepCollectionEquality().equals(other.src, src) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(src),
      const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$PBEInfoDataCopyWith<_PBEInfoData> get copyWith =>
      __$PBEInfoDataCopyWithImpl<_PBEInfoData>(this, _$identity);
}

abstract class _PBEInfoData implements _PBEInfo {
  const factory _PBEInfoData({required Uint8List src, required Uint8List key}) =
      _$_PBEInfoData;

  @override
  Uint8List get src;
  @override
  Uint8List get key;
  @override
  @JsonKey(ignore: true)
  _$PBEInfoDataCopyWith<_PBEInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}
