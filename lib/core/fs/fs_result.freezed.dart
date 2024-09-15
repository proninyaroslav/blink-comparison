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
mixin _$FsResult<T> {}

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
abstract class _$$FsResultSuccessImplCopyWith<T, $Res> {
  factory _$$FsResultSuccessImplCopyWith(_$FsResultSuccessImpl<T> value,
          $Res Function(_$FsResultSuccessImpl<T>) then) =
      __$$FsResultSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$FsResultSuccessImplCopyWithImpl<T, $Res>
    extends _$FsResultCopyWithImpl<T, $Res, _$FsResultSuccessImpl<T>>
    implements _$$FsResultSuccessImplCopyWith<T, $Res> {
  __$$FsResultSuccessImplCopyWithImpl(_$FsResultSuccessImpl<T> _value,
      $Res Function(_$FsResultSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$FsResultSuccessImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$FsResultSuccessImpl<T>
    with DiagnosticableTreeMixin
    implements FsResultSuccess<T> {
  const _$FsResultSuccessImpl(this.value);

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
            other is _$FsResultSuccessImpl<T> &&
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
  _$$FsResultSuccessImplCopyWith<T, _$FsResultSuccessImpl<T>> get copyWith =>
      __$$FsResultSuccessImplCopyWithImpl<T, _$FsResultSuccessImpl<T>>(
          this, _$identity);
}

abstract class FsResultSuccess<T> implements FsResult<T> {
  const factory FsResultSuccess(final T value) = _$FsResultSuccessImpl<T>;

  T get value;

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FsResultSuccessImplCopyWith<T, _$FsResultSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FsResultErrorImplCopyWith<T, $Res> {
  factory _$$FsResultErrorImplCopyWith(_$FsResultErrorImpl<T> value,
          $Res Function(_$FsResultErrorImpl<T>) then) =
      __$$FsResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
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
    Object? error = null,
  }) {
    return _then(_$FsResultErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  /// Create a copy of FsResult
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

class _$FsResultErrorImpl<T>
    with DiagnosticableTreeMixin
    implements FsResultError<T> {
  const _$FsResultErrorImpl(this.error);

  @override
  final FsError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FsResult<$T>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FsResult<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FsResultErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FsResultErrorImplCopyWith<T, _$FsResultErrorImpl<T>> get copyWith =>
      __$$FsResultErrorImplCopyWithImpl<T, _$FsResultErrorImpl<T>>(
          this, _$identity);
}

abstract class FsResultError<T> implements FsResult<T> {
  const factory FsResultError(final FsError error) = _$FsResultErrorImpl<T>;

  FsError get error;

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
