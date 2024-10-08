// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StorageResult<T> {}

/// @nodoc
abstract class $StorageResultCopyWith<T, $Res> {
  factory $StorageResultCopyWith(
          StorageResult<T> value, $Res Function(StorageResult<T>) then) =
      _$StorageResultCopyWithImpl<T, $Res, StorageResult<T>>;
}

/// @nodoc
class _$StorageResultCopyWithImpl<T, $Res, $Val extends StorageResult<T>>
    implements $StorageResultCopyWith<T, $Res> {
  _$StorageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorageResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StorageResultValueImplCopyWith<T, $Res> {
  factory _$$StorageResultValueImplCopyWith(_$StorageResultValueImpl<T> value,
          $Res Function(_$StorageResultValueImpl<T>) then) =
      __$$StorageResultValueImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$StorageResultValueImplCopyWithImpl<T, $Res>
    extends _$StorageResultCopyWithImpl<T, $Res, _$StorageResultValueImpl<T>>
    implements _$$StorageResultValueImplCopyWith<T, $Res> {
  __$$StorageResultValueImplCopyWithImpl(_$StorageResultValueImpl<T> _value,
      $Res Function(_$StorageResultValueImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of StorageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StorageResultValueImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$StorageResultValueImpl<T>
    with DiagnosticableTreeMixin
    implements StorageResultValue<T> {
  const _$StorageResultValueImpl(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StorageResult<$T>(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StorageResult<$T>'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageResultValueImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of StorageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageResultValueImplCopyWith<T, _$StorageResultValueImpl<T>>
      get copyWith => __$$StorageResultValueImplCopyWithImpl<T,
          _$StorageResultValueImpl<T>>(this, _$identity);
}

abstract class StorageResultValue<T> implements StorageResult<T> {
  const factory StorageResultValue(final T value) = _$StorageResultValueImpl<T>;

  T get value;

  /// Create a copy of StorageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageResultValueImplCopyWith<T, _$StorageResultValueImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageResultErrorImplCopyWith<T, $Res> {
  factory _$$StorageResultErrorImplCopyWith(_$StorageResultErrorImpl<T> value,
          $Res Function(_$StorageResultErrorImpl<T>) then) =
      __$$StorageResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$StorageResultErrorImplCopyWithImpl<T, $Res>
    extends _$StorageResultCopyWithImpl<T, $Res, _$StorageResultErrorImpl<T>>
    implements _$$StorageResultErrorImplCopyWith<T, $Res> {
  __$$StorageResultErrorImplCopyWithImpl(_$StorageResultErrorImpl<T> _value,
      $Res Function(_$StorageResultErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of StorageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StorageResultErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  /// Create a copy of StorageResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$StorageResultErrorImpl<T>
    with DiagnosticableTreeMixin
    implements StorageResultError<T> {
  const _$StorageResultErrorImpl(this.error);

  @override
  final StorageError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StorageResult<$T>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StorageResult<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageResultErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of StorageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageResultErrorImplCopyWith<T, _$StorageResultErrorImpl<T>>
      get copyWith => __$$StorageResultErrorImplCopyWithImpl<T,
          _$StorageResultErrorImpl<T>>(this, _$identity);
}

abstract class StorageResultError<T> implements StorageResult<T> {
  const factory StorageResultError(final StorageError error) =
      _$StorageResultErrorImpl<T>;

  StorageError get error;

  /// Create a copy of StorageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageResultErrorImplCopyWith<T, _$StorageResultErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SecStorageResult<T> {}

/// @nodoc
abstract class $SecStorageResultCopyWith<T, $Res> {
  factory $SecStorageResultCopyWith(
          SecStorageResult<T> value, $Res Function(SecStorageResult<T>) then) =
      _$SecStorageResultCopyWithImpl<T, $Res, SecStorageResult<T>>;
}

/// @nodoc
class _$SecStorageResultCopyWithImpl<T, $Res, $Val extends SecStorageResult<T>>
    implements $SecStorageResultCopyWith<T, $Res> {
  _$SecStorageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecStorageResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SecStorageResultSuccessImplCopyWith<T, $Res> {
  factory _$$SecStorageResultSuccessImplCopyWith(
          _$SecStorageResultSuccessImpl<T> value,
          $Res Function(_$SecStorageResultSuccessImpl<T>) then) =
      __$$SecStorageResultSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$SecStorageResultSuccessImplCopyWithImpl<T, $Res>
    extends _$SecStorageResultCopyWithImpl<T, $Res,
        _$SecStorageResultSuccessImpl<T>>
    implements _$$SecStorageResultSuccessImplCopyWith<T, $Res> {
  __$$SecStorageResultSuccessImplCopyWithImpl(
      _$SecStorageResultSuccessImpl<T> _value,
      $Res Function(_$SecStorageResultSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SecStorageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SecStorageResultSuccessImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SecStorageResultSuccessImpl<T>
    with DiagnosticableTreeMixin
    implements SecStorageResultSuccess<T> {
  const _$SecStorageResultSuccessImpl(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageResult<$T>(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecStorageResult<$T>'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecStorageResultSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of SecStorageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecStorageResultSuccessImplCopyWith<T, _$SecStorageResultSuccessImpl<T>>
      get copyWith => __$$SecStorageResultSuccessImplCopyWithImpl<T,
          _$SecStorageResultSuccessImpl<T>>(this, _$identity);
}

abstract class SecStorageResultSuccess<T> implements SecStorageResult<T> {
  const factory SecStorageResultSuccess(final T value) =
      _$SecStorageResultSuccessImpl<T>;

  T get value;

  /// Create a copy of SecStorageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecStorageResultSuccessImplCopyWith<T, _$SecStorageResultSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SecStorageResultErrorImplCopyWith<T, $Res> {
  factory _$$SecStorageResultErrorImplCopyWith(
          _$SecStorageResultErrorImpl<T> value,
          $Res Function(_$SecStorageResultErrorImpl<T>) then) =
      __$$SecStorageResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SecStorageError error});

  $SecStorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SecStorageResultErrorImplCopyWithImpl<T, $Res>
    extends _$SecStorageResultCopyWithImpl<T, $Res,
        _$SecStorageResultErrorImpl<T>>
    implements _$$SecStorageResultErrorImplCopyWith<T, $Res> {
  __$$SecStorageResultErrorImplCopyWithImpl(
      _$SecStorageResultErrorImpl<T> _value,
      $Res Function(_$SecStorageResultErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SecStorageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SecStorageResultErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SecStorageError,
    ));
  }

  /// Create a copy of SecStorageResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecStorageErrorCopyWith<$Res> get error {
    return $SecStorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$SecStorageResultErrorImpl<T>
    with DiagnosticableTreeMixin
    implements SecStorageResultError<T> {
  const _$SecStorageResultErrorImpl(this.error);

  @override
  final SecStorageError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageResult<$T>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecStorageResult<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecStorageResultErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SecStorageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecStorageResultErrorImplCopyWith<T, _$SecStorageResultErrorImpl<T>>
      get copyWith => __$$SecStorageResultErrorImplCopyWithImpl<T,
          _$SecStorageResultErrorImpl<T>>(this, _$identity);
}

abstract class SecStorageResultError<T> implements SecStorageResult<T> {
  const factory SecStorageResultError(final SecStorageError error) =
      _$SecStorageResultErrorImpl<T>;

  SecStorageError get error;

  /// Create a copy of SecStorageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecStorageResultErrorImplCopyWith<T, _$SecStorageResultErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StorageError {}

/// @nodoc
abstract class $StorageErrorCopyWith<$Res> {
  factory $StorageErrorCopyWith(
          StorageError value, $Res Function(StorageError) then) =
      _$StorageErrorCopyWithImpl<$Res, StorageError>;
}

/// @nodoc
class _$StorageErrorCopyWithImpl<$Res, $Val extends StorageError>
    implements $StorageErrorCopyWith<$Res> {
  _$StorageErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorageError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StorageErrorDatabaseImplCopyWith<$Res> {
  factory _$$StorageErrorDatabaseImplCopyWith(_$StorageErrorDatabaseImpl value,
          $Res Function(_$StorageErrorDatabaseImpl) then) =
      __$$StorageErrorDatabaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$StorageErrorDatabaseImplCopyWithImpl<$Res>
    extends _$StorageErrorCopyWithImpl<$Res, _$StorageErrorDatabaseImpl>
    implements _$$StorageErrorDatabaseImplCopyWith<$Res> {
  __$$StorageErrorDatabaseImplCopyWithImpl(_$StorageErrorDatabaseImpl _value,
      $Res Function(_$StorageErrorDatabaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$StorageErrorDatabaseImpl(
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

class _$StorageErrorDatabaseImpl
    with DiagnosticableTreeMixin
    implements StorageErrorDatabase {
  const _$StorageErrorDatabaseImpl({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StorageError.database(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StorageError.database'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageErrorDatabaseImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  /// Create a copy of StorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageErrorDatabaseImplCopyWith<_$StorageErrorDatabaseImpl>
      get copyWith =>
          __$$StorageErrorDatabaseImplCopyWithImpl<_$StorageErrorDatabaseImpl>(
              this, _$identity);
}

abstract class StorageErrorDatabase implements StorageError {
  const factory StorageErrorDatabase(
      {final Exception? exception,
      final StackTrace? stackTrace}) = _$StorageErrorDatabaseImpl;

  Exception? get exception;
  StackTrace? get stackTrace;

  /// Create a copy of StorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageErrorDatabaseImplCopyWith<_$StorageErrorDatabaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageErrorFsImplCopyWith<$Res> {
  factory _$$StorageErrorFsImplCopyWith(_$StorageErrorFsImpl value,
          $Res Function(_$StorageErrorFsImpl) then) =
      __$$StorageErrorFsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$StorageErrorFsImplCopyWithImpl<$Res>
    extends _$StorageErrorCopyWithImpl<$Res, _$StorageErrorFsImpl>
    implements _$$StorageErrorFsImplCopyWith<$Res> {
  __$$StorageErrorFsImplCopyWithImpl(
      _$StorageErrorFsImpl _value, $Res Function(_$StorageErrorFsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StorageErrorFsImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  /// Create a copy of StorageError
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

class _$StorageErrorFsImpl
    with DiagnosticableTreeMixin
    implements StorageErrorFs {
  const _$StorageErrorFsImpl({required this.error});

  @override
  final FsError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StorageError.fs(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StorageError.fs'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageErrorFsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of StorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageErrorFsImplCopyWith<_$StorageErrorFsImpl> get copyWith =>
      __$$StorageErrorFsImplCopyWithImpl<_$StorageErrorFsImpl>(
          this, _$identity);
}

abstract class StorageErrorFs implements StorageError {
  const factory StorageErrorFs({required final FsError error}) =
      _$StorageErrorFsImpl;

  FsError get error;

  /// Create a copy of StorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageErrorFsImplCopyWith<_$StorageErrorFsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SecStorageError {}

/// @nodoc
abstract class $SecStorageErrorCopyWith<$Res> {
  factory $SecStorageErrorCopyWith(
          SecStorageError value, $Res Function(SecStorageError) then) =
      _$SecStorageErrorCopyWithImpl<$Res, SecStorageError>;
}

/// @nodoc
class _$SecStorageErrorCopyWithImpl<$Res, $Val extends SecStorageError>
    implements $SecStorageErrorCopyWith<$Res> {
  _$SecStorageErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SecStorageErrorDatabaseImplCopyWith<$Res> {
  factory _$$SecStorageErrorDatabaseImplCopyWith(
          _$SecStorageErrorDatabaseImpl value,
          $Res Function(_$SecStorageErrorDatabaseImpl) then) =
      __$$SecStorageErrorDatabaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$SecStorageErrorDatabaseImplCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res, _$SecStorageErrorDatabaseImpl>
    implements _$$SecStorageErrorDatabaseImplCopyWith<$Res> {
  __$$SecStorageErrorDatabaseImplCopyWithImpl(
      _$SecStorageErrorDatabaseImpl _value,
      $Res Function(_$SecStorageErrorDatabaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$SecStorageErrorDatabaseImpl(
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

class _$SecStorageErrorDatabaseImpl
    with DiagnosticableTreeMixin
    implements SecStorageErrorDatabase {
  const _$SecStorageErrorDatabaseImpl({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageError.database(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecStorageError.database'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecStorageErrorDatabaseImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecStorageErrorDatabaseImplCopyWith<_$SecStorageErrorDatabaseImpl>
      get copyWith => __$$SecStorageErrorDatabaseImplCopyWithImpl<
          _$SecStorageErrorDatabaseImpl>(this, _$identity);
}

abstract class SecStorageErrorDatabase implements SecStorageError {
  const factory SecStorageErrorDatabase(
      {final Exception? exception,
      final StackTrace? stackTrace}) = _$SecStorageErrorDatabaseImpl;

  Exception? get exception;
  StackTrace? get stackTrace;

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecStorageErrorDatabaseImplCopyWith<_$SecStorageErrorDatabaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SecStorageErrorFsImplCopyWith<$Res> {
  factory _$$SecStorageErrorFsImplCopyWith(_$SecStorageErrorFsImpl value,
          $Res Function(_$SecStorageErrorFsImpl) then) =
      __$$SecStorageErrorFsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SecStorageErrorFsImplCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res, _$SecStorageErrorFsImpl>
    implements _$$SecStorageErrorFsImplCopyWith<$Res> {
  __$$SecStorageErrorFsImplCopyWithImpl(_$SecStorageErrorFsImpl _value,
      $Res Function(_$SecStorageErrorFsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SecStorageErrorFsImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  /// Create a copy of SecStorageError
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

class _$SecStorageErrorFsImpl
    with DiagnosticableTreeMixin
    implements SecStorageErrorFs {
  const _$SecStorageErrorFsImpl({required this.error});

  @override
  final FsError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageError.fs(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecStorageError.fs'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecStorageErrorFsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecStorageErrorFsImplCopyWith<_$SecStorageErrorFsImpl> get copyWith =>
      __$$SecStorageErrorFsImplCopyWithImpl<_$SecStorageErrorFsImpl>(
          this, _$identity);
}

abstract class SecStorageErrorFs implements SecStorageError {
  const factory SecStorageErrorFs({required final FsError error}) =
      _$SecStorageErrorFsImpl;

  FsError get error;

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecStorageErrorFsImplCopyWith<_$SecStorageErrorFsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SecStorageErrorNoKeyImplCopyWith<$Res> {
  factory _$$SecStorageErrorNoKeyImplCopyWith(_$SecStorageErrorNoKeyImpl value,
          $Res Function(_$SecStorageErrorNoKeyImpl) then) =
      __$$SecStorageErrorNoKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SecStorageErrorNoKeyImplCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res, _$SecStorageErrorNoKeyImpl>
    implements _$$SecStorageErrorNoKeyImplCopyWith<$Res> {
  __$$SecStorageErrorNoKeyImplCopyWithImpl(_$SecStorageErrorNoKeyImpl _value,
      $Res Function(_$SecStorageErrorNoKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SecStorageErrorNoKeyImpl
    with DiagnosticableTreeMixin
    implements SecStorageErrorNoKey {
  const _$SecStorageErrorNoKeyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageError.noKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SecStorageError.noKey'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecStorageErrorNoKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SecStorageErrorNoKey implements SecStorageError {
  const factory SecStorageErrorNoKey() = _$SecStorageErrorNoKeyImpl;
}

/// @nodoc
abstract class _$$SecStorageErrorEncryptImplCopyWith<$Res> {
  factory _$$SecStorageErrorEncryptImplCopyWith(
          _$SecStorageErrorEncryptImpl value,
          $Res Function(_$SecStorageErrorEncryptImpl) then) =
      __$$SecStorageErrorEncryptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EncryptError error});

  $EncryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SecStorageErrorEncryptImplCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res, _$SecStorageErrorEncryptImpl>
    implements _$$SecStorageErrorEncryptImplCopyWith<$Res> {
  __$$SecStorageErrorEncryptImplCopyWithImpl(
      _$SecStorageErrorEncryptImpl _value,
      $Res Function(_$SecStorageErrorEncryptImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SecStorageErrorEncryptImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as EncryptError,
    ));
  }

  /// Create a copy of SecStorageError
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

class _$SecStorageErrorEncryptImpl
    with DiagnosticableTreeMixin
    implements SecStorageErrorEncrypt {
  const _$SecStorageErrorEncryptImpl({required this.error});

  @override
  final EncryptError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageError.encrypt(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecStorageError.encrypt'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecStorageErrorEncryptImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecStorageErrorEncryptImplCopyWith<_$SecStorageErrorEncryptImpl>
      get copyWith => __$$SecStorageErrorEncryptImplCopyWithImpl<
          _$SecStorageErrorEncryptImpl>(this, _$identity);
}

abstract class SecStorageErrorEncrypt implements SecStorageError {
  const factory SecStorageErrorEncrypt({required final EncryptError error}) =
      _$SecStorageErrorEncryptImpl;

  EncryptError get error;

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecStorageErrorEncryptImplCopyWith<_$SecStorageErrorEncryptImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SecStorageErrorDecryptImplCopyWith<$Res> {
  factory _$$SecStorageErrorDecryptImplCopyWith(
          _$SecStorageErrorDecryptImpl value,
          $Res Function(_$SecStorageErrorDecryptImpl) then) =
      __$$SecStorageErrorDecryptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DecryptError error});

  $DecryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SecStorageErrorDecryptImplCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res, _$SecStorageErrorDecryptImpl>
    implements _$$SecStorageErrorDecryptImplCopyWith<$Res> {
  __$$SecStorageErrorDecryptImplCopyWithImpl(
      _$SecStorageErrorDecryptImpl _value,
      $Res Function(_$SecStorageErrorDecryptImpl) _then)
      : super(_value, _then);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SecStorageErrorDecryptImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DecryptError,
    ));
  }

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DecryptErrorCopyWith<$Res> get error {
    return $DecryptErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$SecStorageErrorDecryptImpl
    with DiagnosticableTreeMixin
    implements SecStorageErrorDecrypt {
  const _$SecStorageErrorDecryptImpl({required this.error});

  @override
  final DecryptError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageError.decrypt(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecStorageError.decrypt'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecStorageErrorDecryptImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecStorageErrorDecryptImplCopyWith<_$SecStorageErrorDecryptImpl>
      get copyWith => __$$SecStorageErrorDecryptImplCopyWithImpl<
          _$SecStorageErrorDecryptImpl>(this, _$identity);
}

abstract class SecStorageErrorDecrypt implements SecStorageError {
  const factory SecStorageErrorDecrypt({required final DecryptError error}) =
      _$SecStorageErrorDecryptImpl;

  DecryptError get error;

  /// Create a copy of SecStorageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecStorageErrorDecryptImplCopyWith<_$SecStorageErrorDecryptImpl>
      get copyWith => throw _privateConstructorUsedError;
}
