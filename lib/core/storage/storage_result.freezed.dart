// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'storage_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StorageResultTearOff {
  const _$StorageResultTearOff();

  StorageResultValue<T> call<T>(T value) {
    return StorageResultValue<T>(
      value,
    );
  }

  StorageResultError<T> error<T>(StorageError value) {
    return StorageResultError<T>(
      value,
    );
  }
}

/// @nodoc
const $StorageResult = _$StorageResultTearOff();

/// @nodoc
mixin _$StorageResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(StorageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value) $default, {
    required TResult Function(StorageResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageResultCopyWith<T, $Res> {
  factory $StorageResultCopyWith(
          StorageResult<T> value, $Res Function(StorageResult<T>) then) =
      _$StorageResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$StorageResultCopyWithImpl<T, $Res>
    implements $StorageResultCopyWith<T, $Res> {
  _$StorageResultCopyWithImpl(this._value, this._then);

  final StorageResult<T> _value;
  // ignore: unused_field
  final $Res Function(StorageResult<T>) _then;
}

/// @nodoc
abstract class $StorageResultValueCopyWith<T, $Res> {
  factory $StorageResultValueCopyWith(StorageResultValue<T> value,
          $Res Function(StorageResultValue<T>) then) =
      _$StorageResultValueCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$StorageResultValueCopyWithImpl<T, $Res>
    extends _$StorageResultCopyWithImpl<T, $Res>
    implements $StorageResultValueCopyWith<T, $Res> {
  _$StorageResultValueCopyWithImpl(
      StorageResultValue<T> _value, $Res Function(StorageResultValue<T>) _then)
      : super(_value, (v) => _then(v as StorageResultValue<T>));

  @override
  StorageResultValue<T> get _value => super._value as StorageResultValue<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(StorageResultValue<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$StorageResultValue<T>
    with DiagnosticableTreeMixin
    implements StorageResultValue<T> {
  const _$StorageResultValue(this.value);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorageResultValue<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $StorageResultValueCopyWith<T, StorageResultValue<T>> get copyWith =>
      _$StorageResultValueCopyWithImpl<T, StorageResultValue<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(StorageError value) error,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
  }) {
    return $default?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
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
    TResult Function(StorageResultValue<T> value) $default, {
    required TResult Function(StorageResultError<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class StorageResultValue<T> implements StorageResult<T> {
  const factory StorageResultValue(T value) = _$StorageResultValue<T>;

  T get value;
  @JsonKey(ignore: true)
  $StorageResultValueCopyWith<T, StorageResultValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageResultErrorCopyWith<T, $Res> {
  factory $StorageResultErrorCopyWith(StorageResultError<T> value,
          $Res Function(StorageResultError<T>) then) =
      _$StorageResultErrorCopyWithImpl<T, $Res>;
  $Res call({StorageError value});

  $StorageErrorCopyWith<$Res> get value;
}

/// @nodoc
class _$StorageResultErrorCopyWithImpl<T, $Res>
    extends _$StorageResultCopyWithImpl<T, $Res>
    implements $StorageResultErrorCopyWith<T, $Res> {
  _$StorageResultErrorCopyWithImpl(
      StorageResultError<T> _value, $Res Function(StorageResultError<T>) _then)
      : super(_value, (v) => _then(v as StorageResultError<T>));

  @override
  StorageResultError<T> get _value => super._value as StorageResultError<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(StorageResultError<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get value {
    return $StorageErrorCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$StorageResultError<T>
    with DiagnosticableTreeMixin
    implements StorageResultError<T> {
  const _$StorageResultError(this.value);

  @override
  final StorageError value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StorageResult<$T>.error(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StorageResult<$T>.error'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorageResultError<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $StorageResultErrorCopyWith<T, StorageResultError<T>> get copyWith =>
      _$StorageResultErrorCopyWithImpl<T, StorageResultError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(StorageError value) error,
  }) {
    return error(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
  }) {
    return error?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(StorageError value)? error,
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
    TResult Function(StorageResultValue<T> value) $default, {
    required TResult Function(StorageResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StorageResultValue<T> value)? $default, {
    TResult Function(StorageResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StorageResultError<T> implements StorageResult<T> {
  const factory StorageResultError(StorageError value) =
      _$StorageResultError<T>;

  StorageError get value;
  @JsonKey(ignore: true)
  $StorageResultErrorCopyWith<T, StorageResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SecStorageResultTearOff {
  const _$SecStorageResultTearOff();

  SecStorageResultValue<T> call<T>(T value) {
    return SecStorageResultValue<T>(
      value,
    );
  }

  SecStorageResultError<T> error<T>(SecStorageError value) {
    return SecStorageResultError<T>(
      value,
    );
  }
}

/// @nodoc
const $SecStorageResult = _$SecStorageResultTearOff();

/// @nodoc
mixin _$SecStorageResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(SecStorageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(SecStorageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(SecStorageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SecStorageResultValue<T> value) $default, {
    required TResult Function(SecStorageResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SecStorageResultValue<T> value)? $default, {
    TResult Function(SecStorageResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SecStorageResultValue<T> value)? $default, {
    TResult Function(SecStorageResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecStorageResultCopyWith<T, $Res> {
  factory $SecStorageResultCopyWith(
          SecStorageResult<T> value, $Res Function(SecStorageResult<T>) then) =
      _$SecStorageResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SecStorageResultCopyWithImpl<T, $Res>
    implements $SecStorageResultCopyWith<T, $Res> {
  _$SecStorageResultCopyWithImpl(this._value, this._then);

  final SecStorageResult<T> _value;
  // ignore: unused_field
  final $Res Function(SecStorageResult<T>) _then;
}

/// @nodoc
abstract class $SecStorageResultValueCopyWith<T, $Res> {
  factory $SecStorageResultValueCopyWith(SecStorageResultValue<T> value,
          $Res Function(SecStorageResultValue<T>) then) =
      _$SecStorageResultValueCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$SecStorageResultValueCopyWithImpl<T, $Res>
    extends _$SecStorageResultCopyWithImpl<T, $Res>
    implements $SecStorageResultValueCopyWith<T, $Res> {
  _$SecStorageResultValueCopyWithImpl(SecStorageResultValue<T> _value,
      $Res Function(SecStorageResultValue<T>) _then)
      : super(_value, (v) => _then(v as SecStorageResultValue<T>));

  @override
  SecStorageResultValue<T> get _value =>
      super._value as SecStorageResultValue<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SecStorageResultValue<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SecStorageResultValue<T>
    with DiagnosticableTreeMixin
    implements SecStorageResultValue<T> {
  const _$SecStorageResultValue(this.value);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecStorageResultValue<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SecStorageResultValueCopyWith<T, SecStorageResultValue<T>> get copyWith =>
      _$SecStorageResultValueCopyWithImpl<T, SecStorageResultValue<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(SecStorageError value) error,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(SecStorageError value)? error,
  }) {
    return $default?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(SecStorageError value)? error,
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
    TResult Function(SecStorageResultValue<T> value) $default, {
    required TResult Function(SecStorageResultError<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SecStorageResultValue<T> value)? $default, {
    TResult Function(SecStorageResultError<T> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SecStorageResultValue<T> value)? $default, {
    TResult Function(SecStorageResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SecStorageResultValue<T> implements SecStorageResult<T> {
  const factory SecStorageResultValue(T value) = _$SecStorageResultValue<T>;

  T get value;
  @JsonKey(ignore: true)
  $SecStorageResultValueCopyWith<T, SecStorageResultValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecStorageResultErrorCopyWith<T, $Res> {
  factory $SecStorageResultErrorCopyWith(SecStorageResultError<T> value,
          $Res Function(SecStorageResultError<T>) then) =
      _$SecStorageResultErrorCopyWithImpl<T, $Res>;
  $Res call({SecStorageError value});

  $SecStorageErrorCopyWith<$Res> get value;
}

/// @nodoc
class _$SecStorageResultErrorCopyWithImpl<T, $Res>
    extends _$SecStorageResultCopyWithImpl<T, $Res>
    implements $SecStorageResultErrorCopyWith<T, $Res> {
  _$SecStorageResultErrorCopyWithImpl(SecStorageResultError<T> _value,
      $Res Function(SecStorageResultError<T>) _then)
      : super(_value, (v) => _then(v as SecStorageResultError<T>));

  @override
  SecStorageResultError<T> get _value =>
      super._value as SecStorageResultError<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SecStorageResultError<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SecStorageError,
    ));
  }

  @override
  $SecStorageErrorCopyWith<$Res> get value {
    return $SecStorageErrorCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$SecStorageResultError<T>
    with DiagnosticableTreeMixin
    implements SecStorageResultError<T> {
  const _$SecStorageResultError(this.value);

  @override
  final SecStorageError value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageResult<$T>.error(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecStorageResult<$T>.error'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecStorageResultError<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SecStorageResultErrorCopyWith<T, SecStorageResultError<T>> get copyWith =>
      _$SecStorageResultErrorCopyWithImpl<T, SecStorageResultError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function(SecStorageError value) error,
  }) {
    return error(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(SecStorageError value)? error,
  }) {
    return error?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function(SecStorageError value)? error,
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
    TResult Function(SecStorageResultValue<T> value) $default, {
    required TResult Function(SecStorageResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SecStorageResultValue<T> value)? $default, {
    TResult Function(SecStorageResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SecStorageResultValue<T> value)? $default, {
    TResult Function(SecStorageResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SecStorageResultError<T> implements SecStorageResult<T> {
  const factory SecStorageResultError(SecStorageError value) =
      _$SecStorageResultError<T>;

  SecStorageError get value;
  @JsonKey(ignore: true)
  $SecStorageResultErrorCopyWith<T, SecStorageResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StorageErrorTearOff {
  const _$StorageErrorTearOff();

  StorageErrorDatabase database(
      {Exception? exception, StackTrace? stackTrace}) {
    return StorageErrorDatabase(
      exception: exception,
      stackTrace: stackTrace,
    );
  }

  StorageErrorFs fs({required FsError error}) {
    return StorageErrorFs(
      error: error,
    );
  }
}

/// @nodoc
const $StorageError = _$StorageErrorTearOff();

/// @nodoc
mixin _$StorageError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageErrorDatabase value) database,
    required TResult Function(StorageErrorFs value) fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StorageErrorDatabase value)? database,
    TResult Function(StorageErrorFs value)? fs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageErrorDatabase value)? database,
    TResult Function(StorageErrorFs value)? fs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageErrorCopyWith<$Res> {
  factory $StorageErrorCopyWith(
          StorageError value, $Res Function(StorageError) then) =
      _$StorageErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$StorageErrorCopyWithImpl<$Res> implements $StorageErrorCopyWith<$Res> {
  _$StorageErrorCopyWithImpl(this._value, this._then);

  final StorageError _value;
  // ignore: unused_field
  final $Res Function(StorageError) _then;
}

/// @nodoc
abstract class $StorageErrorDatabaseCopyWith<$Res> {
  factory $StorageErrorDatabaseCopyWith(StorageErrorDatabase value,
          $Res Function(StorageErrorDatabase) then) =
      _$StorageErrorDatabaseCopyWithImpl<$Res>;
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$StorageErrorDatabaseCopyWithImpl<$Res>
    extends _$StorageErrorCopyWithImpl<$Res>
    implements $StorageErrorDatabaseCopyWith<$Res> {
  _$StorageErrorDatabaseCopyWithImpl(
      StorageErrorDatabase _value, $Res Function(StorageErrorDatabase) _then)
      : super(_value, (v) => _then(v as StorageErrorDatabase));

  @override
  StorageErrorDatabase get _value => super._value as StorageErrorDatabase;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(StorageErrorDatabase(
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

class _$StorageErrorDatabase
    with DiagnosticableTreeMixin
    implements StorageErrorDatabase {
  const _$StorageErrorDatabase({this.exception, this.stackTrace});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorageErrorDatabase &&
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
  $StorageErrorDatabaseCopyWith<StorageErrorDatabase> get copyWith =>
      _$StorageErrorDatabaseCopyWithImpl<StorageErrorDatabase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
  }) {
    return database(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
  }) {
    return database?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageErrorDatabase value) database,
    required TResult Function(StorageErrorFs value) fs,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StorageErrorDatabase value)? database,
    TResult Function(StorageErrorFs value)? fs,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageErrorDatabase value)? database,
    TResult Function(StorageErrorFs value)? fs,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class StorageErrorDatabase implements StorageError {
  const factory StorageErrorDatabase(
      {Exception? exception, StackTrace? stackTrace}) = _$StorageErrorDatabase;

  Exception? get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $StorageErrorDatabaseCopyWith<StorageErrorDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageErrorFsCopyWith<$Res> {
  factory $StorageErrorFsCopyWith(
          StorageErrorFs value, $Res Function(StorageErrorFs) then) =
      _$StorageErrorFsCopyWithImpl<$Res>;
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$StorageErrorFsCopyWithImpl<$Res>
    extends _$StorageErrorCopyWithImpl<$Res>
    implements $StorageErrorFsCopyWith<$Res> {
  _$StorageErrorFsCopyWithImpl(
      StorageErrorFs _value, $Res Function(StorageErrorFs) _then)
      : super(_value, (v) => _then(v as StorageErrorFs));

  @override
  StorageErrorFs get _value => super._value as StorageErrorFs;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(StorageErrorFs(
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

class _$StorageErrorFs with DiagnosticableTreeMixin implements StorageErrorFs {
  const _$StorageErrorFs({required this.error});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorageErrorFs &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $StorageErrorFsCopyWith<StorageErrorFs> get copyWith =>
      _$StorageErrorFsCopyWithImpl<StorageErrorFs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
  }) {
    return fs(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
  }) {
    return fs?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
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
    required TResult Function(StorageErrorDatabase value) database,
    required TResult Function(StorageErrorFs value) fs,
  }) {
    return fs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StorageErrorDatabase value)? database,
    TResult Function(StorageErrorFs value)? fs,
  }) {
    return fs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageErrorDatabase value)? database,
    TResult Function(StorageErrorFs value)? fs,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(this);
    }
    return orElse();
  }
}

abstract class StorageErrorFs implements StorageError {
  const factory StorageErrorFs({required FsError error}) = _$StorageErrorFs;

  FsError get error;
  @JsonKey(ignore: true)
  $StorageErrorFsCopyWith<StorageErrorFs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SecStorageErrorTearOff {
  const _$SecStorageErrorTearOff();

  SecStorageErrorDatabase database(
      {Exception? exception, StackTrace? stackTrace}) {
    return SecStorageErrorDatabase(
      exception: exception,
      stackTrace: stackTrace,
    );
  }

  SecStorageErrorFs fs({required FsError error}) {
    return SecStorageErrorFs(
      error: error,
    );
  }

  SecStorageErrorNoKey noKey() {
    return const SecStorageErrorNoKey();
  }

  SecStorageErrorEncrypt encrypt({required EncryptError error}) {
    return SecStorageErrorEncrypt(
      error: error,
    );
  }

  SecStorageErrorDecrypt decrypt({required DecryptError error}) {
    return SecStorageErrorDecrypt(
      error: error,
    );
  }
}

/// @nodoc
const $SecStorageError = _$SecStorageErrorTearOff();

/// @nodoc
mixin _$SecStorageError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noKey,
    required TResult Function(EncryptError error) encrypt,
    required TResult Function(DecryptError error) decrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecStorageErrorDatabase value) database,
    required TResult Function(SecStorageErrorFs value) fs,
    required TResult Function(SecStorageErrorNoKey value) noKey,
    required TResult Function(SecStorageErrorEncrypt value) encrypt,
    required TResult Function(SecStorageErrorDecrypt value) decrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecStorageErrorCopyWith<$Res> {
  factory $SecStorageErrorCopyWith(
          SecStorageError value, $Res Function(SecStorageError) then) =
      _$SecStorageErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecStorageErrorCopyWithImpl<$Res>
    implements $SecStorageErrorCopyWith<$Res> {
  _$SecStorageErrorCopyWithImpl(this._value, this._then);

  final SecStorageError _value;
  // ignore: unused_field
  final $Res Function(SecStorageError) _then;
}

/// @nodoc
abstract class $SecStorageErrorDatabaseCopyWith<$Res> {
  factory $SecStorageErrorDatabaseCopyWith(SecStorageErrorDatabase value,
          $Res Function(SecStorageErrorDatabase) then) =
      _$SecStorageErrorDatabaseCopyWithImpl<$Res>;
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$SecStorageErrorDatabaseCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res>
    implements $SecStorageErrorDatabaseCopyWith<$Res> {
  _$SecStorageErrorDatabaseCopyWithImpl(SecStorageErrorDatabase _value,
      $Res Function(SecStorageErrorDatabase) _then)
      : super(_value, (v) => _then(v as SecStorageErrorDatabase));

  @override
  SecStorageErrorDatabase get _value => super._value as SecStorageErrorDatabase;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(SecStorageErrorDatabase(
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

class _$SecStorageErrorDatabase
    with DiagnosticableTreeMixin
    implements SecStorageErrorDatabase {
  const _$SecStorageErrorDatabase({this.exception, this.stackTrace});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecStorageErrorDatabase &&
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
  $SecStorageErrorDatabaseCopyWith<SecStorageErrorDatabase> get copyWith =>
      _$SecStorageErrorDatabaseCopyWithImpl<SecStorageErrorDatabase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noKey,
    required TResult Function(EncryptError error) encrypt,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return database(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
  }) {
    return database?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecStorageErrorDatabase value) database,
    required TResult Function(SecStorageErrorFs value) fs,
    required TResult Function(SecStorageErrorNoKey value) noKey,
    required TResult Function(SecStorageErrorEncrypt value) encrypt,
    required TResult Function(SecStorageErrorDecrypt value) decrypt,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class SecStorageErrorDatabase implements SecStorageError {
  const factory SecStorageErrorDatabase(
      {Exception? exception,
      StackTrace? stackTrace}) = _$SecStorageErrorDatabase;

  Exception? get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $SecStorageErrorDatabaseCopyWith<SecStorageErrorDatabase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecStorageErrorFsCopyWith<$Res> {
  factory $SecStorageErrorFsCopyWith(
          SecStorageErrorFs value, $Res Function(SecStorageErrorFs) then) =
      _$SecStorageErrorFsCopyWithImpl<$Res>;
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SecStorageErrorFsCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res>
    implements $SecStorageErrorFsCopyWith<$Res> {
  _$SecStorageErrorFsCopyWithImpl(
      SecStorageErrorFs _value, $Res Function(SecStorageErrorFs) _then)
      : super(_value, (v) => _then(v as SecStorageErrorFs));

  @override
  SecStorageErrorFs get _value => super._value as SecStorageErrorFs;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SecStorageErrorFs(
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

class _$SecStorageErrorFs
    with DiagnosticableTreeMixin
    implements SecStorageErrorFs {
  const _$SecStorageErrorFs({required this.error});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecStorageErrorFs &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SecStorageErrorFsCopyWith<SecStorageErrorFs> get copyWith =>
      _$SecStorageErrorFsCopyWithImpl<SecStorageErrorFs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noKey,
    required TResult Function(EncryptError error) encrypt,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return fs(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
  }) {
    return fs?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
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
    required TResult Function(SecStorageErrorDatabase value) database,
    required TResult Function(SecStorageErrorFs value) fs,
    required TResult Function(SecStorageErrorNoKey value) noKey,
    required TResult Function(SecStorageErrorEncrypt value) encrypt,
    required TResult Function(SecStorageErrorDecrypt value) decrypt,
  }) {
    return fs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
  }) {
    return fs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(this);
    }
    return orElse();
  }
}

abstract class SecStorageErrorFs implements SecStorageError {
  const factory SecStorageErrorFs({required FsError error}) =
      _$SecStorageErrorFs;

  FsError get error;
  @JsonKey(ignore: true)
  $SecStorageErrorFsCopyWith<SecStorageErrorFs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecStorageErrorNoKeyCopyWith<$Res> {
  factory $SecStorageErrorNoKeyCopyWith(SecStorageErrorNoKey value,
          $Res Function(SecStorageErrorNoKey) then) =
      _$SecStorageErrorNoKeyCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecStorageErrorNoKeyCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res>
    implements $SecStorageErrorNoKeyCopyWith<$Res> {
  _$SecStorageErrorNoKeyCopyWithImpl(
      SecStorageErrorNoKey _value, $Res Function(SecStorageErrorNoKey) _then)
      : super(_value, (v) => _then(v as SecStorageErrorNoKey));

  @override
  SecStorageErrorNoKey get _value => super._value as SecStorageErrorNoKey;
}

/// @nodoc

class _$SecStorageErrorNoKey
    with DiagnosticableTreeMixin
    implements SecStorageErrorNoKey {
  const _$SecStorageErrorNoKey();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecStorageError.noKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SecStorageError.noKey'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SecStorageErrorNoKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noKey,
    required TResult Function(EncryptError error) encrypt,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return noKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
  }) {
    return noKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) {
    if (noKey != null) {
      return noKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecStorageErrorDatabase value) database,
    required TResult Function(SecStorageErrorFs value) fs,
    required TResult Function(SecStorageErrorNoKey value) noKey,
    required TResult Function(SecStorageErrorEncrypt value) encrypt,
    required TResult Function(SecStorageErrorDecrypt value) decrypt,
  }) {
    return noKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
  }) {
    return noKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (noKey != null) {
      return noKey(this);
    }
    return orElse();
  }
}

abstract class SecStorageErrorNoKey implements SecStorageError {
  const factory SecStorageErrorNoKey() = _$SecStorageErrorNoKey;
}

/// @nodoc
abstract class $SecStorageErrorEncryptCopyWith<$Res> {
  factory $SecStorageErrorEncryptCopyWith(SecStorageErrorEncrypt value,
          $Res Function(SecStorageErrorEncrypt) then) =
      _$SecStorageErrorEncryptCopyWithImpl<$Res>;
  $Res call({EncryptError error});

  $EncryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SecStorageErrorEncryptCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res>
    implements $SecStorageErrorEncryptCopyWith<$Res> {
  _$SecStorageErrorEncryptCopyWithImpl(SecStorageErrorEncrypt _value,
      $Res Function(SecStorageErrorEncrypt) _then)
      : super(_value, (v) => _then(v as SecStorageErrorEncrypt));

  @override
  SecStorageErrorEncrypt get _value => super._value as SecStorageErrorEncrypt;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SecStorageErrorEncrypt(
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

class _$SecStorageErrorEncrypt
    with DiagnosticableTreeMixin
    implements SecStorageErrorEncrypt {
  const _$SecStorageErrorEncrypt({required this.error});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecStorageErrorEncrypt &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SecStorageErrorEncryptCopyWith<SecStorageErrorEncrypt> get copyWith =>
      _$SecStorageErrorEncryptCopyWithImpl<SecStorageErrorEncrypt>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noKey,
    required TResult Function(EncryptError error) encrypt,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return encrypt(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
  }) {
    return encrypt?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
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
    required TResult Function(SecStorageErrorDatabase value) database,
    required TResult Function(SecStorageErrorFs value) fs,
    required TResult Function(SecStorageErrorNoKey value) noKey,
    required TResult Function(SecStorageErrorEncrypt value) encrypt,
    required TResult Function(SecStorageErrorDecrypt value) decrypt,
  }) {
    return encrypt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
  }) {
    return encrypt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (encrypt != null) {
      return encrypt(this);
    }
    return orElse();
  }
}

abstract class SecStorageErrorEncrypt implements SecStorageError {
  const factory SecStorageErrorEncrypt({required EncryptError error}) =
      _$SecStorageErrorEncrypt;

  EncryptError get error;
  @JsonKey(ignore: true)
  $SecStorageErrorEncryptCopyWith<SecStorageErrorEncrypt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecStorageErrorDecryptCopyWith<$Res> {
  factory $SecStorageErrorDecryptCopyWith(SecStorageErrorDecrypt value,
          $Res Function(SecStorageErrorDecrypt) then) =
      _$SecStorageErrorDecryptCopyWithImpl<$Res>;
  $Res call({DecryptError error});

  $DecryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SecStorageErrorDecryptCopyWithImpl<$Res>
    extends _$SecStorageErrorCopyWithImpl<$Res>
    implements $SecStorageErrorDecryptCopyWith<$Res> {
  _$SecStorageErrorDecryptCopyWithImpl(SecStorageErrorDecrypt _value,
      $Res Function(SecStorageErrorDecrypt) _then)
      : super(_value, (v) => _then(v as SecStorageErrorDecrypt));

  @override
  SecStorageErrorDecrypt get _value => super._value as SecStorageErrorDecrypt;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SecStorageErrorDecrypt(
      error: error == freezed
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

class _$SecStorageErrorDecrypt
    with DiagnosticableTreeMixin
    implements SecStorageErrorDecrypt {
  const _$SecStorageErrorDecrypt({required this.error});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecStorageErrorDecrypt &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SecStorageErrorDecryptCopyWith<SecStorageErrorDecrypt> get copyWith =>
      _$SecStorageErrorDecryptCopyWithImpl<SecStorageErrorDecrypt>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noKey,
    required TResult Function(EncryptError error) encrypt,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return decrypt(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
  }) {
    return decrypt?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noKey,
    TResult Function(EncryptError error)? encrypt,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) {
    if (decrypt != null) {
      return decrypt(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecStorageErrorDatabase value) database,
    required TResult Function(SecStorageErrorFs value) fs,
    required TResult Function(SecStorageErrorNoKey value) noKey,
    required TResult Function(SecStorageErrorEncrypt value) encrypt,
    required TResult Function(SecStorageErrorDecrypt value) decrypt,
  }) {
    return decrypt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
  }) {
    return decrypt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecStorageErrorDatabase value)? database,
    TResult Function(SecStorageErrorFs value)? fs,
    TResult Function(SecStorageErrorNoKey value)? noKey,
    TResult Function(SecStorageErrorEncrypt value)? encrypt,
    TResult Function(SecStorageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (decrypt != null) {
      return decrypt(this);
    }
    return orElse();
  }
}

abstract class SecStorageErrorDecrypt implements SecStorageError {
  const factory SecStorageErrorDecrypt({required DecryptError error}) =
      _$SecStorageErrorDecrypt;

  DecryptError get error;
  @JsonKey(ignore: true)
  $SecStorageErrorDecryptCopyWith<SecStorageErrorDecrypt> get copyWith =>
      throw _privateConstructorUsedError;
}
