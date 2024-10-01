// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_initialization_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraInitializationError {}

/// @nodoc
abstract class $CameraInitializationErrorCopyWith<$Res> {
  factory $CameraInitializationErrorCopyWith(CameraInitializationError value,
          $Res Function(CameraInitializationError) then) =
      _$CameraInitializationErrorCopyWithImpl<$Res, CameraInitializationError>;
}

/// @nodoc
class _$CameraInitializationErrorCopyWithImpl<$Res,
        $Val extends CameraInitializationError>
    implements $CameraInitializationErrorCopyWith<$Res> {
  _$CameraInitializationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraInitializationError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CameraInitializationErrorAccessDeniedImplCopyWith<$Res> {
  factory _$$CameraInitializationErrorAccessDeniedImplCopyWith(
          _$CameraInitializationErrorAccessDeniedImpl value,
          $Res Function(_$CameraInitializationErrorAccessDeniedImpl) then) =
      __$$CameraInitializationErrorAccessDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraInitializationErrorAccessDeniedImplCopyWithImpl<$Res>
    extends _$CameraInitializationErrorCopyWithImpl<$Res,
        _$CameraInitializationErrorAccessDeniedImpl>
    implements _$$CameraInitializationErrorAccessDeniedImplCopyWith<$Res> {
  __$$CameraInitializationErrorAccessDeniedImplCopyWithImpl(
      _$CameraInitializationErrorAccessDeniedImpl _value,
      $Res Function(_$CameraInitializationErrorAccessDeniedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraInitializationError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CameraInitializationErrorAccessDeniedImpl
    implements CameraInitializationErrorAccessDenied {
  const _$CameraInitializationErrorAccessDeniedImpl();

  @override
  String toString() {
    return 'CameraInitializationError.accessDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraInitializationErrorAccessDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class CameraInitializationErrorAccessDenied
    implements CameraInitializationError {
  const factory CameraInitializationErrorAccessDenied() =
      _$CameraInitializationErrorAccessDeniedImpl;
}

/// @nodoc
abstract class _$$CameraInitializationErrorExceptionImplCopyWith<$Res> {
  factory _$$CameraInitializationErrorExceptionImplCopyWith(
          _$CameraInitializationErrorExceptionImpl value,
          $Res Function(_$CameraInitializationErrorExceptionImpl) then) =
      __$$CameraInitializationErrorExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$CameraInitializationErrorExceptionImplCopyWithImpl<$Res>
    extends _$CameraInitializationErrorCopyWithImpl<$Res,
        _$CameraInitializationErrorExceptionImpl>
    implements _$$CameraInitializationErrorExceptionImplCopyWith<$Res> {
  __$$CameraInitializationErrorExceptionImplCopyWithImpl(
      _$CameraInitializationErrorExceptionImpl _value,
      $Res Function(_$CameraInitializationErrorExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraInitializationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$CameraInitializationErrorExceptionImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$CameraInitializationErrorExceptionImpl
    implements CameraInitializationErrorException {
  const _$CameraInitializationErrorExceptionImpl(
      {required this.exception, this.stackTrace});

  @override
  final Exception exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'CameraInitializationError.exception(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraInitializationErrorExceptionImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  /// Create a copy of CameraInitializationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraInitializationErrorExceptionImplCopyWith<
          _$CameraInitializationErrorExceptionImpl>
      get copyWith => __$$CameraInitializationErrorExceptionImplCopyWithImpl<
          _$CameraInitializationErrorExceptionImpl>(this, _$identity);
}

abstract class CameraInitializationErrorException
    implements CameraInitializationError {
  const factory CameraInitializationErrorException(
      {required final Exception exception,
      final StackTrace? stackTrace}) = _$CameraInitializationErrorExceptionImpl;

  Exception get exception;
  StackTrace? get stackTrace;

  /// Create a copy of CameraInitializationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraInitializationErrorExceptionImplCopyWith<
          _$CameraInitializationErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
