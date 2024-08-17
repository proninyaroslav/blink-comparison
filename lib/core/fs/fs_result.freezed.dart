// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fs_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FsResult<T> {
  Object? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(FsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function(FsError value)? error,
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
    TResult? Function(FsResultValue<T> value)? $default, {
    TResult? Function(FsResultError<T> value)? error,
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
      _$FsResultCopyWithImpl<T, $Res, FsResult<T>>;
}

/// @nodoc
class _$FsResultCopyWithImpl<T, $Res, $Val extends FsResult<T>>
    implements $FsResultCopyWith<T, $Res> {
  _$FsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FsResultValueImplCopyWith<T, $Res> {
  factory _$$FsResultValueImplCopyWith(_$FsResultValueImpl<T> value,
          $Res Function(_$FsResultValueImpl<T>) then) =
      __$$FsResultValueImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$FsResultValueImplCopyWithImpl<T, $Res>
    extends _$FsResultCopyWithImpl<T, $Res, _$FsResultValueImpl<T>>
    implements _$$FsResultValueImplCopyWith<T, $Res> {
  __$$FsResultValueImplCopyWithImpl(_$FsResultValueImpl<T> _value,
      $Res Function(_$FsResultValueImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$FsResultValueImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FsResultValueImpl<T>
    with DiagnosticableTreeMixin
    implements FsResultValue<T> {
  const _$FsResultValueImpl(this.value);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsResultValueImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FsResultValueImplCopyWith<T, _$FsResultValueImpl<T>> get copyWith =>
      __$$FsResultValueImplCopyWithImpl<T, _$FsResultValueImpl<T>>(
          this, _$identity);

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
    TResult? Function(T value)? $default, {
    TResult? Function(FsError value)? error,
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
    TResult? Function(FsResultValue<T> value)? $default, {
    TResult? Function(FsResultError<T> value)? error,
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
  const factory FsResultValue(final T value) = _$FsResultValueImpl<T>;

  @override
  T get value;

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FsResultValueImplCopyWith<T, _$FsResultValueImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FsResultErrorImplCopyWith<T, $Res> {
  factory _$$FsResultErrorImplCopyWith(_$FsResultErrorImpl<T> value,
          $Res Function(_$FsResultErrorImpl<T>) then) =
      __$$FsResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FsError value});

  $FsErrorCopyWith<$Res> get value;
}

/// @nodoc
class __$$FsResultErrorImplCopyWithImpl<T, $Res>
    extends _$FsResultCopyWithImpl<T, $Res, _$FsResultErrorImpl<T>>
    implements _$$FsResultErrorImplCopyWith<T, $Res> {
  __$$FsResultErrorImplCopyWithImpl(_$FsResultErrorImpl<T> _value,
      $Res Function(_$FsResultErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$FsResultErrorImpl<T>(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsErrorCopyWith<$Res> get value {
    return $FsErrorCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$FsResultErrorImpl<T>
    with DiagnosticableTreeMixin
    implements FsResultError<T> {
  const _$FsResultErrorImpl(this.value);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsResultErrorImpl<T> &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FsResultErrorImplCopyWith<T, _$FsResultErrorImpl<T>> get copyWith =>
      __$$FsResultErrorImplCopyWithImpl<T, _$FsResultErrorImpl<T>>(
          this, _$identity);

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
    TResult? Function(T value)? $default, {
    TResult? Function(FsError value)? error,
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
    TResult? Function(FsResultValue<T> value)? $default, {
    TResult? Function(FsResultError<T> value)? error,
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
  const factory FsResultError(final FsError value) = _$FsResultErrorImpl<T>;

  @override
  FsError get value;

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FsResultErrorImplCopyWith<T, _$FsResultErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

FsError _$FsErrorFromJson(Map<String, dynamic> json) {
  return FsErrorIO.fromJson(json);
}

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
    TResult? Function(@ExceptionConverter() Exception? exception,
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
    TResult? Function(FsErrorIO value)? io,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FsErrorIO value)? io,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FsError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FsErrorCopyWith<FsError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FsErrorCopyWith<$Res> {
  factory $FsErrorCopyWith(FsError value, $Res Function(FsError) then) =
      _$FsErrorCopyWithImpl<$Res, FsError>;
  @useResult
  $Res call(
      {@ExceptionConverter() Exception? exception,
      @StackTraceConverter() StackTrace? stackTrace});
}

/// @nodoc
class _$FsErrorCopyWithImpl<$Res, $Val extends FsError>
    implements $FsErrorCopyWith<$Res> {
  _$FsErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FsError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FsErrorIOImplCopyWith<$Res>
    implements $FsErrorCopyWith<$Res> {
  factory _$$FsErrorIOImplCopyWith(
          _$FsErrorIOImpl value, $Res Function(_$FsErrorIOImpl) then) =
      __$$FsErrorIOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ExceptionConverter() Exception? exception,
      @StackTraceConverter() StackTrace? stackTrace});
}

/// @nodoc
class __$$FsErrorIOImplCopyWithImpl<$Res>
    extends _$FsErrorCopyWithImpl<$Res, _$FsErrorIOImpl>
    implements _$$FsErrorIOImplCopyWith<$Res> {
  __$$FsErrorIOImplCopyWithImpl(
      _$FsErrorIOImpl _value, $Res Function(_$FsErrorIOImpl) _then)
      : super(_value, _then);

  /// Create a copy of FsError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$FsErrorIOImpl(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FsErrorIOImpl with DiagnosticableTreeMixin implements FsErrorIO {
  const _$FsErrorIOImpl(
      {@ExceptionConverter() this.exception,
      @StackTraceConverter() this.stackTrace});

  factory _$FsErrorIOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FsErrorIOImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsErrorIOImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  /// Create a copy of FsError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FsErrorIOImplCopyWith<_$FsErrorIOImpl> get copyWith =>
      __$$FsErrorIOImplCopyWithImpl<_$FsErrorIOImpl>(this, _$identity);

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
    TResult? Function(@ExceptionConverter() Exception? exception,
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
    TResult? Function(FsErrorIO value)? io,
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
    return _$$FsErrorIOImplToJson(
      this,
    );
  }
}

abstract class FsErrorIO implements FsError {
  const factory FsErrorIO(
      {@ExceptionConverter() final Exception? exception,
      @StackTraceConverter() final StackTrace? stackTrace}) = _$FsErrorIOImpl;

  factory FsErrorIO.fromJson(Map<String, dynamic> json) =
      _$FsErrorIOImpl.fromJson;

  @override
  @ExceptionConverter()
  Exception? get exception;
  @override
  @StackTraceConverter()
  StackTrace? get stackTrace;

  /// Create a copy of FsError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FsErrorIOImplCopyWith<_$FsErrorIOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
