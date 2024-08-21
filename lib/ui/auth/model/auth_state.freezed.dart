// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthStateInitialImplCopyWith<$Res> {
  factory _$$AuthStateInitialImplCopyWith(_$AuthStateInitialImpl value,
          $Res Function(_$AuthStateInitialImpl) then) =
      __$$AuthStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateInitialImpl>
    implements _$$AuthStateInitialImplCopyWith<$Res> {
  __$$AuthStateInitialImplCopyWithImpl(_$AuthStateInitialImpl _value,
      $Res Function(_$AuthStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthStateInitialImpl
    with DiagnosticableTreeMixin
    implements AuthStateInitial {
  const _$AuthStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateInitialImpl);
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
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
  const factory AuthStateInitial() = _$AuthStateInitialImpl;
}

/// @nodoc
abstract class _$$AuthStateNoPasswordImplCopyWith<$Res> {
  factory _$$AuthStateNoPasswordImplCopyWith(_$AuthStateNoPasswordImpl value,
          $Res Function(_$AuthStateNoPasswordImpl) then) =
      __$$AuthStateNoPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateNoPasswordImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateNoPasswordImpl>
    implements _$$AuthStateNoPasswordImplCopyWith<$Res> {
  __$$AuthStateNoPasswordImplCopyWithImpl(_$AuthStateNoPasswordImpl _value,
      $Res Function(_$AuthStateNoPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthStateNoPasswordImpl
    with DiagnosticableTreeMixin
    implements AuthStateNoPassword {
  const _$AuthStateNoPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.noPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.noPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateNoPasswordImpl);
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
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
  const factory AuthStateNoPassword() = _$AuthStateNoPasswordImpl;
}

/// @nodoc
abstract class _$$AuthStatePasswordNotLoadedImplCopyWith<$Res> {
  factory _$$AuthStatePasswordNotLoadedImplCopyWith(
          _$AuthStatePasswordNotLoadedImpl value,
          $Res Function(_$AuthStatePasswordNotLoadedImpl) then) =
      __$$AuthStatePasswordNotLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStatePasswordNotLoadedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStatePasswordNotLoadedImpl>
    implements _$$AuthStatePasswordNotLoadedImplCopyWith<$Res> {
  __$$AuthStatePasswordNotLoadedImplCopyWithImpl(
      _$AuthStatePasswordNotLoadedImpl _value,
      $Res Function(_$AuthStatePasswordNotLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthStatePasswordNotLoadedImpl
    with DiagnosticableTreeMixin
    implements AuthStatePasswordNotLoaded {
  const _$AuthStatePasswordNotLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.passwordNotLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.passwordNotLoaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatePasswordNotLoadedImpl);
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
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
  const factory AuthStatePasswordNotLoaded() = _$AuthStatePasswordNotLoadedImpl;
}

/// @nodoc
abstract class _$$AuthStatePasswordLoadedImplCopyWith<$Res> {
  factory _$$AuthStatePasswordLoadedImplCopyWith(
          _$AuthStatePasswordLoadedImpl value,
          $Res Function(_$AuthStatePasswordLoadedImpl) then) =
      __$$AuthStatePasswordLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PasswordInfo info});

  $PasswordInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AuthStatePasswordLoadedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStatePasswordLoadedImpl>
    implements _$$AuthStatePasswordLoadedImplCopyWith<$Res> {
  __$$AuthStatePasswordLoadedImplCopyWithImpl(
      _$AuthStatePasswordLoadedImpl _value,
      $Res Function(_$AuthStatePasswordLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AuthStatePasswordLoadedImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PasswordInfo,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordInfoCopyWith<$Res> get info {
    return $PasswordInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AuthStatePasswordLoadedImpl
    with DiagnosticableTreeMixin
    implements AuthStatePasswordLoaded {
  const _$AuthStatePasswordLoadedImpl({required this.info});

  @override
  final PasswordInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.passwordLoaded(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.passwordLoaded'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatePasswordLoadedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatePasswordLoadedImplCopyWith<_$AuthStatePasswordLoadedImpl>
      get copyWith => __$$AuthStatePasswordLoadedImplCopyWithImpl<
          _$AuthStatePasswordLoadedImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
  const factory AuthStatePasswordLoaded({required final PasswordInfo info}) =
      _$AuthStatePasswordLoadedImpl;

  PasswordInfo get info;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStatePasswordLoadedImplCopyWith<_$AuthStatePasswordLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateLoadPasswordFailedImplCopyWith<$Res> {
  factory _$$AuthStateLoadPasswordFailedImplCopyWith(
          _$AuthStateLoadPasswordFailedImpl value,
          $Res Function(_$AuthStateLoadPasswordFailedImpl) then) =
      __$$AuthStateLoadPasswordFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$AuthStateLoadPasswordFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadPasswordFailedImpl>
    implements _$$AuthStateLoadPasswordFailedImplCopyWith<$Res> {
  __$$AuthStateLoadPasswordFailedImplCopyWithImpl(
      _$AuthStateLoadPasswordFailedImpl _value,
      $Res Function(_$AuthStateLoadPasswordFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$AuthStateLoadPasswordFailedImpl(
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

class _$AuthStateLoadPasswordFailedImpl
    with DiagnosticableTreeMixin
    implements AuthStateLoadPasswordFailed {
  const _$AuthStateLoadPasswordFailedImpl({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loadPasswordFailed(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.loadPasswordFailed'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateLoadPasswordFailedImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateLoadPasswordFailedImplCopyWith<_$AuthStateLoadPasswordFailedImpl>
      get copyWith => __$$AuthStateLoadPasswordFailedImplCopyWithImpl<
          _$AuthStateLoadPasswordFailedImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
      {final Exception? exception,
      final StackTrace? stackTrace}) = _$AuthStateLoadPasswordFailedImpl;

  Exception? get exception;
  StackTrace? get stackTrace;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateLoadPasswordFailedImplCopyWith<_$AuthStateLoadPasswordFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateAuthInProgressImplCopyWith<$Res> {
  factory _$$AuthStateAuthInProgressImplCopyWith(
          _$AuthStateAuthInProgressImpl value,
          $Res Function(_$AuthStateAuthInProgressImpl) then) =
      __$$AuthStateAuthInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PasswordInfo info});

  $PasswordInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AuthStateAuthInProgressImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthInProgressImpl>
    implements _$$AuthStateAuthInProgressImplCopyWith<$Res> {
  __$$AuthStateAuthInProgressImplCopyWithImpl(
      _$AuthStateAuthInProgressImpl _value,
      $Res Function(_$AuthStateAuthInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AuthStateAuthInProgressImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PasswordInfo,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordInfoCopyWith<$Res> get info {
    return $PasswordInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AuthStateAuthInProgressImpl
    with DiagnosticableTreeMixin
    implements AuthStateAuthInProgress {
  const _$AuthStateAuthInProgressImpl({required this.info});

  @override
  final PasswordInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authInProgress(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authInProgress'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthInProgressImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateAuthInProgressImplCopyWith<_$AuthStateAuthInProgressImpl>
      get copyWith => __$$AuthStateAuthInProgressImplCopyWithImpl<
          _$AuthStateAuthInProgressImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
  const factory AuthStateAuthInProgress({required final PasswordInfo info}) =
      _$AuthStateAuthInProgressImpl;

  PasswordInfo get info;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateAuthInProgressImplCopyWith<_$AuthStateAuthInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateAuthSuccessImplCopyWith<$Res> {
  factory _$$AuthStateAuthSuccessImplCopyWith(_$AuthStateAuthSuccessImpl value,
          $Res Function(_$AuthStateAuthSuccessImpl) then) =
      __$$AuthStateAuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PasswordInfo info});

  $PasswordInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AuthStateAuthSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthSuccessImpl>
    implements _$$AuthStateAuthSuccessImplCopyWith<$Res> {
  __$$AuthStateAuthSuccessImplCopyWithImpl(_$AuthStateAuthSuccessImpl _value,
      $Res Function(_$AuthStateAuthSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AuthStateAuthSuccessImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PasswordInfo,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordInfoCopyWith<$Res> get info {
    return $PasswordInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$AuthStateAuthSuccessImpl
    with DiagnosticableTreeMixin
    implements AuthStateAuthSuccess {
  const _$AuthStateAuthSuccessImpl({required this.info});

  @override
  final PasswordInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authSuccess(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authSuccess'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthSuccessImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateAuthSuccessImplCopyWith<_$AuthStateAuthSuccessImpl>
      get copyWith =>
          __$$AuthStateAuthSuccessImplCopyWithImpl<_$AuthStateAuthSuccessImpl>(
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
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
  const factory AuthStateAuthSuccess({required final PasswordInfo info}) =
      _$AuthStateAuthSuccessImpl;

  PasswordInfo get info;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateAuthSuccessImplCopyWith<_$AuthStateAuthSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateAuthFailedImplCopyWith<$Res> {
  factory _$$AuthStateAuthFailedImplCopyWith(_$AuthStateAuthFailedImpl value,
          $Res Function(_$AuthStateAuthFailedImpl) then) =
      __$$AuthStateAuthFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PasswordInfo info, AuthError reason});

  $PasswordInfoCopyWith<$Res> get info;
  $AuthErrorCopyWith<$Res> get reason;
}

/// @nodoc
class __$$AuthStateAuthFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthFailedImpl>
    implements _$$AuthStateAuthFailedImplCopyWith<$Res> {
  __$$AuthStateAuthFailedImplCopyWithImpl(_$AuthStateAuthFailedImpl _value,
      $Res Function(_$AuthStateAuthFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? reason = null,
  }) {
    return _then(_$AuthStateAuthFailedImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PasswordInfo,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as AuthError,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordInfoCopyWith<$Res> get info {
    return $PasswordInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthErrorCopyWith<$Res> get reason {
    return $AuthErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$AuthStateAuthFailedImpl
    with DiagnosticableTreeMixin
    implements AuthStateAuthFailed {
  const _$AuthStateAuthFailedImpl({required this.info, required this.reason});

  @override
  final PasswordInfo info;
  @override
  final AuthError reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authFailed(info: $info, reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authFailed'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthFailedImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, reason);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateAuthFailedImplCopyWith<_$AuthStateAuthFailedImpl> get copyWith =>
      __$$AuthStateAuthFailedImplCopyWithImpl<_$AuthStateAuthFailedImpl>(
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
    return authFailed(info, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noPassword,
    TResult? Function()? passwordNotLoaded,
    TResult? Function(PasswordInfo info)? passwordLoaded,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        loadPasswordFailed,
    TResult? Function(PasswordInfo info)? authInProgress,
    TResult? Function(PasswordInfo info)? authSuccess,
    TResult? Function(PasswordInfo info, AuthError reason)? authFailed,
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
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateNoPassword value)? noPassword,
    TResult? Function(AuthStatePasswordNotLoaded value)? passwordNotLoaded,
    TResult? Function(AuthStatePasswordLoaded value)? passwordLoaded,
    TResult? Function(AuthStateLoadPasswordFailed value)? loadPasswordFailed,
    TResult? Function(AuthStateAuthInProgress value)? authInProgress,
    TResult? Function(AuthStateAuthSuccess value)? authSuccess,
    TResult? Function(AuthStateAuthFailed value)? authFailed,
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
      {required final PasswordInfo info,
      required final AuthError reason}) = _$AuthStateAuthFailedImpl;

  PasswordInfo get info;
  AuthError get reason;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateAuthFailedImplCopyWith<_$AuthStateAuthFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function()? emptyPassword,
    TResult? Function()? wrongPassword,
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
    TResult? Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult? Function(_AuthErrorWrongPassword value)? wrongPassword,
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
      _$AuthErrorCopyWithImpl<$Res, AuthError>;
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res, $Val extends AuthError>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthErrorEmptyPasswordImplCopyWith<$Res> {
  factory _$$AuthErrorEmptyPasswordImplCopyWith(
          _$AuthErrorEmptyPasswordImpl value,
          $Res Function(_$AuthErrorEmptyPasswordImpl) then) =
      __$$AuthErrorEmptyPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthErrorEmptyPasswordImplCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res, _$AuthErrorEmptyPasswordImpl>
    implements _$$AuthErrorEmptyPasswordImplCopyWith<$Res> {
  __$$AuthErrorEmptyPasswordImplCopyWithImpl(
      _$AuthErrorEmptyPasswordImpl _value,
      $Res Function(_$AuthErrorEmptyPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthErrorEmptyPasswordImpl
    with DiagnosticableTreeMixin
    implements _AuthErrorEmptyPassword {
  const _$AuthErrorEmptyPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthError.emptyPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthError.emptyPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorEmptyPasswordImpl);
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
    TResult? Function()? emptyPassword,
    TResult? Function()? wrongPassword,
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
    TResult? Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult? Function(_AuthErrorWrongPassword value)? wrongPassword,
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
  const factory _AuthErrorEmptyPassword() = _$AuthErrorEmptyPasswordImpl;
}

/// @nodoc
abstract class _$$AuthErrorWrongPasswordImplCopyWith<$Res> {
  factory _$$AuthErrorWrongPasswordImplCopyWith(
          _$AuthErrorWrongPasswordImpl value,
          $Res Function(_$AuthErrorWrongPasswordImpl) then) =
      __$$AuthErrorWrongPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthErrorWrongPasswordImplCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res, _$AuthErrorWrongPasswordImpl>
    implements _$$AuthErrorWrongPasswordImplCopyWith<$Res> {
  __$$AuthErrorWrongPasswordImplCopyWithImpl(
      _$AuthErrorWrongPasswordImpl _value,
      $Res Function(_$AuthErrorWrongPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthErrorWrongPasswordImpl
    with DiagnosticableTreeMixin
    implements _AuthErrorWrongPassword {
  const _$AuthErrorWrongPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthError.wrongPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthError.wrongPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorWrongPasswordImpl);
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
    TResult? Function()? emptyPassword,
    TResult? Function()? wrongPassword,
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
    TResult? Function(_AuthErrorEmptyPassword value)? emptyPassword,
    TResult? Function(_AuthErrorWrongPassword value)? wrongPassword,
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
  const factory _AuthErrorWrongPassword() = _$AuthErrorWrongPasswordImpl;
}
