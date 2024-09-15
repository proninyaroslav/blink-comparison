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
mixin _$EncryptResult {}

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
    implements EncryptResultSuccess {
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
}

abstract class EncryptResultSuccess implements EncryptResult {
  const factory EncryptResultSuccess({required final Uint8List bytes}) =
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
    implements EncryptResultFail {
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
}

abstract class EncryptResultFail implements EncryptResult {
  const factory EncryptResultFail(final EncryptError error) =
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
mixin _$DecryptResult {}

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
abstract class _$$DecryptResultSuccessImplCopyWith<$Res> {
  factory _$$DecryptResultSuccessImplCopyWith(_$DecryptResultSuccessImpl value,
          $Res Function(_$DecryptResultSuccessImpl) then) =
      __$$DecryptResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$$DecryptResultSuccessImplCopyWithImpl<$Res>
    extends _$DecryptResultCopyWithImpl<$Res, _$DecryptResultSuccessImpl>
    implements _$$DecryptResultSuccessImplCopyWith<$Res> {
  __$$DecryptResultSuccessImplCopyWithImpl(_$DecryptResultSuccessImpl _value,
      $Res Function(_$DecryptResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_$DecryptResultSuccessImpl(
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$DecryptResultSuccessImpl
    with DiagnosticableTreeMixin
    implements DecryptResultSuccess {
  const _$DecryptResultSuccessImpl({required this.bytes});

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
            other is _$DecryptResultSuccessImpl &&
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
  _$$DecryptResultSuccessImplCopyWith<_$DecryptResultSuccessImpl>
      get copyWith =>
          __$$DecryptResultSuccessImplCopyWithImpl<_$DecryptResultSuccessImpl>(
              this, _$identity);
}

abstract class DecryptResultSuccess implements DecryptResult {
  const factory DecryptResultSuccess({required final Uint8List bytes}) =
      _$DecryptResultSuccessImpl;

  Uint8List get bytes;

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptResultSuccessImplCopyWith<_$DecryptResultSuccessImpl>
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
    implements DecryptResultFail {
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
}

abstract class DecryptResultFail implements DecryptResult {
  const factory DecryptResultFail(final DecryptError error) =
      _$DecryptResultFailImpl;

  DecryptError get error;

  /// Create a copy of DecryptResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptResultFailImplCopyWith<_$DecryptResultFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DecryptError {}

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
}

abstract class DecryptErrorNoSecureKey implements DecryptError {
  const factory DecryptErrorNoSecureKey() = _$DecryptErrorNoSecureKeyImpl;
}
