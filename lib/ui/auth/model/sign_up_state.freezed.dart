// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpStateInitialImplCopyWith<$Res> {
  factory _$$SignUpStateInitialImplCopyWith(_$SignUpStateInitialImpl value,
          $Res Function(_$SignUpStateInitialImpl) then) =
      __$$SignUpStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Password password, RepeatPassword repeatPassword});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class __$$SignUpStateInitialImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateInitialImpl>
    implements _$$SignUpStateInitialImplCopyWith<$Res> {
  __$$SignUpStateInitialImplCopyWithImpl(_$SignUpStateInitialImpl _value,
      $Res Function(_$SignUpStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_$SignUpStateInitialImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStateInitialImpl
    with DiagnosticableTreeMixin
    implements SignUpStateInitial {
  const _$SignUpStateInitialImpl(
      {this.password = const Password(),
      this.repeatPassword = const RepeatPassword()});

  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final RepeatPassword repeatPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.initial(password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.initial'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateInitialImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, repeatPassword);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateInitialImplCopyWith<_$SignUpStateInitialImpl> get copyWith =>
      __$$SignUpStateInitialImplCopyWithImpl<_$SignUpStateInitialImpl>(
          this, _$identity);
}

abstract class SignUpStateInitial implements SignUpState {
  const factory SignUpStateInitial(
      {final Password password,
      final RepeatPassword repeatPassword}) = _$SignUpStateInitialImpl;

  Password get password;
  RepeatPassword get repeatPassword;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateInitialImplCopyWith<_$SignUpStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStatePasswordChangedImplCopyWith<$Res> {
  factory _$$SignUpStatePasswordChangedImplCopyWith(
          _$SignUpStatePasswordChangedImpl value,
          $Res Function(_$SignUpStatePasswordChangedImpl) then) =
      __$$SignUpStatePasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Password password, RepeatPassword repeatPassword});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class __$$SignUpStatePasswordChangedImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStatePasswordChangedImpl>
    implements _$$SignUpStatePasswordChangedImplCopyWith<$Res> {
  __$$SignUpStatePasswordChangedImplCopyWithImpl(
      _$SignUpStatePasswordChangedImpl _value,
      $Res Function(_$SignUpStatePasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_$SignUpStatePasswordChangedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStatePasswordChangedImpl
    with DiagnosticableTreeMixin
    implements SignUpStatePasswordChanged {
  const _$SignUpStatePasswordChangedImpl(
      {required this.password, required this.repeatPassword});

  @override
  final Password password;
  @override
  final RepeatPassword repeatPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.passwordChanged(password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.passwordChanged'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStatePasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, repeatPassword);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStatePasswordChangedImplCopyWith<_$SignUpStatePasswordChangedImpl>
      get copyWith => __$$SignUpStatePasswordChangedImplCopyWithImpl<
          _$SignUpStatePasswordChangedImpl>(this, _$identity);
}

abstract class SignUpStatePasswordChanged implements SignUpState {
  const factory SignUpStatePasswordChanged(
          {required final Password password,
          required final RepeatPassword repeatPassword}) =
      _$SignUpStatePasswordChangedImpl;

  Password get password;
  RepeatPassword get repeatPassword;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStatePasswordChangedImplCopyWith<_$SignUpStatePasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateInvalidPasswordImplCopyWith<$Res> {
  factory _$$SignUpStateInvalidPasswordImplCopyWith(
          _$SignUpStateInvalidPasswordImpl value,
          $Res Function(_$SignUpStateInvalidPasswordImpl) then) =
      __$$SignUpStateInvalidPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Password password, RepeatPassword repeatPassword});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class __$$SignUpStateInvalidPasswordImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateInvalidPasswordImpl>
    implements _$$SignUpStateInvalidPasswordImplCopyWith<$Res> {
  __$$SignUpStateInvalidPasswordImplCopyWithImpl(
      _$SignUpStateInvalidPasswordImpl _value,
      $Res Function(_$SignUpStateInvalidPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_$SignUpStateInvalidPasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStateInvalidPasswordImpl
    with DiagnosticableTreeMixin
    implements SignUpStateInvalidPassword {
  const _$SignUpStateInvalidPasswordImpl(
      {required this.password, required this.repeatPassword});

  @override
  final Password password;
  @override
  final RepeatPassword repeatPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.invalidPassword(password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.invalidPassword'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateInvalidPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, repeatPassword);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateInvalidPasswordImplCopyWith<_$SignUpStateInvalidPasswordImpl>
      get copyWith => __$$SignUpStateInvalidPasswordImplCopyWithImpl<
          _$SignUpStateInvalidPasswordImpl>(this, _$identity);
}

abstract class SignUpStateInvalidPassword implements SignUpState {
  const factory SignUpStateInvalidPassword(
          {required final Password password,
          required final RepeatPassword repeatPassword}) =
      _$SignUpStateInvalidPasswordImpl;

  Password get password;
  RepeatPassword get repeatPassword;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateInvalidPasswordImplCopyWith<_$SignUpStateInvalidPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStatePasswordMismatchImplCopyWith<$Res> {
  factory _$$SignUpStatePasswordMismatchImplCopyWith(
          _$SignUpStatePasswordMismatchImpl value,
          $Res Function(_$SignUpStatePasswordMismatchImpl) then) =
      __$$SignUpStatePasswordMismatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Password password, RepeatPassword repeatPassword});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class __$$SignUpStatePasswordMismatchImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStatePasswordMismatchImpl>
    implements _$$SignUpStatePasswordMismatchImplCopyWith<$Res> {
  __$$SignUpStatePasswordMismatchImplCopyWithImpl(
      _$SignUpStatePasswordMismatchImpl _value,
      $Res Function(_$SignUpStatePasswordMismatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? repeatPassword = null,
  }) {
    return _then(_$SignUpStatePasswordMismatchImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStatePasswordMismatchImpl
    with DiagnosticableTreeMixin
    implements SignUpStatePasswordMismatch {
  const _$SignUpStatePasswordMismatchImpl(
      {required this.password, required this.repeatPassword});

  @override
  final Password password;
  @override
  final RepeatPassword repeatPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.passwordMismatch(password: $password, repeatPassword: $repeatPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.passwordMismatch'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStatePasswordMismatchImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, repeatPassword);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStatePasswordMismatchImplCopyWith<_$SignUpStatePasswordMismatchImpl>
      get copyWith => __$$SignUpStatePasswordMismatchImplCopyWithImpl<
          _$SignUpStatePasswordMismatchImpl>(this, _$identity);
}

abstract class SignUpStatePasswordMismatch implements SignUpState {
  const factory SignUpStatePasswordMismatch(
          {required final Password password,
          required final RepeatPassword repeatPassword}) =
      _$SignUpStatePasswordMismatchImpl;

  Password get password;
  RepeatPassword get repeatPassword;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStatePasswordMismatchImplCopyWith<_$SignUpStatePasswordMismatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateSavingPasswordImplCopyWith<$Res> {
  factory _$$SignUpStateSavingPasswordImplCopyWith(
          _$SignUpStateSavingPasswordImpl value,
          $Res Function(_$SignUpStateSavingPasswordImpl) then) =
      __$$SignUpStateSavingPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateSavingPasswordImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSavingPasswordImpl>
    implements _$$SignUpStateSavingPasswordImplCopyWith<$Res> {
  __$$SignUpStateSavingPasswordImplCopyWithImpl(
      _$SignUpStateSavingPasswordImpl _value,
      $Res Function(_$SignUpStateSavingPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpStateSavingPasswordImpl
    with DiagnosticableTreeMixin
    implements SignUpStateSavingPassword {
  const _$SignUpStateSavingPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.savingPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignUpState.savingPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSavingPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignUpStateSavingPassword implements SignUpState {
  const factory SignUpStateSavingPassword() = _$SignUpStateSavingPasswordImpl;
}

/// @nodoc
abstract class _$$SignUpStateSavedAndAuthorizedImplCopyWith<$Res> {
  factory _$$SignUpStateSavedAndAuthorizedImplCopyWith(
          _$SignUpStateSavedAndAuthorizedImpl value,
          $Res Function(_$SignUpStateSavedAndAuthorizedImpl) then) =
      __$$SignUpStateSavedAndAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateSavedAndAuthorizedImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSavedAndAuthorizedImpl>
    implements _$$SignUpStateSavedAndAuthorizedImplCopyWith<$Res> {
  __$$SignUpStateSavedAndAuthorizedImplCopyWithImpl(
      _$SignUpStateSavedAndAuthorizedImpl _value,
      $Res Function(_$SignUpStateSavedAndAuthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpStateSavedAndAuthorizedImpl
    with DiagnosticableTreeMixin
    implements SignUpStateSavedAndAuthorized {
  const _$SignUpStateSavedAndAuthorizedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.savedAndAuthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SignUpState.savedAndAuthorized'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSavedAndAuthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignUpStateSavedAndAuthorized implements SignUpState {
  const factory SignUpStateSavedAndAuthorized() =
      _$SignUpStateSavedAndAuthorizedImpl;
}

/// @nodoc
abstract class _$$SignUpStateSavePasswordFailedImplCopyWith<$Res> {
  factory _$$SignUpStateSavePasswordFailedImplCopyWith(
          _$SignUpStateSavePasswordFailedImpl value,
          $Res Function(_$SignUpStateSavePasswordFailedImpl) then) =
      __$$SignUpStateSavePasswordFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Password password,
      RepeatPassword repeatPassword,
      Object? error,
      StackTrace? stackTrace});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class __$$SignUpStateSavePasswordFailedImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSavePasswordFailedImpl>
    implements _$$SignUpStateSavePasswordFailedImplCopyWith<$Res> {
  __$$SignUpStateSavePasswordFailedImplCopyWithImpl(
      _$SignUpStateSavePasswordFailedImpl _value,
      $Res Function(_$SignUpStateSavePasswordFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? repeatPassword = null,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$SignUpStateSavePasswordFailedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStateSavePasswordFailedImpl
    with DiagnosticableTreeMixin
    implements SignUpStateSavePasswordFailed {
  const _$SignUpStateSavePasswordFailedImpl(
      {required this.password,
      required this.repeatPassword,
      this.error,
      this.stackTrace});

  @override
  final Password password;
  @override
  final RepeatPassword repeatPassword;
  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.savePasswordFailed(password: $password, repeatPassword: $repeatPassword, error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.savePasswordFailed'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSavePasswordFailedImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, repeatPassword,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateSavePasswordFailedImplCopyWith<
          _$SignUpStateSavePasswordFailedImpl>
      get copyWith => __$$SignUpStateSavePasswordFailedImplCopyWithImpl<
          _$SignUpStateSavePasswordFailedImpl>(this, _$identity);
}

abstract class SignUpStateSavePasswordFailed implements SignUpState {
  const factory SignUpStateSavePasswordFailed(
      {required final Password password,
      required final RepeatPassword repeatPassword,
      final Object? error,
      final StackTrace? stackTrace}) = _$SignUpStateSavePasswordFailedImpl;

  Password get password;
  RepeatPassword get repeatPassword;
  Object? get error;
  StackTrace? get stackTrace;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateSavePasswordFailedImplCopyWith<
          _$SignUpStateSavePasswordFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Password {
  String get value => throw _privateConstructorUsedError;
  PasswordError? get error => throw _privateConstructorUsedError;

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordCopyWith<Password> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCopyWith<$Res> {
  factory $PasswordCopyWith(Password value, $Res Function(Password) then) =
      _$PasswordCopyWithImpl<$Res, Password>;
  @useResult
  $Res call({String value, PasswordError? error});

  $PasswordErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$PasswordCopyWithImpl<$Res, $Val extends Password>
    implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
    ) as $Val);
  }

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $PasswordErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasswordImplCopyWith<$Res>
    implements $PasswordCopyWith<$Res> {
  factory _$$PasswordImplCopyWith(
          _$PasswordImpl value, $Res Function(_$PasswordImpl) then) =
      __$$PasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, PasswordError? error});

  @override
  $PasswordErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$PasswordImplCopyWithImpl<$Res>
    extends _$PasswordCopyWithImpl<$Res, _$PasswordImpl>
    implements _$$PasswordImplCopyWith<$Res> {
  __$$PasswordImplCopyWithImpl(
      _$PasswordImpl _value, $Res Function(_$PasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = freezed,
  }) {
    return _then(_$PasswordImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
    ));
  }
}

/// @nodoc

class _$PasswordImpl with DiagnosticableTreeMixin implements _Password {
  const _$PasswordImpl({this.value = '', this.error});

  @override
  @JsonKey()
  final String value;
  @override
  final PasswordError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Password(value: $value, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Password'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, error);

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordImplCopyWith<_$PasswordImpl> get copyWith =>
      __$$PasswordImplCopyWithImpl<_$PasswordImpl>(this, _$identity);
}

abstract class _Password implements Password {
  const factory _Password({final String value, final PasswordError? error}) =
      _$PasswordImpl;

  @override
  String get value;
  @override
  PasswordError? get error;

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordImplCopyWith<_$PasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RepeatPassword {
  String get value => throw _privateConstructorUsedError;
  RepeatPasswordError? get error => throw _privateConstructorUsedError;

  /// Create a copy of RepeatPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepeatPasswordCopyWith<RepeatPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatPasswordCopyWith<$Res> {
  factory $RepeatPasswordCopyWith(
          RepeatPassword value, $Res Function(RepeatPassword) then) =
      _$RepeatPasswordCopyWithImpl<$Res, RepeatPassword>;
  @useResult
  $Res call({String value, RepeatPasswordError? error});

  $RepeatPasswordErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$RepeatPasswordCopyWithImpl<$Res, $Val extends RepeatPassword>
    implements $RepeatPasswordCopyWith<$Res> {
  _$RepeatPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepeatPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordError?,
    ) as $Val);
  }

  /// Create a copy of RepeatPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepeatPasswordErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $RepeatPasswordErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepeatPasswordImplCopyWith<$Res>
    implements $RepeatPasswordCopyWith<$Res> {
  factory _$$RepeatPasswordImplCopyWith(_$RepeatPasswordImpl value,
          $Res Function(_$RepeatPasswordImpl) then) =
      __$$RepeatPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, RepeatPasswordError? error});

  @override
  $RepeatPasswordErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$RepeatPasswordImplCopyWithImpl<$Res>
    extends _$RepeatPasswordCopyWithImpl<$Res, _$RepeatPasswordImpl>
    implements _$$RepeatPasswordImplCopyWith<$Res> {
  __$$RepeatPasswordImplCopyWithImpl(
      _$RepeatPasswordImpl _value, $Res Function(_$RepeatPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepeatPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? error = freezed,
  }) {
    return _then(_$RepeatPasswordImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordError?,
    ));
  }
}

/// @nodoc

class _$RepeatPasswordImpl
    with DiagnosticableTreeMixin
    implements _RepeatPassword {
  const _$RepeatPasswordImpl({this.value = '', this.error});

  @override
  @JsonKey()
  final String value;
  @override
  final RepeatPasswordError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepeatPassword(value: $value, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepeatPassword'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatPasswordImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, error);

  /// Create a copy of RepeatPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepeatPasswordImplCopyWith<_$RepeatPasswordImpl> get copyWith =>
      __$$RepeatPasswordImplCopyWithImpl<_$RepeatPasswordImpl>(
          this, _$identity);
}

abstract class _RepeatPassword implements RepeatPassword {
  const factory _RepeatPassword(
      {final String value,
      final RepeatPasswordError? error}) = _$RepeatPasswordImpl;

  @override
  String get value;
  @override
  RepeatPasswordError? get error;

  /// Create a copy of RepeatPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepeatPasswordImplCopyWith<_$RepeatPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasswordError {}

/// @nodoc
abstract class $PasswordErrorCopyWith<$Res> {
  factory $PasswordErrorCopyWith(
          PasswordError value, $Res Function(PasswordError) then) =
      _$PasswordErrorCopyWithImpl<$Res, PasswordError>;
}

/// @nodoc
class _$PasswordErrorCopyWithImpl<$Res, $Val extends PasswordError>
    implements $PasswordErrorCopyWith<$Res> {
  _$PasswordErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PasswordErrorEmptyImplCopyWith<$Res> {
  factory _$$PasswordErrorEmptyImplCopyWith(_$PasswordErrorEmptyImpl value,
          $Res Function(_$PasswordErrorEmptyImpl) then) =
      __$$PasswordErrorEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordErrorEmptyImplCopyWithImpl<$Res>
    extends _$PasswordErrorCopyWithImpl<$Res, _$PasswordErrorEmptyImpl>
    implements _$$PasswordErrorEmptyImplCopyWith<$Res> {
  __$$PasswordErrorEmptyImplCopyWithImpl(_$PasswordErrorEmptyImpl _value,
      $Res Function(_$PasswordErrorEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordErrorEmptyImpl
    with DiagnosticableTreeMixin
    implements PasswordErrorEmpty {
  const _$PasswordErrorEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordError.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PasswordError.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PasswordErrorEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class PasswordErrorEmpty implements PasswordError {
  const factory PasswordErrorEmpty() = _$PasswordErrorEmptyImpl;
}

/// @nodoc
abstract class _$$PasswordErrorTooShortImplCopyWith<$Res> {
  factory _$$PasswordErrorTooShortImplCopyWith(
          _$PasswordErrorTooShortImpl value,
          $Res Function(_$PasswordErrorTooShortImpl) then) =
      __$$PasswordErrorTooShortImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordErrorTooShortImplCopyWithImpl<$Res>
    extends _$PasswordErrorCopyWithImpl<$Res, _$PasswordErrorTooShortImpl>
    implements _$$PasswordErrorTooShortImplCopyWith<$Res> {
  __$$PasswordErrorTooShortImplCopyWithImpl(_$PasswordErrorTooShortImpl _value,
      $Res Function(_$PasswordErrorTooShortImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordErrorTooShortImpl
    with DiagnosticableTreeMixin
    implements PasswordErrorTooShort {
  const _$PasswordErrorTooShortImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordError.tooShort()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PasswordError.tooShort'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordErrorTooShortImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class PasswordErrorTooShort implements PasswordError {
  const factory PasswordErrorTooShort() = _$PasswordErrorTooShortImpl;
}

/// @nodoc
abstract class _$$PasswordErrorTooLongImplCopyWith<$Res> {
  factory _$$PasswordErrorTooLongImplCopyWith(_$PasswordErrorTooLongImpl value,
          $Res Function(_$PasswordErrorTooLongImpl) then) =
      __$$PasswordErrorTooLongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordErrorTooLongImplCopyWithImpl<$Res>
    extends _$PasswordErrorCopyWithImpl<$Res, _$PasswordErrorTooLongImpl>
    implements _$$PasswordErrorTooLongImplCopyWith<$Res> {
  __$$PasswordErrorTooLongImplCopyWithImpl(_$PasswordErrorTooLongImpl _value,
      $Res Function(_$PasswordErrorTooLongImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordErrorTooLongImpl
    with DiagnosticableTreeMixin
    implements PasswordErrorTooLong {
  const _$PasswordErrorTooLongImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordError.tooLong()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PasswordError.tooLong'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordErrorTooLongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class PasswordErrorTooLong implements PasswordError {
  const factory PasswordErrorTooLong() = _$PasswordErrorTooLongImpl;
}

/// @nodoc
mixin _$RepeatPasswordError {}

/// @nodoc
abstract class $RepeatPasswordErrorCopyWith<$Res> {
  factory $RepeatPasswordErrorCopyWith(
          RepeatPasswordError value, $Res Function(RepeatPasswordError) then) =
      _$RepeatPasswordErrorCopyWithImpl<$Res, RepeatPasswordError>;
}

/// @nodoc
class _$RepeatPasswordErrorCopyWithImpl<$Res, $Val extends RepeatPasswordError>
    implements $RepeatPasswordErrorCopyWith<$Res> {
  _$RepeatPasswordErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepeatPasswordError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RepeatPasswordErrorEmptyImplCopyWith<$Res> {
  factory _$$RepeatPasswordErrorEmptyImplCopyWith(
          _$RepeatPasswordErrorEmptyImpl value,
          $Res Function(_$RepeatPasswordErrorEmptyImpl) then) =
      __$$RepeatPasswordErrorEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepeatPasswordErrorEmptyImplCopyWithImpl<$Res>
    extends _$RepeatPasswordErrorCopyWithImpl<$Res,
        _$RepeatPasswordErrorEmptyImpl>
    implements _$$RepeatPasswordErrorEmptyImplCopyWith<$Res> {
  __$$RepeatPasswordErrorEmptyImplCopyWithImpl(
      _$RepeatPasswordErrorEmptyImpl _value,
      $Res Function(_$RepeatPasswordErrorEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepeatPasswordError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RepeatPasswordErrorEmptyImpl
    with DiagnosticableTreeMixin
    implements RepeatPasswordErrorEmpty {
  const _$RepeatPasswordErrorEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepeatPasswordError.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RepeatPasswordError.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatPasswordErrorEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class RepeatPasswordErrorEmpty implements RepeatPasswordError {
  const factory RepeatPasswordErrorEmpty() = _$RepeatPasswordErrorEmptyImpl;
}

/// @nodoc
abstract class _$$RepeatPasswordErrorMismatchImplCopyWith<$Res> {
  factory _$$RepeatPasswordErrorMismatchImplCopyWith(
          _$RepeatPasswordErrorMismatchImpl value,
          $Res Function(_$RepeatPasswordErrorMismatchImpl) then) =
      __$$RepeatPasswordErrorMismatchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepeatPasswordErrorMismatchImplCopyWithImpl<$Res>
    extends _$RepeatPasswordErrorCopyWithImpl<$Res,
        _$RepeatPasswordErrorMismatchImpl>
    implements _$$RepeatPasswordErrorMismatchImplCopyWith<$Res> {
  __$$RepeatPasswordErrorMismatchImplCopyWithImpl(
      _$RepeatPasswordErrorMismatchImpl _value,
      $Res Function(_$RepeatPasswordErrorMismatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepeatPasswordError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RepeatPasswordErrorMismatchImpl
    with DiagnosticableTreeMixin
    implements RepeatPasswordErrorMismatch {
  const _$RepeatPasswordErrorMismatchImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepeatPasswordError.mismatch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RepeatPasswordError.mismatch'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatPasswordErrorMismatchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class RepeatPasswordErrorMismatch implements RepeatPasswordError {
  const factory RepeatPasswordErrorMismatch() =
      _$RepeatPasswordErrorMismatchImpl;
}

/// @nodoc
mixin _$PasswordValidateResult {}

/// @nodoc
abstract class $PasswordValidateResultCopyWith<$Res> {
  factory $PasswordValidateResultCopyWith(PasswordValidateResult value,
          $Res Function(PasswordValidateResult) then) =
      _$PasswordValidateResultCopyWithImpl<$Res, PasswordValidateResult>;
}

/// @nodoc
class _$PasswordValidateResultCopyWithImpl<$Res,
        $Val extends PasswordValidateResult>
    implements $PasswordValidateResultCopyWith<$Res> {
  _$PasswordValidateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PasswordValidateResultSuccessImplCopyWith<$Res> {
  factory _$$PasswordValidateResultSuccessImplCopyWith(
          _$PasswordValidateResultSuccessImpl value,
          $Res Function(_$PasswordValidateResultSuccessImpl) then) =
      __$$PasswordValidateResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordValidateResultSuccessImplCopyWithImpl<$Res>
    extends _$PasswordValidateResultCopyWithImpl<$Res,
        _$PasswordValidateResultSuccessImpl>
    implements _$$PasswordValidateResultSuccessImplCopyWith<$Res> {
  __$$PasswordValidateResultSuccessImplCopyWithImpl(
      _$PasswordValidateResultSuccessImpl _value,
      $Res Function(_$PasswordValidateResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordValidateResultSuccessImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordValidateResultSuccessImpl
    with DiagnosticableTreeMixin
    implements PasswordValidateResultSuccess {
  const _$PasswordValidateResultSuccessImpl({required this.password});

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordValidateResult.success(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordValidateResult.success'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordValidateResultSuccessImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of PasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordValidateResultSuccessImplCopyWith<
          _$PasswordValidateResultSuccessImpl>
      get copyWith => __$$PasswordValidateResultSuccessImplCopyWithImpl<
          _$PasswordValidateResultSuccessImpl>(this, _$identity);
}

abstract class PasswordValidateResultSuccess implements PasswordValidateResult {
  const factory PasswordValidateResultSuccess(
      {required final String password}) = _$PasswordValidateResultSuccessImpl;

  String get password;

  /// Create a copy of PasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordValidateResultSuccessImplCopyWith<
          _$PasswordValidateResultSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordValidateResultErrorImplCopyWith<$Res> {
  factory _$$PasswordValidateResultErrorImplCopyWith(
          _$PasswordValidateResultErrorImpl value,
          $Res Function(_$PasswordValidateResultErrorImpl) then) =
      __$$PasswordValidateResultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PasswordError reason});

  $PasswordErrorCopyWith<$Res> get reason;
}

/// @nodoc
class __$$PasswordValidateResultErrorImplCopyWithImpl<$Res>
    extends _$PasswordValidateResultCopyWithImpl<$Res,
        _$PasswordValidateResultErrorImpl>
    implements _$$PasswordValidateResultErrorImplCopyWith<$Res> {
  __$$PasswordValidateResultErrorImplCopyWithImpl(
      _$PasswordValidateResultErrorImpl _value,
      $Res Function(_$PasswordValidateResultErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$PasswordValidateResultErrorImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as PasswordError,
    ));
  }

  /// Create a copy of PasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordErrorCopyWith<$Res> get reason {
    return $PasswordErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$PasswordValidateResultErrorImpl
    with DiagnosticableTreeMixin
    implements PasswordValidateResultError {
  const _$PasswordValidateResultErrorImpl({required this.reason});

  @override
  final PasswordError reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordValidateResult.error(reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordValidateResult.error'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordValidateResultErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of PasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordValidateResultErrorImplCopyWith<_$PasswordValidateResultErrorImpl>
      get copyWith => __$$PasswordValidateResultErrorImplCopyWithImpl<
          _$PasswordValidateResultErrorImpl>(this, _$identity);
}

abstract class PasswordValidateResultError implements PasswordValidateResult {
  const factory PasswordValidateResultError(
          {required final PasswordError reason}) =
      _$PasswordValidateResultErrorImpl;

  PasswordError get reason;

  /// Create a copy of PasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordValidateResultErrorImplCopyWith<_$PasswordValidateResultErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RepeatPasswordValidateResult {}

/// @nodoc
abstract class $RepeatPasswordValidateResultCopyWith<$Res> {
  factory $RepeatPasswordValidateResultCopyWith(
          RepeatPasswordValidateResult value,
          $Res Function(RepeatPasswordValidateResult) then) =
      _$RepeatPasswordValidateResultCopyWithImpl<$Res,
          RepeatPasswordValidateResult>;
}

/// @nodoc
class _$RepeatPasswordValidateResultCopyWithImpl<$Res,
        $Val extends RepeatPasswordValidateResult>
    implements $RepeatPasswordValidateResultCopyWith<$Res> {
  _$RepeatPasswordValidateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepeatPasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RepeatPasswordValidateResultSuccessImplCopyWith<$Res> {
  factory _$$RepeatPasswordValidateResultSuccessImplCopyWith(
          _$RepeatPasswordValidateResultSuccessImpl value,
          $Res Function(_$RepeatPasswordValidateResultSuccessImpl) then) =
      __$$RepeatPasswordValidateResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$RepeatPasswordValidateResultSuccessImplCopyWithImpl<$Res>
    extends _$RepeatPasswordValidateResultCopyWithImpl<$Res,
        _$RepeatPasswordValidateResultSuccessImpl>
    implements _$$RepeatPasswordValidateResultSuccessImplCopyWith<$Res> {
  __$$RepeatPasswordValidateResultSuccessImplCopyWithImpl(
      _$RepeatPasswordValidateResultSuccessImpl _value,
      $Res Function(_$RepeatPasswordValidateResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepeatPasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$RepeatPasswordValidateResultSuccessImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepeatPasswordValidateResultSuccessImpl
    with DiagnosticableTreeMixin
    implements RepeatPasswordValidateResultSuccess {
  const _$RepeatPasswordValidateResultSuccessImpl({required this.password});

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepeatPasswordValidateResult.success(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepeatPasswordValidateResult.success'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatPasswordValidateResultSuccessImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of RepeatPasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepeatPasswordValidateResultSuccessImplCopyWith<
          _$RepeatPasswordValidateResultSuccessImpl>
      get copyWith => __$$RepeatPasswordValidateResultSuccessImplCopyWithImpl<
          _$RepeatPasswordValidateResultSuccessImpl>(this, _$identity);
}

abstract class RepeatPasswordValidateResultSuccess
    implements RepeatPasswordValidateResult {
  const factory RepeatPasswordValidateResultSuccess(
          {required final String password}) =
      _$RepeatPasswordValidateResultSuccessImpl;

  String get password;

  /// Create a copy of RepeatPasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepeatPasswordValidateResultSuccessImplCopyWith<
          _$RepeatPasswordValidateResultSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RepeatPasswordValidateResultErrorImplCopyWith<$Res> {
  factory _$$RepeatPasswordValidateResultErrorImplCopyWith(
          _$RepeatPasswordValidateResultErrorImpl value,
          $Res Function(_$RepeatPasswordValidateResultErrorImpl) then) =
      __$$RepeatPasswordValidateResultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RepeatPasswordError reason});

  $RepeatPasswordErrorCopyWith<$Res> get reason;
}

/// @nodoc
class __$$RepeatPasswordValidateResultErrorImplCopyWithImpl<$Res>
    extends _$RepeatPasswordValidateResultCopyWithImpl<$Res,
        _$RepeatPasswordValidateResultErrorImpl>
    implements _$$RepeatPasswordValidateResultErrorImplCopyWith<$Res> {
  __$$RepeatPasswordValidateResultErrorImplCopyWithImpl(
      _$RepeatPasswordValidateResultErrorImpl _value,
      $Res Function(_$RepeatPasswordValidateResultErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepeatPasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$RepeatPasswordValidateResultErrorImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordError,
    ));
  }

  /// Create a copy of RepeatPasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepeatPasswordErrorCopyWith<$Res> get reason {
    return $RepeatPasswordErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$RepeatPasswordValidateResultErrorImpl
    with DiagnosticableTreeMixin
    implements RepeatPasswordValidateResultError {
  const _$RepeatPasswordValidateResultErrorImpl({required this.reason});

  @override
  final RepeatPasswordError reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepeatPasswordValidateResult.error(reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepeatPasswordValidateResult.error'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeatPasswordValidateResultErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of RepeatPasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepeatPasswordValidateResultErrorImplCopyWith<
          _$RepeatPasswordValidateResultErrorImpl>
      get copyWith => __$$RepeatPasswordValidateResultErrorImplCopyWithImpl<
          _$RepeatPasswordValidateResultErrorImpl>(this, _$identity);
}

abstract class RepeatPasswordValidateResultError
    implements RepeatPasswordValidateResult {
  const factory RepeatPasswordValidateResultError(
          {required final RepeatPasswordError reason}) =
      _$RepeatPasswordValidateResultErrorImpl;

  RepeatPasswordError get reason;

  /// Create a copy of RepeatPasswordValidateResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepeatPasswordValidateResultErrorImplCopyWith<
          _$RepeatPasswordValidateResultErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
