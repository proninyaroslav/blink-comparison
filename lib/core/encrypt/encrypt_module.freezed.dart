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
  return _EncryptError.fromJson(json);
}

/// @nodoc
mixin _$EncryptError {
  @ExceptionConverter()
  Exception? get error => throw _privateConstructorUsedError;
  @StackTraceConverter()
  StackTrace? get stackTrace => throw _privateConstructorUsedError;

  /// Serializes this EncryptError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptErrorCopyWith<EncryptError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptErrorCopyWith<$Res> {
  factory $EncryptErrorCopyWith(
          EncryptError value, $Res Function(EncryptError) then) =
      _$EncryptErrorCopyWithImpl<$Res, EncryptError>;
  @useResult
  $Res call(
      {@ExceptionConverter() Exception? error,
      @StackTraceConverter() StackTrace? stackTrace});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncryptErrorImplCopyWith<$Res>
    implements $EncryptErrorCopyWith<$Res> {
  factory _$$EncryptErrorImplCopyWith(
          _$EncryptErrorImpl value, $Res Function(_$EncryptErrorImpl) then) =
      __$$EncryptErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ExceptionConverter() Exception? error,
      @StackTraceConverter() StackTrace? stackTrace});
}

/// @nodoc
class __$$EncryptErrorImplCopyWithImpl<$Res>
    extends _$EncryptErrorCopyWithImpl<$Res, _$EncryptErrorImpl>
    implements _$$EncryptErrorImplCopyWith<$Res> {
  __$$EncryptErrorImplCopyWithImpl(
      _$EncryptErrorImpl _value, $Res Function(_$EncryptErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$EncryptErrorImpl(
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
class _$EncryptErrorImpl with DiagnosticableTreeMixin implements _EncryptError {
  const _$EncryptErrorImpl(
      {@ExceptionConverter() this.error,
      @StackTraceConverter() this.stackTrace});

  factory _$EncryptErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptErrorImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptErrorImpl &&
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
  _$$EncryptErrorImplCopyWith<_$EncryptErrorImpl> get copyWith =>
      __$$EncryptErrorImplCopyWithImpl<_$EncryptErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptErrorImplToJson(
      this,
    );
  }
}

abstract class _EncryptError implements EncryptError {
  const factory _EncryptError(
          {@ExceptionConverter() final Exception? error,
          @StackTraceConverter() final StackTrace? stackTrace}) =
      _$EncryptErrorImpl;

  factory _EncryptError.fromJson(Map<String, dynamic> json) =
      _$EncryptErrorImpl.fromJson;

  @override
  @ExceptionConverter()
  Exception? get error;
  @override
  @StackTraceConverter()
  StackTrace? get stackTrace;

  /// Create a copy of EncryptError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptErrorImplCopyWith<_$EncryptErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>(
    TResult Function(Exception? error, StackTrace? stackTrace) $default, {
    required TResult Function() invalidKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult? Function()? invalidKey,
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
    TResult? Function(DecryptErrorValue value)? $default, {
    TResult? Function(DecryptErrorInvalidKey value)? invalidKey,
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
abstract class _$$DecryptErrorValueImplCopyWith<$Res> {
  factory _$$DecryptErrorValueImplCopyWith(_$DecryptErrorValueImpl value,
          $Res Function(_$DecryptErrorValueImpl) then) =
      __$$DecryptErrorValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$DecryptErrorValueImplCopyWithImpl<$Res>
    extends _$DecryptErrorCopyWithImpl<$Res, _$DecryptErrorValueImpl>
    implements _$$DecryptErrorValueImplCopyWith<$Res> {
  __$$DecryptErrorValueImplCopyWithImpl(_$DecryptErrorValueImpl _value,
      $Res Function(_$DecryptErrorValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$DecryptErrorValueImpl(
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

class _$DecryptErrorValueImpl
    with DiagnosticableTreeMixin
    implements DecryptErrorValue {
  const _$DecryptErrorValueImpl({this.error, this.stackTrace});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptErrorValueImpl &&
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
  _$$DecryptErrorValueImplCopyWith<_$DecryptErrorValueImpl> get copyWith =>
      __$$DecryptErrorValueImplCopyWithImpl<_$DecryptErrorValueImpl>(
          this, _$identity);

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
    TResult? Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult? Function()? invalidKey,
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
    TResult? Function(DecryptErrorValue value)? $default, {
    TResult? Function(DecryptErrorInvalidKey value)? invalidKey,
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
  const factory DecryptErrorValue(
      {final Exception? error,
      final StackTrace? stackTrace}) = _$DecryptErrorValueImpl;

  Exception? get error;
  StackTrace? get stackTrace;

  /// Create a copy of DecryptError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptErrorValueImplCopyWith<_$DecryptErrorValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecryptErrorInvalidKeyImplCopyWith<$Res> {
  factory _$$DecryptErrorInvalidKeyImplCopyWith(
          _$DecryptErrorInvalidKeyImpl value,
          $Res Function(_$DecryptErrorInvalidKeyImpl) then) =
      __$$DecryptErrorInvalidKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecryptErrorInvalidKeyImplCopyWithImpl<$Res>
    extends _$DecryptErrorCopyWithImpl<$Res, _$DecryptErrorInvalidKeyImpl>
    implements _$$DecryptErrorInvalidKeyImplCopyWith<$Res> {
  __$$DecryptErrorInvalidKeyImplCopyWithImpl(
      _$DecryptErrorInvalidKeyImpl _value,
      $Res Function(_$DecryptErrorInvalidKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DecryptErrorInvalidKeyImpl
    with DiagnosticableTreeMixin
    implements DecryptErrorInvalidKey {
  const _$DecryptErrorInvalidKeyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecryptError.invalidKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DecryptError.invalidKey'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptErrorInvalidKeyImpl);
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
    TResult? Function(Exception? error, StackTrace? stackTrace)? $default, {
    TResult? Function()? invalidKey,
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
    TResult? Function(DecryptErrorValue value)? $default, {
    TResult? Function(DecryptErrorInvalidKey value)? invalidKey,
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
  const factory DecryptErrorInvalidKey() = _$DecryptErrorInvalidKeyImpl;
}

/// @nodoc
mixin _$PBEInfo {
  Uint8List get src => throw _privateConstructorUsedError;
  Uint8List get key => throw _privateConstructorUsedError;

  /// Create a copy of _PBEInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$PBEInfoCopyWith<_PBEInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PBEInfoCopyWith<$Res> {
  factory _$PBEInfoCopyWith(_PBEInfo value, $Res Function(_PBEInfo) then) =
      __$PBEInfoCopyWithImpl<$Res, _PBEInfo>;
  @useResult
  $Res call({Uint8List src, Uint8List key});
}

/// @nodoc
class __$PBEInfoCopyWithImpl<$Res, $Val extends _PBEInfo>
    implements _$PBEInfoCopyWith<$Res> {
  __$PBEInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _PBEInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PBEInfoDataImplCopyWith<$Res>
    implements _$PBEInfoCopyWith<$Res> {
  factory _$$PBEInfoDataImplCopyWith(
          _$PBEInfoDataImpl value, $Res Function(_$PBEInfoDataImpl) then) =
      __$$PBEInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List src, Uint8List key});
}

/// @nodoc
class __$$PBEInfoDataImplCopyWithImpl<$Res>
    extends __$PBEInfoCopyWithImpl<$Res, _$PBEInfoDataImpl>
    implements _$$PBEInfoDataImplCopyWith<$Res> {
  __$$PBEInfoDataImplCopyWithImpl(
      _$PBEInfoDataImpl _value, $Res Function(_$PBEInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of _PBEInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? key = null,
  }) {
    return _then(_$PBEInfoDataImpl(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$PBEInfoDataImpl with DiagnosticableTreeMixin implements _PBEInfoData {
  const _$PBEInfoDataImpl({required this.src, required this.key});

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PBEInfoDataImpl &&
            const DeepCollectionEquality().equals(other.src, src) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(src),
      const DeepCollectionEquality().hash(key));

  /// Create a copy of _PBEInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PBEInfoDataImplCopyWith<_$PBEInfoDataImpl> get copyWith =>
      __$$PBEInfoDataImplCopyWithImpl<_$PBEInfoDataImpl>(this, _$identity);
}

abstract class _PBEInfoData implements _PBEInfo {
  const factory _PBEInfoData(
      {required final Uint8List src,
      required final Uint8List key}) = _$PBEInfoDataImpl;

  @override
  Uint8List get src;
  @override
  Uint8List get key;

  /// Create a copy of _PBEInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PBEInfoDataImplCopyWith<_$PBEInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
