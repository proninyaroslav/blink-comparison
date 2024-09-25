// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInState {}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInStateInitialImplCopyWith<$Res> {
  factory _$$SignInStateInitialImplCopyWith(_$SignInStateInitialImpl value,
          $Res Function(_$SignInStateInitialImpl) then) =
      __$$SignInStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStateInitialImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateInitialImpl>
    implements _$$SignInStateInitialImplCopyWith<$Res> {
  __$$SignInStateInitialImplCopyWithImpl(_$SignInStateInitialImpl _value,
      $Res Function(_$SignInStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInStateInitialImpl
    with DiagnosticableTreeMixin
    implements SignInStateInitial {
  const _$SignInStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignInStateInitial implements SignInState {
  const factory SignInStateInitial() = _$SignInStateInitialImpl;
}

/// @nodoc
abstract class _$$SignInStatePasswordNotLoadedImplCopyWith<$Res> {
  factory _$$SignInStatePasswordNotLoadedImplCopyWith(
          _$SignInStatePasswordNotLoadedImpl value,
          $Res Function(_$SignInStatePasswordNotLoadedImpl) then) =
      __$$SignInStatePasswordNotLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStatePasswordNotLoadedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStatePasswordNotLoadedImpl>
    implements _$$SignInStatePasswordNotLoadedImplCopyWith<$Res> {
  __$$SignInStatePasswordNotLoadedImplCopyWithImpl(
      _$SignInStatePasswordNotLoadedImpl _value,
      $Res Function(_$SignInStatePasswordNotLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInStatePasswordNotLoadedImpl
    with DiagnosticableTreeMixin
    implements SignInStatePasswordNotLoaded {
  const _$SignInStatePasswordNotLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.passwordNotLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SignInState.passwordNotLoaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStatePasswordNotLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignInStatePasswordNotLoaded implements SignInState {
  const factory SignInStatePasswordNotLoaded() =
      _$SignInStatePasswordNotLoadedImpl;
}

/// @nodoc
abstract class _$$SignInStatePasswordLoadedImplCopyWith<$Res> {
  factory _$$SignInStatePasswordLoadedImplCopyWith(
          _$SignInStatePasswordLoadedImpl value,
          $Res Function(_$SignInStatePasswordLoadedImpl) then) =
      __$$SignInStatePasswordLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PersistentAuthFactor info});

  $PersistentAuthFactorCopyWith<$Res> get info;
}

/// @nodoc
class __$$SignInStatePasswordLoadedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStatePasswordLoadedImpl>
    implements _$$SignInStatePasswordLoadedImplCopyWith<$Res> {
  __$$SignInStatePasswordLoadedImplCopyWithImpl(
      _$SignInStatePasswordLoadedImpl _value,
      $Res Function(_$SignInStatePasswordLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$SignInStatePasswordLoadedImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PersistentAuthFactor,
    ));
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersistentAuthFactorCopyWith<$Res> get info {
    return $PersistentAuthFactorCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$SignInStatePasswordLoadedImpl
    with DiagnosticableTreeMixin
    implements SignInStatePasswordLoaded {
  const _$SignInStatePasswordLoadedImpl({required this.info});

  @override
  final PersistentAuthFactor info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.passwordLoaded(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.passwordLoaded'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStatePasswordLoadedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStatePasswordLoadedImplCopyWith<_$SignInStatePasswordLoadedImpl>
      get copyWith => __$$SignInStatePasswordLoadedImplCopyWithImpl<
          _$SignInStatePasswordLoadedImpl>(this, _$identity);
}

abstract class SignInStatePasswordLoaded implements SignInState {
  const factory SignInStatePasswordLoaded(
          {required final PersistentAuthFactor info}) =
      _$SignInStatePasswordLoadedImpl;

  PersistentAuthFactor get info;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStatePasswordLoadedImplCopyWith<_$SignInStatePasswordLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInStateNoPasswordErrorImplCopyWith<$Res> {
  factory _$$SignInStateNoPasswordErrorImplCopyWith(
          _$SignInStateNoPasswordErrorImpl value,
          $Res Function(_$SignInStateNoPasswordErrorImpl) then) =
      __$$SignInStateNoPasswordErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStateNoPasswordErrorImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateNoPasswordErrorImpl>
    implements _$$SignInStateNoPasswordErrorImplCopyWith<$Res> {
  __$$SignInStateNoPasswordErrorImplCopyWithImpl(
      _$SignInStateNoPasswordErrorImpl _value,
      $Res Function(_$SignInStateNoPasswordErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInStateNoPasswordErrorImpl
    with DiagnosticableTreeMixin
    implements SignInStateNoPasswordError {
  const _$SignInStateNoPasswordErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.noPasswordError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.noPasswordError'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateNoPasswordErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignInStateNoPasswordError implements SignInState {
  const factory SignInStateNoPasswordError() = _$SignInStateNoPasswordErrorImpl;
}

/// @nodoc
abstract class _$$SignInStateLoadPasswordFailedImplCopyWith<$Res> {
  factory _$$SignInStateLoadPasswordFailedImplCopyWith(
          _$SignInStateLoadPasswordFailedImpl value,
          $Res Function(_$SignInStateLoadPasswordFailedImpl) then) =
      __$$SignInStateLoadPasswordFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$SignInStateLoadPasswordFailedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateLoadPasswordFailedImpl>
    implements _$$SignInStateLoadPasswordFailedImplCopyWith<$Res> {
  __$$SignInStateLoadPasswordFailedImplCopyWithImpl(
      _$SignInStateLoadPasswordFailedImpl _value,
      $Res Function(_$SignInStateLoadPasswordFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$SignInStateLoadPasswordFailedImpl(
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

class _$SignInStateLoadPasswordFailedImpl
    with DiagnosticableTreeMixin
    implements SignInStateLoadPasswordFailed {
  const _$SignInStateLoadPasswordFailedImpl({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.loadPasswordFailed(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.loadPasswordFailed'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateLoadPasswordFailedImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateLoadPasswordFailedImplCopyWith<
          _$SignInStateLoadPasswordFailedImpl>
      get copyWith => __$$SignInStateLoadPasswordFailedImplCopyWithImpl<
          _$SignInStateLoadPasswordFailedImpl>(this, _$identity);
}

abstract class SignInStateLoadPasswordFailed implements SignInState {
  const factory SignInStateLoadPasswordFailed(
      {final Exception? exception,
      final StackTrace? stackTrace}) = _$SignInStateLoadPasswordFailedImpl;

  Exception? get exception;
  StackTrace? get stackTrace;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStateLoadPasswordFailedImplCopyWith<
          _$SignInStateLoadPasswordFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInStateAuthInProgressImplCopyWith<$Res> {
  factory _$$SignInStateAuthInProgressImplCopyWith(
          _$SignInStateAuthInProgressImpl value,
          $Res Function(_$SignInStateAuthInProgressImpl) then) =
      __$$SignInStateAuthInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PersistentAuthFactor info});

  $PersistentAuthFactorCopyWith<$Res> get info;
}

/// @nodoc
class __$$SignInStateAuthInProgressImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateAuthInProgressImpl>
    implements _$$SignInStateAuthInProgressImplCopyWith<$Res> {
  __$$SignInStateAuthInProgressImplCopyWithImpl(
      _$SignInStateAuthInProgressImpl _value,
      $Res Function(_$SignInStateAuthInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$SignInStateAuthInProgressImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PersistentAuthFactor,
    ));
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersistentAuthFactorCopyWith<$Res> get info {
    return $PersistentAuthFactorCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$SignInStateAuthInProgressImpl
    with DiagnosticableTreeMixin
    implements SignInStateAuthInProgress {
  const _$SignInStateAuthInProgressImpl({required this.info});

  @override
  final PersistentAuthFactor info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.authInProgress(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.authInProgress'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateAuthInProgressImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateAuthInProgressImplCopyWith<_$SignInStateAuthInProgressImpl>
      get copyWith => __$$SignInStateAuthInProgressImplCopyWithImpl<
          _$SignInStateAuthInProgressImpl>(this, _$identity);
}

abstract class SignInStateAuthInProgress implements SignInState {
  const factory SignInStateAuthInProgress(
          {required final PersistentAuthFactor info}) =
      _$SignInStateAuthInProgressImpl;

  PersistentAuthFactor get info;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStateAuthInProgressImplCopyWith<_$SignInStateAuthInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInStateAuthSuccessImplCopyWith<$Res> {
  factory _$$SignInStateAuthSuccessImplCopyWith(
          _$SignInStateAuthSuccessImpl value,
          $Res Function(_$SignInStateAuthSuccessImpl) then) =
      __$$SignInStateAuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PersistentAuthFactor info});

  $PersistentAuthFactorCopyWith<$Res> get info;
}

/// @nodoc
class __$$SignInStateAuthSuccessImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateAuthSuccessImpl>
    implements _$$SignInStateAuthSuccessImplCopyWith<$Res> {
  __$$SignInStateAuthSuccessImplCopyWithImpl(
      _$SignInStateAuthSuccessImpl _value,
      $Res Function(_$SignInStateAuthSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$SignInStateAuthSuccessImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PersistentAuthFactor,
    ));
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersistentAuthFactorCopyWith<$Res> get info {
    return $PersistentAuthFactorCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$SignInStateAuthSuccessImpl
    with DiagnosticableTreeMixin
    implements SignInStateAuthSuccess {
  const _$SignInStateAuthSuccessImpl({required this.info});

  @override
  final PersistentAuthFactor info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.authSuccess(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.authSuccess'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateAuthSuccessImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateAuthSuccessImplCopyWith<_$SignInStateAuthSuccessImpl>
      get copyWith => __$$SignInStateAuthSuccessImplCopyWithImpl<
          _$SignInStateAuthSuccessImpl>(this, _$identity);
}

abstract class SignInStateAuthSuccess implements SignInState {
  const factory SignInStateAuthSuccess(
          {required final PersistentAuthFactor info}) =
      _$SignInStateAuthSuccessImpl;

  PersistentAuthFactor get info;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStateAuthSuccessImplCopyWith<_$SignInStateAuthSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInStateAuthFailedImplCopyWith<$Res> {
  factory _$$SignInStateAuthFailedImplCopyWith(
          _$SignInStateAuthFailedImpl value,
          $Res Function(_$SignInStateAuthFailedImpl) then) =
      __$$SignInStateAuthFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PersistentAuthFactor info, SignInError reason});

  $PersistentAuthFactorCopyWith<$Res> get info;
  $SignInErrorCopyWith<$Res> get reason;
}

/// @nodoc
class __$$SignInStateAuthFailedImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateAuthFailedImpl>
    implements _$$SignInStateAuthFailedImplCopyWith<$Res> {
  __$$SignInStateAuthFailedImplCopyWithImpl(_$SignInStateAuthFailedImpl _value,
      $Res Function(_$SignInStateAuthFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? reason = null,
  }) {
    return _then(_$SignInStateAuthFailedImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PersistentAuthFactor,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as SignInError,
    ));
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersistentAuthFactorCopyWith<$Res> get info {
    return $PersistentAuthFactorCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignInErrorCopyWith<$Res> get reason {
    return $SignInErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$SignInStateAuthFailedImpl
    with DiagnosticableTreeMixin
    implements SignInStateAuthFailed {
  const _$SignInStateAuthFailedImpl({required this.info, required this.reason});

  @override
  final PersistentAuthFactor info;
  @override
  final SignInError reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.authFailed(info: $info, reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.authFailed'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateAuthFailedImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, reason);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateAuthFailedImplCopyWith<_$SignInStateAuthFailedImpl>
      get copyWith => __$$SignInStateAuthFailedImplCopyWithImpl<
          _$SignInStateAuthFailedImpl>(this, _$identity);
}

abstract class SignInStateAuthFailed implements SignInState {
  const factory SignInStateAuthFailed(
      {required final PersistentAuthFactor info,
      required final SignInError reason}) = _$SignInStateAuthFailedImpl;

  PersistentAuthFactor get info;
  SignInError get reason;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInStateAuthFailedImplCopyWith<_$SignInStateAuthFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInError {}

/// @nodoc
abstract class $SignInErrorCopyWith<$Res> {
  factory $SignInErrorCopyWith(
          SignInError value, $Res Function(SignInError) then) =
      _$SignInErrorCopyWithImpl<$Res, SignInError>;
}

/// @nodoc
class _$SignInErrorCopyWithImpl<$Res, $Val extends SignInError>
    implements $SignInErrorCopyWith<$Res> {
  _$SignInErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInErrorEmptyPasswordImplCopyWith<$Res> {
  factory _$$SignInErrorEmptyPasswordImplCopyWith(
          _$SignInErrorEmptyPasswordImpl value,
          $Res Function(_$SignInErrorEmptyPasswordImpl) then) =
      __$$SignInErrorEmptyPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInErrorEmptyPasswordImplCopyWithImpl<$Res>
    extends _$SignInErrorCopyWithImpl<$Res, _$SignInErrorEmptyPasswordImpl>
    implements _$$SignInErrorEmptyPasswordImplCopyWith<$Res> {
  __$$SignInErrorEmptyPasswordImplCopyWithImpl(
      _$SignInErrorEmptyPasswordImpl _value,
      $Res Function(_$SignInErrorEmptyPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInErrorEmptyPasswordImpl
    with DiagnosticableTreeMixin
    implements SignInErrorEmptyPassword {
  const _$SignInErrorEmptyPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInError.emptyPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInError.emptyPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInErrorEmptyPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignInErrorEmptyPassword implements SignInError {
  const factory SignInErrorEmptyPassword() = _$SignInErrorEmptyPasswordImpl;
}

/// @nodoc
abstract class _$$SignInErrorWrongPasswordImplCopyWith<$Res> {
  factory _$$SignInErrorWrongPasswordImplCopyWith(
          _$SignInErrorWrongPasswordImpl value,
          $Res Function(_$SignInErrorWrongPasswordImpl) then) =
      __$$SignInErrorWrongPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInErrorWrongPasswordImplCopyWithImpl<$Res>
    extends _$SignInErrorCopyWithImpl<$Res, _$SignInErrorWrongPasswordImpl>
    implements _$$SignInErrorWrongPasswordImplCopyWith<$Res> {
  __$$SignInErrorWrongPasswordImplCopyWithImpl(
      _$SignInErrorWrongPasswordImpl _value,
      $Res Function(_$SignInErrorWrongPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInErrorWrongPasswordImpl
    with DiagnosticableTreeMixin
    implements SignInErrorWrongPassword {
  const _$SignInErrorWrongPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInError.wrongPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInError.wrongPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInErrorWrongPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignInErrorWrongPassword implements SignInError {
  const factory SignInErrorWrongPassword() = _$SignInErrorWrongPasswordImpl;
}

/// @nodoc
abstract class _$$SignInErrorExceptionImplCopyWith<$Res> {
  factory _$$SignInErrorExceptionImplCopyWith(_$SignInErrorExceptionImpl value,
          $Res Function(_$SignInErrorExceptionImpl) then) =
      __$$SignInErrorExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SignInErrorExceptionImplCopyWithImpl<$Res>
    extends _$SignInErrorCopyWithImpl<$Res, _$SignInErrorExceptionImpl>
    implements _$$SignInErrorExceptionImplCopyWith<$Res> {
  __$$SignInErrorExceptionImplCopyWithImpl(_$SignInErrorExceptionImpl _value,
      $Res Function(_$SignInErrorExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$SignInErrorExceptionImpl(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SignInErrorExceptionImpl
    with DiagnosticableTreeMixin
    implements SignInErrorException {
  const _$SignInErrorExceptionImpl(
      {required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInError.exception(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInError.exception'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInErrorExceptionImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of SignInError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInErrorExceptionImplCopyWith<_$SignInErrorExceptionImpl>
      get copyWith =>
          __$$SignInErrorExceptionImplCopyWithImpl<_$SignInErrorExceptionImpl>(
              this, _$identity);
}

abstract class SignInErrorException implements SignInError {
  const factory SignInErrorException(
      {required final Object error,
      required final StackTrace stackTrace}) = _$SignInErrorExceptionImpl;

  Object get error;
  StackTrace get stackTrace;

  /// Create a copy of SignInError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInErrorExceptionImplCopyWith<_$SignInErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
