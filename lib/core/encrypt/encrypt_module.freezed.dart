// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypt_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function(Uint8List bytes)? success,
    TResult? Function(EncryptError error)? fail,
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
    TResult? Function(_EncryptResultSuccess value)? success,
    TResult? Function(_EncryptResultFail value)? fail,
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
      _$EncryptResultCopyWithImpl<$Res, EncryptResult>;
}

/// @nodoc
class _$EncryptResultCopyWithImpl<$Res, $Val extends EncryptResult>
    implements $EncryptResultCopyWith<$Res> {
  _$EncryptResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EncryptResultSuccessImplCopyWith<$Res> {
  factory _$$EncryptResultSuccessImplCopyWith(_$EncryptResultSuccessImpl value,
          $Res Function(_$EncryptResultSuccessImpl) then) =
      __$$EncryptResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$$EncryptResultSuccessImplCopyWithImpl<$Res>
    extends _$EncryptResultCopyWithImpl<$Res, _$EncryptResultSuccessImpl>
    implements _$$EncryptResultSuccessImplCopyWith<$Res> {
  __$$EncryptResultSuccessImplCopyWithImpl(_$EncryptResultSuccessImpl _value,
      $Res Function(_$EncryptResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_$EncryptResultSuccessImpl(
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$EncryptResultSuccessImpl
    with DiagnosticableTreeMixin
    implements _EncryptResultSuccess {
  const _$EncryptResultSuccessImpl({required this.bytes});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptResultSuccessImpl &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  /// Create a copy of EncryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptResultSuccessImplCopyWith<_$EncryptResultSuccessImpl>
      get copyWith =>
          __$$EncryptResultSuccessImplCopyWithImpl<_$EncryptResultSuccessImpl>(
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
    TResult? Function(Uint8List bytes)? success,
    TResult? Function(EncryptError error)? fail,
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
    TResult? Function(_EncryptResultSuccess value)? success,
    TResult? Function(_EncryptResultFail value)? fail,
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
  const factory _EncryptResultSuccess({required final Uint8List bytes}) =
      _$EncryptResultSuccessImpl;

  Uint8List get bytes;

  /// Create a copy of EncryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptResultSuccessImplCopyWith<_$EncryptResultSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EncryptResultFailImplCopyWith<$Res> {
  factory _$$EncryptResultFailImplCopyWith(_$EncryptResultFailImpl value,
          $Res Function(_$EncryptResultFailImpl) then) =
      __$$EncryptResultFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EncryptError error});

  $EncryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$EncryptResultFailImplCopyWithImpl<$Res>
    extends _$EncryptResultCopyWithImpl<$Res, _$EncryptResultFailImpl>
    implements _$$EncryptResultFailImplCopyWith<$Res> {
  __$$EncryptResultFailImplCopyWithImpl(_$EncryptResultFailImpl _value,
      $Res Function(_$EncryptResultFailImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EncryptResultFailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as EncryptError,
    ));
  }

  /// Create a copy of EncryptResult
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

class _$EncryptResultFailImpl
    with DiagnosticableTreeMixin
    implements _EncryptResultFail {
  const _$EncryptResultFailImpl(this.error);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptResultFailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of EncryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptResultFailImplCopyWith<_$EncryptResultFailImpl> get copyWith =>
      __$$EncryptResultFailImplCopyWithImpl<_$EncryptResultFailImpl>(
          this, _$identity);

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
    TResult? Function(Uint8List bytes)? success,
    TResult? Function(EncryptError error)? fail,
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
    TResult? Function(_EncryptResultSuccess value)? success,
    TResult? Function(_EncryptResultFail value)? fail,
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
  const factory _EncryptResultFail(final EncryptError error) =
      _$EncryptResultFailImpl;

  EncryptError get error;

  /// Create a copy of EncryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptResultFailImplCopyWith<_$EncryptResultFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EncryptError _$EncryptErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'exception':
      return EncryptErrorException.fromJson(json);
    case 'noSecureKey':
      return EncryptErrorNoSecureKey.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'EncryptError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$EncryptError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)
        exception,
    required TResult Function() noSecureKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)?
        exception,
    TResult? Function()? noSecureKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)?
        exception,
    TResult Function()? noSecureKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EncryptErrorException value) exception,
    required TResult Function(EncryptErrorNoSecureKey value) noSecureKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EncryptErrorException value)? exception,
    TResult? Function(EncryptErrorNoSecureKey value)? noSecureKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EncryptErrorException value)? exception,
    TResult Function(EncryptErrorNoSecureKey value)? noSecureKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this EncryptError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptErrorCopyWith<$Res> {
  factory $EncryptErrorCopyWith(
          EncryptError value, $Res Function(EncryptError) then) =
      _$EncryptErrorCopyWithImpl<$Res, EncryptError>;
}

/// @nodoc
class _$EncryptErrorCopyWithImpl<$Res, $Val extends EncryptError>
    implements $EncryptErrorCopyWith<$Res> {
  _$EncryptErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EncryptErrorExceptionImplCopyWith<$Res> {
  factory _$$EncryptErrorExceptionImplCopyWith(
          _$EncryptErrorExceptionImpl value,
          $Res Function(_$EncryptErrorExceptionImpl) then) =
      __$$EncryptErrorExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@ExceptionConverter() Exception? error,
      @StackTraceConverter() StackTrace? stackTrace});
}

/// @nodoc
class __$$EncryptErrorExceptionImplCopyWithImpl<$Res>
    extends _$EncryptErrorCopyWithImpl<$Res, _$EncryptErrorExceptionImpl>
    implements _$$EncryptErrorExceptionImplCopyWith<$Res> {
  __$$EncryptErrorExceptionImplCopyWithImpl(_$EncryptErrorExceptionImpl _value,
      $Res Function(_$EncryptErrorExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$EncryptErrorExceptionImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
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
class _$EncryptErrorExceptionImpl
    with DiagnosticableTreeMixin
    implements EncryptErrorException {
  const _$EncryptErrorExceptionImpl(
      {@ExceptionConverter() this.error,
      @StackTraceConverter() this.stackTrace,
      final String? $type})
      : $type = $type ?? 'exception';

  factory _$EncryptErrorExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptErrorExceptionImplFromJson(json);

  @override
  @ExceptionConverter()
  final Exception? error;
  @override
  @StackTraceConverter()
  final StackTrace? stackTrace;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EncryptError.exception(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EncryptError.exception'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptErrorExceptionImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, stackTrace);

  /// Create a copy of EncryptError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptErrorExceptionImplCopyWith<_$EncryptErrorExceptionImpl>
      get copyWith => __$$EncryptErrorExceptionImplCopyWithImpl<
          _$EncryptErrorExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)
        exception,
    required TResult Function() noSecureKey,
  }) {
    return exception(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)?
        exception,
    TResult? Function()? noSecureKey,
  }) {
    return exception?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)?
        exception,
    TResult Function()? noSecureKey,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EncryptErrorException value) exception,
    required TResult Function(EncryptErrorNoSecureKey value) noSecureKey,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EncryptErrorException value)? exception,
    TResult? Function(EncryptErrorNoSecureKey value)? noSecureKey,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EncryptErrorException value)? exception,
    TResult Function(EncryptErrorNoSecureKey value)? noSecureKey,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptErrorExceptionImplToJson(
      this,
    );
  }
}

abstract class EncryptErrorException implements EncryptError {
  const factory EncryptErrorException(
          {@ExceptionConverter() final Exception? error,
          @StackTraceConverter() final StackTrace? stackTrace}) =
      _$EncryptErrorExceptionImpl;

  factory EncryptErrorException.fromJson(Map<String, dynamic> json) =
      _$EncryptErrorExceptionImpl.fromJson;

  @ExceptionConverter()
  Exception? get error;
  @StackTraceConverter()
  StackTrace? get stackTrace;

  /// Create a copy of EncryptError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptErrorExceptionImplCopyWith<_$EncryptErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EncryptErrorNoSecureKeyImplCopyWith<$Res> {
  factory _$$EncryptErrorNoSecureKeyImplCopyWith(
          _$EncryptErrorNoSecureKeyImpl value,
          $Res Function(_$EncryptErrorNoSecureKeyImpl) then) =
      __$$EncryptErrorNoSecureKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EncryptErrorNoSecureKeyImplCopyWithImpl<$Res>
    extends _$EncryptErrorCopyWithImpl<$Res, _$EncryptErrorNoSecureKeyImpl>
    implements _$$EncryptErrorNoSecureKeyImplCopyWith<$Res> {
  __$$EncryptErrorNoSecureKeyImplCopyWithImpl(
      _$EncryptErrorNoSecureKeyImpl _value,
      $Res Function(_$EncryptErrorNoSecureKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EncryptErrorNoSecureKeyImpl
    with DiagnosticableTreeMixin
    implements EncryptErrorNoSecureKey {
  const _$EncryptErrorNoSecureKeyImpl({final String? $type})
      : $type = $type ?? 'noSecureKey';

  factory _$EncryptErrorNoSecureKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptErrorNoSecureKeyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EncryptError.noSecureKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'EncryptError.noSecureKey'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptErrorNoSecureKeyImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)
        exception,
    required TResult Function() noSecureKey,
  }) {
    return noSecureKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)?
        exception,
    TResult? Function()? noSecureKey,
  }) {
    return noSecureKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@ExceptionConverter() Exception? error,
            @StackTraceConverter() StackTrace? stackTrace)?
        exception,
    TResult Function()? noSecureKey,
    required TResult orElse(),
  }) {
    if (noSecureKey != null) {
      return noSecureKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EncryptErrorException value) exception,
    required TResult Function(EncryptErrorNoSecureKey value) noSecureKey,
  }) {
    return noSecureKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EncryptErrorException value)? exception,
    TResult? Function(EncryptErrorNoSecureKey value)? noSecureKey,
  }) {
    return noSecureKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EncryptErrorException value)? exception,
    TResult Function(EncryptErrorNoSecureKey value)? noSecureKey,
    required TResult orElse(),
  }) {
    if (noSecureKey != null) {
      return noSecureKey(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptErrorNoSecureKeyImplToJson(
      this,
    );
  }
}

abstract class EncryptErrorNoSecureKey implements EncryptError {
  const factory EncryptErrorNoSecureKey() = _$EncryptErrorNoSecureKeyImpl;

  factory EncryptErrorNoSecureKey.fromJson(Map<String, dynamic> json) =
      _$EncryptErrorNoSecureKeyImpl.fromJson;
}

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
    TResult? Function(Uint8List bytes)? success,
    TResult? Function(DecryptError error)? fail,
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
    TResult? Function(_DecryptResulttSuccess value)? success,
    TResult? Function(_DecryptResultFail value)? fail,
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
      _$DecryptResultCopyWithImpl<$Res, DecryptResult>;
}

/// @nodoc
class _$DecryptResultCopyWithImpl<$Res, $Val extends DecryptResult>
    implements $DecryptResultCopyWith<$Res> {
  _$DecryptResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DecryptResulttSuccessImplCopyWith<$Res> {
  factory _$$DecryptResulttSuccessImplCopyWith(
          _$DecryptResulttSuccessImpl value,
          $Res Function(_$DecryptResulttSuccessImpl) then) =
      __$$DecryptResulttSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$$DecryptResulttSuccessImplCopyWithImpl<$Res>
    extends _$DecryptResultCopyWithImpl<$Res, _$DecryptResulttSuccessImpl>
    implements _$$DecryptResulttSuccessImplCopyWith<$Res> {
  __$$DecryptResulttSuccessImplCopyWithImpl(_$DecryptResulttSuccessImpl _value,
      $Res Function(_$DecryptResulttSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_$DecryptResulttSuccessImpl(
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$DecryptResulttSuccessImpl
    with DiagnosticableTreeMixin
    implements _DecryptResulttSuccess {
  const _$DecryptResulttSuccessImpl({required this.bytes});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptResulttSuccessImpl &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bytes));

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptResulttSuccessImplCopyWith<_$DecryptResulttSuccessImpl>
      get copyWith => __$$DecryptResulttSuccessImplCopyWithImpl<
          _$DecryptResulttSuccessImpl>(this, _$identity);

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
    TResult? Function(Uint8List bytes)? success,
    TResult? Function(DecryptError error)? fail,
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
    TResult? Function(_DecryptResulttSuccess value)? success,
    TResult? Function(_DecryptResultFail value)? fail,
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
  const factory _DecryptResulttSuccess({required final Uint8List bytes}) =
      _$DecryptResulttSuccessImpl;

  Uint8List get bytes;

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptResulttSuccessImplCopyWith<_$DecryptResulttSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecryptResultFailImplCopyWith<$Res> {
  factory _$$DecryptResultFailImplCopyWith(_$DecryptResultFailImpl value,
          $Res Function(_$DecryptResultFailImpl) then) =
      __$$DecryptResultFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DecryptError error});

  $DecryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$DecryptResultFailImplCopyWithImpl<$Res>
    extends _$DecryptResultCopyWithImpl<$Res, _$DecryptResultFailImpl>
    implements _$$DecryptResultFailImplCopyWith<$Res> {
  __$$DecryptResultFailImplCopyWithImpl(_$DecryptResultFailImpl _value,
      $Res Function(_$DecryptResultFailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DecryptResultFailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DecryptError,
    ));
  }

  /// Create a copy of DecryptResult
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

class _$DecryptResultFailImpl
    with DiagnosticableTreeMixin
    implements _DecryptResultFail {
  const _$DecryptResultFailImpl(this.error);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptResultFailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptResultFailImplCopyWith<_$DecryptResultFailImpl> get copyWith =>
      __$$DecryptResultFailImplCopyWithImpl<_$DecryptResultFailImpl>(
          this, _$identity);

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
    TResult? Function(Uint8List bytes)? success,
    TResult? Function(DecryptError error)? fail,
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
    TResult? Function(_DecryptResulttSuccess value)? success,
    TResult? Function(_DecryptResultFail value)? fail,
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
  const factory _DecryptResultFail(final DecryptError error) =
      _$DecryptResultFailImpl;

  DecryptError get error;

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptResultFailImplCopyWith<_$DecryptResultFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DecryptError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? error, StackTrace? stackTrace)
        exception,
    required TResult Function() noSecureKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? error, StackTrace? stackTrace)? exception,
    TResult? Function()? noSecureKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? error, StackTrace? stackTrace)? exception,
    TResult Function()? noSecureKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecryptErrorException value) exception,
    required TResult Function(DecryptErrorNoSecureKey value) noSecureKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecryptErrorException value)? exception,
    TResult? Function(DecryptErrorNoSecureKey value)? noSecureKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecryptErrorException value)? exception,
    TResult Function(DecryptErrorNoSecureKey value)? noSecureKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptErrorCopyWith<$Res> {
  factory $DecryptErrorCopyWith(
          DecryptError value, $Res Function(DecryptError) then) =
      _$DecryptErrorCopyWithImpl<$Res, DecryptError>;
}

/// @nodoc
class _$DecryptErrorCopyWithImpl<$Res, $Val extends DecryptError>
    implements $DecryptErrorCopyWith<$Res> {
  _$DecryptErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DecryptErrorExceptionImplCopyWith<$Res> {
  factory _$$DecryptErrorExceptionImplCopyWith(
          _$DecryptErrorExceptionImpl value,
          $Res Function(_$DecryptErrorExceptionImpl) then) =
      __$$DecryptErrorExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$DecryptErrorExceptionImplCopyWithImpl<$Res>
    extends _$DecryptErrorCopyWithImpl<$Res, _$DecryptErrorExceptionImpl>
    implements _$$DecryptErrorExceptionImplCopyWith<$Res> {
  __$$DecryptErrorExceptionImplCopyWithImpl(_$DecryptErrorExceptionImpl _value,
      $Res Function(_$DecryptErrorExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$DecryptErrorExceptionImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$DecryptErrorExceptionImpl
    with DiagnosticableTreeMixin
    implements DecryptErrorException {
  const _$DecryptErrorExceptionImpl({this.error, this.stackTrace});

  @override
  final Exception? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecryptError.exception(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DecryptError.exception'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptErrorExceptionImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, stackTrace);

  /// Create a copy of DecryptError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptErrorExceptionImplCopyWith<_$DecryptErrorExceptionImpl>
      get copyWith => __$$DecryptErrorExceptionImplCopyWithImpl<
          _$DecryptErrorExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? error, StackTrace? stackTrace)
        exception,
    required TResult Function() noSecureKey,
  }) {
    return exception(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? error, StackTrace? stackTrace)? exception,
    TResult? Function()? noSecureKey,
  }) {
    return exception?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? error, StackTrace? stackTrace)? exception,
    TResult Function()? noSecureKey,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecryptErrorException value) exception,
    required TResult Function(DecryptErrorNoSecureKey value) noSecureKey,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecryptErrorException value)? exception,
    TResult? Function(DecryptErrorNoSecureKey value)? noSecureKey,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecryptErrorException value)? exception,
    TResult Function(DecryptErrorNoSecureKey value)? noSecureKey,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class DecryptErrorException implements DecryptError {
  const factory DecryptErrorException(
      {final Exception? error,
      final StackTrace? stackTrace}) = _$DecryptErrorExceptionImpl;

  Exception? get error;
  StackTrace? get stackTrace;

  /// Create a copy of DecryptError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptErrorExceptionImplCopyWith<_$DecryptErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecryptErrorNoSecureKeyImplCopyWith<$Res> {
  factory _$$DecryptErrorNoSecureKeyImplCopyWith(
          _$DecryptErrorNoSecureKeyImpl value,
          $Res Function(_$DecryptErrorNoSecureKeyImpl) then) =
      __$$DecryptErrorNoSecureKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecryptErrorNoSecureKeyImplCopyWithImpl<$Res>
    extends _$DecryptErrorCopyWithImpl<$Res, _$DecryptErrorNoSecureKeyImpl>
    implements _$$DecryptErrorNoSecureKeyImplCopyWith<$Res> {
  __$$DecryptErrorNoSecureKeyImplCopyWithImpl(
      _$DecryptErrorNoSecureKeyImpl _value,
      $Res Function(_$DecryptErrorNoSecureKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DecryptErrorNoSecureKeyImpl
    with DiagnosticableTreeMixin
    implements DecryptErrorNoSecureKey {
  const _$DecryptErrorNoSecureKeyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecryptError.noSecureKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DecryptError.noSecureKey'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptErrorNoSecureKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? error, StackTrace? stackTrace)
        exception,
    required TResult Function() noSecureKey,
  }) {
    return noSecureKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? error, StackTrace? stackTrace)? exception,
    TResult? Function()? noSecureKey,
  }) {
    return noSecureKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? error, StackTrace? stackTrace)? exception,
    TResult Function()? noSecureKey,
    required TResult orElse(),
  }) {
    if (noSecureKey != null) {
      return noSecureKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecryptErrorException value) exception,
    required TResult Function(DecryptErrorNoSecureKey value) noSecureKey,
  }) {
    return noSecureKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecryptErrorException value)? exception,
    TResult? Function(DecryptErrorNoSecureKey value)? noSecureKey,
  }) {
    return noSecureKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecryptErrorException value)? exception,
    TResult Function(DecryptErrorNoSecureKey value)? noSecureKey,
    required TResult orElse(),
  }) {
    if (noSecureKey != null) {
      return noSecureKey(this);
    }
    return orElse();
  }
}

abstract class DecryptErrorNoSecureKey implements DecryptError {
  const factory DecryptErrorNoSecureKey() = _$DecryptErrorNoSecureKeyImpl;
}
