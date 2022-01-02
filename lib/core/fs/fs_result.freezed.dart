// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fs_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FsResultTearOff {
  const _$FsResultTearOff();

  FsResultValue<T> call<T>(T value) {
    return FsResultValue<T>(
      value,
    );
  }

  FsResultError<T> error<T>(FsError value) {
    return FsResultError<T>(
      value,
    );
  }
}

/// @nodoc
const $FsResult = _$FsResultTearOff();

/// @nodoc
mixin _$FsResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(FsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(FsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(FsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FsResultValue<T> value) $default, {
    required TResult Function(FsResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FsResultValue<T> value)? $default, {
    TResult Function(FsResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FsResultValue<T> value)? $default, {
    TResult Function(FsResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsResultCopyWith<T, $Res> {
  factory $FsResultCopyWith(
          FsResult<T> value, $Res Function(FsResult<T>) then) =
      _$FsResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FsResultCopyWithImpl<T, $Res> implements $FsResultCopyWith<T, $Res> {
  _$FsResultCopyWithImpl(this._value, this._then);

  final FsResult<T> _value;
  // ignore: unused_field
  final $Res Function(FsResult<T>) _then;
}

/// @nodoc
abstract class $FsResultValueCopyWith<T, $Res> {
  factory $FsResultValueCopyWith(
          FsResultValue<T> value, $Res Function(FsResultValue<T>) then) =
      _$FsResultValueCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$FsResultValueCopyWithImpl<T, $Res>
    extends _$FsResultCopyWithImpl<T, $Res>
    implements $FsResultValueCopyWith<T, $Res> {
  _$FsResultValueCopyWithImpl(
      FsResultValue<T> _value, $Res Function(FsResultValue<T>) _then)
      : super(_value, (v) => _then(v as FsResultValue<T>));

  @override
  FsResultValue<T> get _value => super._value as FsResultValue<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(FsResultValue<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FsResultValue<T>
    with DiagnosticableTreeMixin
    implements FsResultValue<T> {
  const _$FsResultValue(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FsResult<$T>(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FsResult<$T>'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FsResultValue<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $FsResultValueCopyWith<T, FsResultValue<T>> get copyWith =>
      _$FsResultValueCopyWithImpl<T, FsResultValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(FsError value) error,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(FsError value)? error,
  }) {
    return $default?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(FsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FsResultValue<T> value) $default, {
    required TResult Function(FsResultError<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FsResultValue<T> value)? $default, {
    TResult Function(FsResultError<T> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FsResultValue<T> value)? $default, {
    TResult Function(FsResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class FsResultValue<T> implements FsResult<T> {
  const factory FsResultValue(T value) = _$FsResultValue<T>;

  T get value;
  @JsonKey(ignore: true)
  $FsResultValueCopyWith<T, FsResultValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsResultErrorCopyWith<T, $Res> {
  factory $FsResultErrorCopyWith(
          FsResultError<T> value, $Res Function(FsResultError<T>) then) =
      _$FsResultErrorCopyWithImpl<T, $Res>;
  $Res call({FsError value});

  $FsErrorCopyWith<$Res> get value;
}

/// @nodoc
class _$FsResultErrorCopyWithImpl<T, $Res>
    extends _$FsResultCopyWithImpl<T, $Res>
    implements $FsResultErrorCopyWith<T, $Res> {
  _$FsResultErrorCopyWithImpl(
      FsResultError<T> _value, $Res Function(FsResultError<T>) _then)
      : super(_value, (v) => _then(v as FsResultError<T>));

  @override
  FsResultError<T> get _value => super._value as FsResultError<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(FsResultError<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  @override
  $FsErrorCopyWith<$Res> get value {
    return $FsErrorCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$FsResultError<T>
    with DiagnosticableTreeMixin
    implements FsResultError<T> {
  const _$FsResultError(this.value);

  @override
  final FsError value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FsResult<$T>.error(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FsResult<$T>.error'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FsResultError<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $FsResultErrorCopyWith<T, FsResultError<T>> get copyWith =>
      _$FsResultErrorCopyWithImpl<T, FsResultError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(FsError value) error,
  }) {
    return error(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(FsError value)? error,
  }) {
    return error?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(FsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FsResultValue<T> value) $default, {
    required TResult Function(FsResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(FsResultValue<T> value)? $default, {
    TResult Function(FsResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FsResultValue<T> value)? $default, {
    TResult Function(FsResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FsResultError<T> implements FsResult<T> {
  const factory FsResultError(FsError value) = _$FsResultError<T>;

  FsError get value;
  @JsonKey(ignore: true)
  $FsResultErrorCopyWith<T, FsResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

FsError _$FsErrorFromJson(Map<String, dynamic> json) {
  return FsErrorIO.fromJson(json);
}

/// @nodoc
class _$FsErrorTearOff {
  const _$FsErrorTearOff();

  FsErrorIO io(
      {@ExceptionConverter() Exception? exception,
      @StackTraceConverter() StackTrace? stackTrace}) {
    return FsErrorIO(
      exception: exception,
      stackTrace: stackTrace,
    );
  }

  FsError fromJson(Map<String, Object?> json) {
    return FsError.fromJson(json);
  }
}

/// @nodoc
const $FsError = _$FsErrorTearOff();

/// @nodoc
mixin _$FsError {
  @ExceptionConverter()
  Exception? get exception => throw _privateConstructorUsedError;
  @StackTraceConverter()
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@ExceptionConverter() Exception? exception,
            @StackTraceConverter() StackTrace? stackTrace)
        io,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@ExceptionConverter() Exception? exception,
            @StackTraceConverter() StackTrace? stackTrace)?
        io,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@ExceptionConverter() Exception? exception,
            @StackTraceConverter() StackTrace? stackTrace)?
        io,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FsErrorIO value) io,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FsErrorIO value)? io,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FsErrorIO value)? io,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FsErrorCopyWith<FsError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsErrorCopyWith<$Res> {
  factory $FsErrorCopyWith(FsError value, $Res Function(FsError) then) =
      _$FsErrorCopyWithImpl<$Res>;
  $Res call(
      {@ExceptionConverter() Exception? exception,
      @StackTraceConverter() StackTrace? stackTrace});
}

/// @nodoc
class _$FsErrorCopyWithImpl<$Res> implements $FsErrorCopyWith<$Res> {
  _$FsErrorCopyWithImpl(this._value, this._then);

  final FsError _value;
  // ignore: unused_field
  final $Res Function(FsError) _then;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
abstract class $FsErrorIOCopyWith<$Res> implements $FsErrorCopyWith<$Res> {
  factory $FsErrorIOCopyWith(FsErrorIO value, $Res Function(FsErrorIO) then) =
      _$FsErrorIOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@ExceptionConverter() Exception? exception,
      @StackTraceConverter() StackTrace? stackTrace});
}

/// @nodoc
class _$FsErrorIOCopyWithImpl<$Res> extends _$FsErrorCopyWithImpl<$Res>
    implements $FsErrorIOCopyWith<$Res> {
  _$FsErrorIOCopyWithImpl(FsErrorIO _value, $Res Function(FsErrorIO) _then)
      : super(_value, (v) => _then(v as FsErrorIO));

  @override
  FsErrorIO get _value => super._value as FsErrorIO;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(FsErrorIO(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
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
class _$FsErrorIO with DiagnosticableTreeMixin implements FsErrorIO {
  const _$FsErrorIO(
      {@ExceptionConverter() this.exception,
      @StackTraceConverter() this.stackTrace});

  factory _$FsErrorIO.fromJson(Map<String, dynamic> json) =>
      _$$FsErrorIOFromJson(json);

  @override
  @ExceptionConverter()
  final Exception? exception;
  @override
  @StackTraceConverter()
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FsError.io(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FsError.io'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FsErrorIO &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $FsErrorIOCopyWith<FsErrorIO> get copyWith =>
      _$FsErrorIOCopyWithImpl<FsErrorIO>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@ExceptionConverter() Exception? exception,
            @StackTraceConverter() StackTrace? stackTrace)
        io,
  }) {
    return io(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@ExceptionConverter() Exception? exception,
            @StackTraceConverter() StackTrace? stackTrace)?
        io,
  }) {
    return io?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@ExceptionConverter() Exception? exception,
            @StackTraceConverter() StackTrace? stackTrace)?
        io,
    required TResult orElse(),
  }) {
    if (io != null) {
      return io(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FsErrorIO value) io,
  }) {
    return io(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FsErrorIO value)? io,
  }) {
    return io?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FsErrorIO value)? io,
    required TResult orElse(),
  }) {
    if (io != null) {
      return io(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FsErrorIOToJson(this);
  }
}

abstract class FsErrorIO implements FsError {
  const factory FsErrorIO(
      {@ExceptionConverter() Exception? exception,
      @StackTraceConverter() StackTrace? stackTrace}) = _$FsErrorIO;

  factory FsErrorIO.fromJson(Map<String, dynamic> json) = _$FsErrorIO.fromJson;

  @override
  @ExceptionConverter()
  Exception? get exception;
  @override
  @StackTraceConverter()
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  $FsErrorIOCopyWith<FsErrorIO> get copyWith =>
      throw _privateConstructorUsedError;
}
