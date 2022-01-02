// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateInitial initial() {
    return const AuthStateInitial();
  }

  AuthStateNoPassword noPassword() {
    return const AuthStateNoPassword();
  }

  AuthStatePasswordNotLoaded passwordNotLoaded() {
    return const AuthStatePasswordNotLoaded();
  }

  AuthStatePasswordLoaded passwordLoaded({required PasswordInfo info}) {
    return AuthStatePasswordLoaded(
      info: info,
    );
  }

  AuthStateLoadPasswordFailed loadPasswordFailed(
      {Exception? exception, StackTrace? stackTrace}) {
    return AuthStateLoadPasswordFailed(
      exception: exception,
      stackTrace: stackTrace,
    );
  }

  AuthStateAuthInProgress authInProgress({required PasswordInfo info}) {
    return AuthStateAuthInProgress(
      info: info,
    );
  }

  AuthStateAuthSuccess authSuccess({required PasswordInfo info}) {
    return AuthStateAuthSuccess(
      info: info,
    );
  }

  AuthStateAuthFailed authFailed(
      {required PasswordInfo info, required AuthError reason}) {
    return AuthStateAuthFailed(
      info: info,
      reason: reason,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateInitialCopyWith<$Res> {
  factory $AuthStateInitialCopyWith(
          AuthStateInitial value, $Res Function(AuthStateInitial) then) =
      _$AuthStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateInitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateInitialCopyWith<$Res> {
  _$AuthStateInitialCopyWithImpl(
      AuthStateInitial _value, $Res Function(AuthStateInitial) _then)
      : super(_value, (v) => _then(v as AuthStateInitial));

  @override
  AuthStateInitial get _value => super._value as AuthStateInitial;
}

/// @nodoc

class _$AuthStateInitial implements AuthStateInitial {
  const _$AuthStateInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStateInitial implements AuthState {
  const factory AuthStateInitial() = _$AuthStateInitial;
}

/// @nodoc
abstract class $AuthStateNoPasswordCopyWith<$Res> {
  factory $AuthStateNoPasswordCopyWith(
          AuthStateNoPassword value, $Res Function(AuthStateNoPassword) then) =
      _$AuthStateNoPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateNoPasswordCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateNoPasswordCopyWith<$Res> {
  _$AuthStateNoPasswordCopyWithImpl(
      AuthStateNoPassword _value, $Res Function(AuthStateNoPassword) _then)
      : super(_value, (v) => _then(v as AuthStateNoPassword));

  @override
  AuthStateNoPassword get _value => super._value as AuthStateNoPassword;
}

/// @nodoc

class _$AuthStateNoPassword implements AuthStateNoPassword {
  const _$AuthStateNoPassword();

  @override
  String toString() {
    return 'AuthState.noPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateNoPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) {
    return noPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) {
    return noPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) {
    if (noPassword != null) {
      return noPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) {
    return noPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) {
    return noPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (noPassword != null) {
      return noPassword(this);
    }
    return orElse();
  }
}

abstract class AuthStateNoPassword implements AuthState {
  const factory AuthStateNoPassword() = _$AuthStateNoPassword;
}

/// @nodoc
abstract class $AuthStatePasswordNotLoadedCopyWith<$Res> {
  factory $AuthStatePasswordNotLoadedCopyWith(AuthStatePasswordNotLoaded value,
          $Res Function(AuthStatePasswordNotLoaded) then) =
      _$AuthStatePasswordNotLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStatePasswordNotLoadedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStatePasswordNotLoadedCopyWith<$Res> {
  _$AuthStatePasswordNotLoadedCopyWithImpl(AuthStatePasswordNotLoaded _value,
      $Res Function(AuthStatePasswordNotLoaded) _then)
      : super(_value, (v) => _then(v as AuthStatePasswordNotLoaded));

  @override
  AuthStatePasswordNotLoaded get _value =>
      super._value as AuthStatePasswordNotLoaded;
}

/// @nodoc

class _$AuthStatePasswordNotLoaded implements AuthStatePasswordNotLoaded {
  const _$AuthStatePasswordNotLoaded();

  @override
  String toString() {
    return 'AuthState.passwordNotLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStatePasswordNotLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) {
    return passwordNotLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) {
    return passwordNotLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) {
    if (passwordNotLoaded != null) {
      return passwordNotLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) {
    return passwordNotLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) {
    return passwordNotLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (passwordNotLoaded != null) {
      return passwordNotLoaded(this);
    }
    return orElse();
  }
}

abstract class AuthStatePasswordNotLoaded implements AuthState {
  const factory AuthStatePasswordNotLoaded() = _$AuthStatePasswordNotLoaded;
}

/// @nodoc
abstract class $AuthStatePasswordLoadedCopyWith<$Res> {
  factory $AuthStatePasswordLoadedCopyWith(AuthStatePasswordLoaded value,
          $Res Function(AuthStatePasswordLoaded) then) =
      _$AuthStatePasswordLoadedCopyWithImpl<$Res>;
  $Res call({PasswordInfo info});

  $PasswordInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AuthStatePasswordLoadedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStatePasswordLoadedCopyWith<$Res> {
  _$AuthStatePasswordLoadedCopyWithImpl(AuthStatePasswordLoaded _value,
      $Res Function(AuthStatePasswordLoaded) _then)
      : super(_value, (v) => _then(v as AuthStatePasswordLoaded));

  @override
  AuthStatePasswordLoaded get _value => super._value as AuthStatePasswordLoaded;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AuthStatePasswordLoaded(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PasswordInfo,
    ));
  }

  @override
  $PasswordInfoCopyWith<$Res> get info {
    return $PasswordInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AuthStatePasswordLoaded implements AuthStatePasswordLoaded {
  const _$AuthStatePasswordLoaded({required this.info});

  @override
  final PasswordInfo info;

  @override
  String toString() {
    return 'AuthState.passwordLoaded(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStatePasswordLoaded &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $AuthStatePasswordLoadedCopyWith<AuthStatePasswordLoaded> get copyWith =>
      _$AuthStatePasswordLoadedCopyWithImpl<AuthStatePasswordLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) {
    return passwordLoaded(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) {
    return passwordLoaded?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) {
    if (passwordLoaded != null) {
      return passwordLoaded(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) {
    return passwordLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) {
    return passwordLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (passwordLoaded != null) {
      return passwordLoaded(this);
    }
    return orElse();
  }
}

abstract class AuthStatePasswordLoaded implements AuthState {
  const factory AuthStatePasswordLoaded({required PasswordInfo info}) =
      _$AuthStatePasswordLoaded;

  PasswordInfo get info;
  @JsonKey(ignore: true)
  $AuthStatePasswordLoadedCopyWith<AuthStatePasswordLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateLoadPasswordFailedCopyWith<$Res> {
  factory $AuthStateLoadPasswordFailedCopyWith(
          AuthStateLoadPasswordFailed value,
          $Res Function(AuthStateLoadPasswordFailed) then) =
      _$AuthStateLoadPasswordFailedCopyWithImpl<$Res>;
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$AuthStateLoadPasswordFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoadPasswordFailedCopyWith<$Res> {
  _$AuthStateLoadPasswordFailedCopyWithImpl(AuthStateLoadPasswordFailed _value,
      $Res Function(AuthStateLoadPasswordFailed) _then)
      : super(_value, (v) => _then(v as AuthStateLoadPasswordFailed));

  @override
  AuthStateLoadPasswordFailed get _value =>
      super._value as AuthStateLoadPasswordFailed;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(AuthStateLoadPasswordFailed(
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

class _$AuthStateLoadPasswordFailed implements AuthStateLoadPasswordFailed {
  const _$AuthStateLoadPasswordFailed({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AuthState.loadPasswordFailed(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateLoadPasswordFailed &&
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
  $AuthStateLoadPasswordFailedCopyWith<AuthStateLoadPasswordFailed>
      get copyWith => _$AuthStateLoadPasswordFailedCopyWithImpl<
          AuthStateLoadPasswordFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) {
    return loadPasswordFailed(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) {
    return loadPasswordFailed?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) {
    if (loadPasswordFailed != null) {
      return loadPasswordFailed(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) {
    return loadPasswordFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) {
    return loadPasswordFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (loadPasswordFailed != null) {
      return loadPasswordFailed(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoadPasswordFailed implements AuthState {
  const factory AuthStateLoadPasswordFailed(
      {Exception? exception,
      StackTrace? stackTrace}) = _$AuthStateLoadPasswordFailed;

  Exception? get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $AuthStateLoadPasswordFailedCopyWith<AuthStateLoadPasswordFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateAuthInProgressCopyWith<$Res> {
  factory $AuthStateAuthInProgressCopyWith(AuthStateAuthInProgress value,
          $Res Function(AuthStateAuthInProgress) then) =
      _$AuthStateAuthInProgressCopyWithImpl<$Res>;
  $Res call({PasswordInfo info});

  $PasswordInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AuthStateAuthInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateAuthInProgressCopyWith<$Res> {
  _$AuthStateAuthInProgressCopyWithImpl(AuthStateAuthInProgress _value,
      $Res Function(AuthStateAuthInProgress) _then)
      : super(_value, (v) => _then(v as AuthStateAuthInProgress));

  @override
  AuthStateAuthInProgress get _value => super._value as AuthStateAuthInProgress;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AuthStateAuthInProgress(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PasswordInfo,
    ));
  }

  @override
  $PasswordInfoCopyWith<$Res> get info {
    return $PasswordInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AuthStateAuthInProgress implements AuthStateAuthInProgress {
  const _$AuthStateAuthInProgress({required this.info});

  @override
  final PasswordInfo info;

  @override
  String toString() {
    return 'AuthState.authInProgress(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateAuthInProgress &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $AuthStateAuthInProgressCopyWith<AuthStateAuthInProgress> get copyWith =>
      _$AuthStateAuthInProgressCopyWithImpl<AuthStateAuthInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) {
    return authInProgress(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) {
    return authInProgress?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) {
    if (authInProgress != null) {
      return authInProgress(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) {
    return authInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) {
    return authInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (authInProgress != null) {
      return authInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthInProgress implements AuthState {
  const factory AuthStateAuthInProgress({required PasswordInfo info}) =
      _$AuthStateAuthInProgress;

  PasswordInfo get info;
  @JsonKey(ignore: true)
  $AuthStateAuthInProgressCopyWith<AuthStateAuthInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateAuthSuccessCopyWith<$Res> {
  factory $AuthStateAuthSuccessCopyWith(AuthStateAuthSuccess value,
          $Res Function(AuthStateAuthSuccess) then) =
      _$AuthStateAuthSuccessCopyWithImpl<$Res>;
  $Res call({PasswordInfo info});

  $PasswordInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AuthStateAuthSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateAuthSuccessCopyWith<$Res> {
  _$AuthStateAuthSuccessCopyWithImpl(
      AuthStateAuthSuccess _value, $Res Function(AuthStateAuthSuccess) _then)
      : super(_value, (v) => _then(v as AuthStateAuthSuccess));

  @override
  AuthStateAuthSuccess get _value => super._value as AuthStateAuthSuccess;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AuthStateAuthSuccess(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PasswordInfo,
    ));
  }

  @override
  $PasswordInfoCopyWith<$Res> get info {
    return $PasswordInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AuthStateAuthSuccess implements AuthStateAuthSuccess {
  const _$AuthStateAuthSuccess({required this.info});

  @override
  final PasswordInfo info;

  @override
  String toString() {
    return 'AuthState.authSuccess(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateAuthSuccess &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $AuthStateAuthSuccessCopyWith<AuthStateAuthSuccess> get copyWith =>
      _$AuthStateAuthSuccessCopyWithImpl<AuthStateAuthSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) {
    return authSuccess(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) {
    return authSuccess?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) {
    return authSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) {
    return authSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthSuccess implements AuthState {
  const factory AuthStateAuthSuccess({required PasswordInfo info}) =
      _$AuthStateAuthSuccess;

  PasswordInfo get info;
  @JsonKey(ignore: true)
  $AuthStateAuthSuccessCopyWith<AuthStateAuthSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateAuthFailedCopyWith<$Res> {
  factory $AuthStateAuthFailedCopyWith(
          AuthStateAuthFailed value, $Res Function(AuthStateAuthFailed) then) =
      _$AuthStateAuthFailedCopyWithImpl<$Res>;
  $Res call({PasswordInfo info, AuthError reason});

  $PasswordInfoCopyWith<$Res> get info;
  $AuthErrorCopyWith<$Res> get reason;
}

/// @nodoc
class _$AuthStateAuthFailedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateAuthFailedCopyWith<$Res> {
  _$AuthStateAuthFailedCopyWithImpl(
      AuthStateAuthFailed _value, $Res Function(AuthStateAuthFailed) _then)
      : super(_value, (v) => _then(v as AuthStateAuthFailed));

  @override
  AuthStateAuthFailed get _value => super._value as AuthStateAuthFailed;

  @override
  $Res call({
    Object? info = freezed,
    Object? reason = freezed,
  }) {
    return _then(AuthStateAuthFailed(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PasswordInfo,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as AuthError,
    ));
  }

  @override
  $PasswordInfoCopyWith<$Res> get info {
    return $PasswordInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $AuthErrorCopyWith<$Res> get reason {
    return $AuthErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$AuthStateAuthFailed implements AuthStateAuthFailed {
  const _$AuthStateAuthFailed({required this.info, required this.reason});

  @override
  final PasswordInfo info;
  @override
  final AuthError reason;

  @override
  String toString() {
    return 'AuthState.authFailed(info: $info, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateAuthFailed &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  $AuthStateAuthFailedCopyWith<AuthStateAuthFailed> get copyWith =>
      _$AuthStateAuthFailedCopyWithImpl<AuthStateAuthFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noPassword,
    required TResult Function() passwordNotLoaded,
    required TResult Function(PasswordInfo info) passwordLoaded,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        loadPasswordFailed,
    required TResult Function(PasswordInfo info) authInProgress,
    required TResult Function(PasswordInfo info) authSuccess,
    required TResult Function(PasswordInfo info, AuthError reason) authFailed,
  }) {
    return authFailed(info, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
  }) {
    return authFailed?.call(info, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noPassword,
    TResult Function()? passwordNotLoaded,
    TResult Function(PasswordInfo info)? passwordLoaded,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult Function(PasswordInfo info)? authInProgress,
    TResult Function(PasswordInfo info)? authSuccess,
    TResult Function(PasswordInfo info, AuthError reason)? authFailed,
    required TResult orElse(),
  }) {
    if (authFailed != null) {
      return authFailed(info, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateNoPassword value) noPassword,
    required TResult Function(AuthStatePasswordNotLoaded value)
        passwordNotLoaded,
    required TResult Function(AuthStatePasswordLoaded value) passwordLoaded,
    required TResult Function(AuthStateLoadPasswordFailed value)
        loadPasswordFailed,
    required TResult Function(AuthStateAuthInProgress value) authInProgress,
    required TResult Function(AuthStateAuthSuccess value) authSuccess,
    required TResult Function(AuthStateAuthFailed value) authFailed,
  }) {
    return authFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
  }) {
    return authFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateNoPassword value)? noPassword,
    TResult Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult Function(AuthStateAuthInProgress value)? authInProgress,
    TResult Function(AuthStateAuthSuccess value)? authSuccess,
    TResult Function(AuthStateAuthFailed value)? authFailed,
    required TResult orElse(),
  }) {
    if (authFailed != null) {
      return authFailed(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthFailed implements AuthState {
  const factory AuthStateAuthFailed(
      {required PasswordInfo info,
      required AuthError reason}) = _$AuthStateAuthFailed;

  PasswordInfo get info;
  AuthError get reason;
  @JsonKey(ignore: true)
  $AuthStateAuthFailedCopyWith<AuthStateAuthFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthErrorTearOff {
  const _$AuthErrorTearOff();

  _AuthErrorEmptyPassword emptyPassword() {
    return const _AuthErrorEmptyPassword();
  }

  _AuthErrorWrongPassword wrongPassword() {
    return const _AuthErrorWrongPassword();
  }
}

/// @nodoc
const $AuthError = _$AuthErrorTearOff();

/// @nodoc
mixin _$AuthError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyPassword,
    required TResult Function() wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyPassword,
    TResult Function()? wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyPassword,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthErrorEmptyPassword value) emptyPassword,
    required TResult Function(_AuthErrorWrongPassword value) wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult Function(_AuthErrorWrongPassword value)? wrongPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult Function(_AuthErrorWrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthErrorCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) then) =
      _$AuthErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res> implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._value, this._then);

  final AuthError _value;
  // ignore: unused_field
  final $Res Function(AuthError) _then;
}

/// @nodoc
abstract class _$AuthErrorEmptyPasswordCopyWith<$Res> {
  factory _$AuthErrorEmptyPasswordCopyWith(_AuthErrorEmptyPassword value,
          $Res Function(_AuthErrorEmptyPassword) then) =
      __$AuthErrorEmptyPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthErrorEmptyPasswordCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res>
    implements _$AuthErrorEmptyPasswordCopyWith<$Res> {
  __$AuthErrorEmptyPasswordCopyWithImpl(_AuthErrorEmptyPassword _value,
      $Res Function(_AuthErrorEmptyPassword) _then)
      : super(_value, (v) => _then(v as _AuthErrorEmptyPassword));

  @override
  _AuthErrorEmptyPassword get _value => super._value as _AuthErrorEmptyPassword;
}

/// @nodoc

class _$_AuthErrorEmptyPassword implements _AuthErrorEmptyPassword {
  const _$_AuthErrorEmptyPassword();

  @override
  String toString() {
    return 'AuthError.emptyPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthErrorEmptyPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyPassword,
    required TResult Function() wrongPassword,
  }) {
    return emptyPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyPassword,
    TResult Function()? wrongPassword,
  }) {
    return emptyPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyPassword,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (emptyPassword != null) {
      return emptyPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthErrorEmptyPassword value) emptyPassword,
    required TResult Function(_AuthErrorWrongPassword value) wrongPassword,
  }) {
    return emptyPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult Function(_AuthErrorWrongPassword value)? wrongPassword,
  }) {
    return emptyPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult Function(_AuthErrorWrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (emptyPassword != null) {
      return emptyPassword(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorEmptyPassword implements AuthError {
  const factory _AuthErrorEmptyPassword() = _$_AuthErrorEmptyPassword;
}

/// @nodoc
abstract class _$AuthErrorWrongPasswordCopyWith<$Res> {
  factory _$AuthErrorWrongPasswordCopyWith(_AuthErrorWrongPassword value,
          $Res Function(_AuthErrorWrongPassword) then) =
      __$AuthErrorWrongPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthErrorWrongPasswordCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res>
    implements _$AuthErrorWrongPasswordCopyWith<$Res> {
  __$AuthErrorWrongPasswordCopyWithImpl(_AuthErrorWrongPassword _value,
      $Res Function(_AuthErrorWrongPassword) _then)
      : super(_value, (v) => _then(v as _AuthErrorWrongPassword));

  @override
  _AuthErrorWrongPassword get _value => super._value as _AuthErrorWrongPassword;
}

/// @nodoc

class _$_AuthErrorWrongPassword implements _AuthErrorWrongPassword {
  const _$_AuthErrorWrongPassword();

  @override
  String toString() {
    return 'AuthError.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthErrorWrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyPassword,
    required TResult Function() wrongPassword,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyPassword,
    TResult Function()? wrongPassword,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyPassword,
    TResult Function()? wrongPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthErrorEmptyPassword value) emptyPassword,
    required TResult Function(_AuthErrorWrongPassword value) wrongPassword,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult Function(_AuthErrorWrongPassword value)? wrongPassword,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult Function(_AuthErrorWrongPassword value)? wrongPassword,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorWrongPassword implements AuthError {
  const factory _AuthErrorWrongPassword() = _$_AuthErrorWrongPassword;
}
