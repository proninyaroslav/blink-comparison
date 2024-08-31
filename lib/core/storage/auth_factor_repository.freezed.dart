// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_factor_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFactorModifyResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Object error, StackTrace stackTrace) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(Object error, StackTrace stackTrace)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Object error, StackTrace stackTrace)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFactorModifyResultSuccess value) success,
    required TResult Function(AuthFactorModifyResultFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFactorModifyResultSuccess value)? success,
    TResult? Function(AuthFactorModifyResultFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFactorModifyResultSuccess value)? success,
    TResult Function(AuthFactorModifyResultFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFactorModifyResultCopyWith<$Res> {
  factory $AuthFactorModifyResultCopyWith(AuthFactorModifyResult value,
          $Res Function(AuthFactorModifyResult) then) =
      _$AuthFactorModifyResultCopyWithImpl<$Res, AuthFactorModifyResult>;
}

/// @nodoc
class _$AuthFactorModifyResultCopyWithImpl<$Res,
        $Val extends AuthFactorModifyResult>
    implements $AuthFactorModifyResultCopyWith<$Res> {
  _$AuthFactorModifyResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFactorModifyResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthFactorModifyResultSuccessImplCopyWith<$Res> {
  factory _$$AuthFactorModifyResultSuccessImplCopyWith(
          _$AuthFactorModifyResultSuccessImpl value,
          $Res Function(_$AuthFactorModifyResultSuccessImpl) then) =
      __$$AuthFactorModifyResultSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthFactorModifyResultSuccessImplCopyWithImpl<$Res>
    extends _$AuthFactorModifyResultCopyWithImpl<$Res,
        _$AuthFactorModifyResultSuccessImpl>
    implements _$$AuthFactorModifyResultSuccessImplCopyWith<$Res> {
  __$$AuthFactorModifyResultSuccessImplCopyWithImpl(
      _$AuthFactorModifyResultSuccessImpl _value,
      $Res Function(_$AuthFactorModifyResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFactorModifyResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthFactorModifyResultSuccessImpl
    implements AuthFactorModifyResultSuccess {
  _$AuthFactorModifyResultSuccessImpl();

  @override
  String toString() {
    return 'AuthFactorModifyResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFactorModifyResultSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Object error, StackTrace stackTrace) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(Object error, StackTrace stackTrace)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Object error, StackTrace stackTrace)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFactorModifyResultSuccess value) success,
    required TResult Function(AuthFactorModifyResultFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFactorModifyResultSuccess value)? success,
    TResult? Function(AuthFactorModifyResultFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFactorModifyResultSuccess value)? success,
    TResult Function(AuthFactorModifyResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthFactorModifyResultSuccess implements AuthFactorModifyResult {
  factory AuthFactorModifyResultSuccess() = _$AuthFactorModifyResultSuccessImpl;
}

/// @nodoc
abstract class _$$AuthFactorModifyResultFailedImplCopyWith<$Res> {
  factory _$$AuthFactorModifyResultFailedImplCopyWith(
          _$AuthFactorModifyResultFailedImpl value,
          $Res Function(_$AuthFactorModifyResultFailedImpl) then) =
      __$$AuthFactorModifyResultFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$AuthFactorModifyResultFailedImplCopyWithImpl<$Res>
    extends _$AuthFactorModifyResultCopyWithImpl<$Res,
        _$AuthFactorModifyResultFailedImpl>
    implements _$$AuthFactorModifyResultFailedImplCopyWith<$Res> {
  __$$AuthFactorModifyResultFailedImplCopyWithImpl(
      _$AuthFactorModifyResultFailedImpl _value,
      $Res Function(_$AuthFactorModifyResultFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFactorModifyResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AuthFactorModifyResultFailedImpl(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AuthFactorModifyResultFailedImpl
    implements AuthFactorModifyResultFailed {
  _$AuthFactorModifyResultFailedImpl(
      {required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AuthFactorModifyResult.failed(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFactorModifyResultFailedImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of AuthFactorModifyResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFactorModifyResultFailedImplCopyWith<
          _$AuthFactorModifyResultFailedImpl>
      get copyWith => __$$AuthFactorModifyResultFailedImplCopyWithImpl<
          _$AuthFactorModifyResultFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(Object error, StackTrace stackTrace) failed,
  }) {
    return failed(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(Object error, StackTrace stackTrace)? failed,
  }) {
    return failed?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(Object error, StackTrace stackTrace)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthFactorModifyResultSuccess value) success,
    required TResult Function(AuthFactorModifyResultFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthFactorModifyResultSuccess value)? success,
    TResult? Function(AuthFactorModifyResultFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthFactorModifyResultSuccess value)? success,
    TResult Function(AuthFactorModifyResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class AuthFactorModifyResultFailed implements AuthFactorModifyResult {
  factory AuthFactorModifyResultFailed(
          {required final Object error, required final StackTrace stackTrace}) =
      _$AuthFactorModifyResultFailedImpl;

  Object get error;
  StackTrace get stackTrace;

  /// Create a copy of AuthFactorModifyResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFactorModifyResultFailedImplCopyWith<
          _$AuthFactorModifyResultFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
