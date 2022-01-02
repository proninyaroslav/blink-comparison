// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  SignUpStateInitial initial(
      {Password password = const Password(),
      RepeatPassword repeatPassword = const RepeatPassword()}) {
    return SignUpStateInitial(
      password: password,
      repeatPassword: repeatPassword,
    );
  }

  SignUpStatePasswordChanged passwordChanged(
      {required Password password, required RepeatPassword repeatPassword}) {
    return SignUpStatePasswordChanged(
      password: password,
      repeatPassword: repeatPassword,
    );
  }

  SignUpStateInvalidPassword invalidPassword(
      {required Password password, required RepeatPassword repeatPassword}) {
    return SignUpStateInvalidPassword(
      password: password,
      repeatPassword: repeatPassword,
    );
  }

  SignUpStatePasswordMismatch passwordMismatch(
      {required Password password, required RepeatPassword repeatPassword}) {
    return SignUpStatePasswordMismatch(
      password: password,
      repeatPassword: repeatPassword,
    );
  }

  SignUpStateSavingPassword savingPassword() {
    return const SignUpStateSavingPassword();
  }

  SignUpStatePasswordSaved passwordSaved() {
    return const SignUpStatePasswordSaved();
  }

  SignUpStateSavePasswordFailed savePasswordFailed(
      {required Password password,
      required RepeatPassword repeatPassword,
      Exception? exception,
      StackTrace? stackTrace}) {
    return SignUpStateSavePasswordFailed(
      password: password,
      repeatPassword: repeatPassword,
      exception: exception,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password password, RepeatPassword repeatPassword)
        initial,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordChanged,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        invalidPassword,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordMismatch,
    required TResult Function() savingPassword,
    required TResult Function() passwordSaved,
    required TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)
        savePasswordFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStatePasswordChanged value) passwordChanged,
    required TResult Function(SignUpStateInvalidPassword value) invalidPassword,
    required TResult Function(SignUpStatePasswordMismatch value)
        passwordMismatch,
    required TResult Function(SignUpStateSavingPassword value) savingPassword,
    required TResult Function(SignUpStatePasswordSaved value) passwordSaved,
    required TResult Function(SignUpStateSavePasswordFailed value)
        savePasswordFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class $SignUpStateInitialCopyWith<$Res> {
  factory $SignUpStateInitialCopyWith(
          SignUpStateInitial value, $Res Function(SignUpStateInitial) then) =
      _$SignUpStateInitialCopyWithImpl<$Res>;
  $Res call({Password password, RepeatPassword repeatPassword});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class _$SignUpStateInitialCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateInitialCopyWith<$Res> {
  _$SignUpStateInitialCopyWithImpl(
      SignUpStateInitial _value, $Res Function(SignUpStateInitial) _then)
      : super(_value, (v) => _then(v as SignUpStateInitial));

  @override
  SignUpStateInitial get _value => super._value as SignUpStateInitial;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(SignUpStateInitial(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  @override
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStateInitial
    with DiagnosticableTreeMixin
    implements SignUpStateInitial {
  const _$SignUpStateInitial(
      {this.password = const Password(),
      this.repeatPassword = const RepeatPassword()});

  @JsonKey()
  @override
  final Password password;
  @JsonKey()
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpStateInitial &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  $SignUpStateInitialCopyWith<SignUpStateInitial> get copyWith =>
      _$SignUpStateInitialCopyWithImpl<SignUpStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password password, RepeatPassword repeatPassword)
        initial,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordChanged,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        invalidPassword,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordMismatch,
    required TResult Function() savingPassword,
    required TResult Function() passwordSaved,
    required TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)
        savePasswordFailed,
  }) {
    return initial(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
  }) {
    return initial?.call(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStatePasswordChanged value) passwordChanged,
    required TResult Function(SignUpStateInvalidPassword value) invalidPassword,
    required TResult Function(SignUpStatePasswordMismatch value)
        passwordMismatch,
    required TResult Function(SignUpStateSavingPassword value) savingPassword,
    required TResult Function(SignUpStatePasswordSaved value) passwordSaved,
    required TResult Function(SignUpStateSavePasswordFailed value)
        savePasswordFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignUpStateInitial implements SignUpState {
  const factory SignUpStateInitial(
      {Password password,
      RepeatPassword repeatPassword}) = _$SignUpStateInitial;

  Password get password;
  RepeatPassword get repeatPassword;
  @JsonKey(ignore: true)
  $SignUpStateInitialCopyWith<SignUpStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStatePasswordChangedCopyWith<$Res> {
  factory $SignUpStatePasswordChangedCopyWith(SignUpStatePasswordChanged value,
          $Res Function(SignUpStatePasswordChanged) then) =
      _$SignUpStatePasswordChangedCopyWithImpl<$Res>;
  $Res call({Password password, RepeatPassword repeatPassword});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class _$SignUpStatePasswordChangedCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStatePasswordChangedCopyWith<$Res> {
  _$SignUpStatePasswordChangedCopyWithImpl(SignUpStatePasswordChanged _value,
      $Res Function(SignUpStatePasswordChanged) _then)
      : super(_value, (v) => _then(v as SignUpStatePasswordChanged));

  @override
  SignUpStatePasswordChanged get _value =>
      super._value as SignUpStatePasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(SignUpStatePasswordChanged(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  @override
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStatePasswordChanged
    with DiagnosticableTreeMixin
    implements SignUpStatePasswordChanged {
  const _$SignUpStatePasswordChanged(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpStatePasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  $SignUpStatePasswordChangedCopyWith<SignUpStatePasswordChanged>
      get copyWith =>
          _$SignUpStatePasswordChangedCopyWithImpl<SignUpStatePasswordChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password password, RepeatPassword repeatPassword)
        initial,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordChanged,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        invalidPassword,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordMismatch,
    required TResult Function() savingPassword,
    required TResult Function() passwordSaved,
    required TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)
        savePasswordFailed,
  }) {
    return passwordChanged(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
  }) {
    return passwordChanged?.call(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStatePasswordChanged value) passwordChanged,
    required TResult Function(SignUpStateInvalidPassword value) invalidPassword,
    required TResult Function(SignUpStatePasswordMismatch value)
        passwordMismatch,
    required TResult Function(SignUpStateSavingPassword value) savingPassword,
    required TResult Function(SignUpStatePasswordSaved value) passwordSaved,
    required TResult Function(SignUpStateSavePasswordFailed value)
        savePasswordFailed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class SignUpStatePasswordChanged implements SignUpState {
  const factory SignUpStatePasswordChanged(
      {required Password password,
      required RepeatPassword repeatPassword}) = _$SignUpStatePasswordChanged;

  Password get password;
  RepeatPassword get repeatPassword;
  @JsonKey(ignore: true)
  $SignUpStatePasswordChangedCopyWith<SignUpStatePasswordChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateInvalidPasswordCopyWith<$Res> {
  factory $SignUpStateInvalidPasswordCopyWith(SignUpStateInvalidPassword value,
          $Res Function(SignUpStateInvalidPassword) then) =
      _$SignUpStateInvalidPasswordCopyWithImpl<$Res>;
  $Res call({Password password, RepeatPassword repeatPassword});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class _$SignUpStateInvalidPasswordCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateInvalidPasswordCopyWith<$Res> {
  _$SignUpStateInvalidPasswordCopyWithImpl(SignUpStateInvalidPassword _value,
      $Res Function(SignUpStateInvalidPassword) _then)
      : super(_value, (v) => _then(v as SignUpStateInvalidPassword));

  @override
  SignUpStateInvalidPassword get _value =>
      super._value as SignUpStateInvalidPassword;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(SignUpStateInvalidPassword(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  @override
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStateInvalidPassword
    with DiagnosticableTreeMixin
    implements SignUpStateInvalidPassword {
  const _$SignUpStateInvalidPassword(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpStateInvalidPassword &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  $SignUpStateInvalidPasswordCopyWith<SignUpStateInvalidPassword>
      get copyWith =>
          _$SignUpStateInvalidPasswordCopyWithImpl<SignUpStateInvalidPassword>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password password, RepeatPassword repeatPassword)
        initial,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordChanged,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        invalidPassword,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordMismatch,
    required TResult Function() savingPassword,
    required TResult Function() passwordSaved,
    required TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)
        savePasswordFailed,
  }) {
    return invalidPassword(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
  }) {
    return invalidPassword?.call(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStatePasswordChanged value) passwordChanged,
    required TResult Function(SignUpStateInvalidPassword value) invalidPassword,
    required TResult Function(SignUpStatePasswordMismatch value)
        passwordMismatch,
    required TResult Function(SignUpStateSavingPassword value) savingPassword,
    required TResult Function(SignUpStatePasswordSaved value) passwordSaved,
    required TResult Function(SignUpStateSavePasswordFailed value)
        savePasswordFailed,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class SignUpStateInvalidPassword implements SignUpState {
  const factory SignUpStateInvalidPassword(
      {required Password password,
      required RepeatPassword repeatPassword}) = _$SignUpStateInvalidPassword;

  Password get password;
  RepeatPassword get repeatPassword;
  @JsonKey(ignore: true)
  $SignUpStateInvalidPasswordCopyWith<SignUpStateInvalidPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStatePasswordMismatchCopyWith<$Res> {
  factory $SignUpStatePasswordMismatchCopyWith(
          SignUpStatePasswordMismatch value,
          $Res Function(SignUpStatePasswordMismatch) then) =
      _$SignUpStatePasswordMismatchCopyWithImpl<$Res>;
  $Res call({Password password, RepeatPassword repeatPassword});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class _$SignUpStatePasswordMismatchCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStatePasswordMismatchCopyWith<$Res> {
  _$SignUpStatePasswordMismatchCopyWithImpl(SignUpStatePasswordMismatch _value,
      $Res Function(SignUpStatePasswordMismatch) _then)
      : super(_value, (v) => _then(v as SignUpStatePasswordMismatch));

  @override
  SignUpStatePasswordMismatch get _value =>
      super._value as SignUpStatePasswordMismatch;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(SignUpStatePasswordMismatch(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
    ));
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  @override
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStatePasswordMismatch
    with DiagnosticableTreeMixin
    implements SignUpStatePasswordMismatch {
  const _$SignUpStatePasswordMismatch(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpStatePasswordMismatch &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  $SignUpStatePasswordMismatchCopyWith<SignUpStatePasswordMismatch>
      get copyWith => _$SignUpStatePasswordMismatchCopyWithImpl<
          SignUpStatePasswordMismatch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password password, RepeatPassword repeatPassword)
        initial,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordChanged,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        invalidPassword,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordMismatch,
    required TResult Function() savingPassword,
    required TResult Function() passwordSaved,
    required TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)
        savePasswordFailed,
  }) {
    return passwordMismatch(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
  }) {
    return passwordMismatch?.call(password, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
    required TResult orElse(),
  }) {
    if (passwordMismatch != null) {
      return passwordMismatch(password, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStatePasswordChanged value) passwordChanged,
    required TResult Function(SignUpStateInvalidPassword value) invalidPassword,
    required TResult Function(SignUpStatePasswordMismatch value)
        passwordMismatch,
    required TResult Function(SignUpStateSavingPassword value) savingPassword,
    required TResult Function(SignUpStatePasswordSaved value) passwordSaved,
    required TResult Function(SignUpStateSavePasswordFailed value)
        savePasswordFailed,
  }) {
    return passwordMismatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
  }) {
    return passwordMismatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
    required TResult orElse(),
  }) {
    if (passwordMismatch != null) {
      return passwordMismatch(this);
    }
    return orElse();
  }
}

abstract class SignUpStatePasswordMismatch implements SignUpState {
  const factory SignUpStatePasswordMismatch(
      {required Password password,
      required RepeatPassword repeatPassword}) = _$SignUpStatePasswordMismatch;

  Password get password;
  RepeatPassword get repeatPassword;
  @JsonKey(ignore: true)
  $SignUpStatePasswordMismatchCopyWith<SignUpStatePasswordMismatch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateSavingPasswordCopyWith<$Res> {
  factory $SignUpStateSavingPasswordCopyWith(SignUpStateSavingPassword value,
          $Res Function(SignUpStateSavingPassword) then) =
      _$SignUpStateSavingPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateSavingPasswordCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateSavingPasswordCopyWith<$Res> {
  _$SignUpStateSavingPasswordCopyWithImpl(SignUpStateSavingPassword _value,
      $Res Function(SignUpStateSavingPassword) _then)
      : super(_value, (v) => _then(v as SignUpStateSavingPassword));

  @override
  SignUpStateSavingPassword get _value =>
      super._value as SignUpStateSavingPassword;
}

/// @nodoc

class _$SignUpStateSavingPassword
    with DiagnosticableTreeMixin
    implements SignUpStateSavingPassword {
  const _$SignUpStateSavingPassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.savingPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignUpState.savingPassword'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpStateSavingPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password password, RepeatPassword repeatPassword)
        initial,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordChanged,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        invalidPassword,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordMismatch,
    required TResult Function() savingPassword,
    required TResult Function() passwordSaved,
    required TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)
        savePasswordFailed,
  }) {
    return savingPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
  }) {
    return savingPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
    required TResult orElse(),
  }) {
    if (savingPassword != null) {
      return savingPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStatePasswordChanged value) passwordChanged,
    required TResult Function(SignUpStateInvalidPassword value) invalidPassword,
    required TResult Function(SignUpStatePasswordMismatch value)
        passwordMismatch,
    required TResult Function(SignUpStateSavingPassword value) savingPassword,
    required TResult Function(SignUpStatePasswordSaved value) passwordSaved,
    required TResult Function(SignUpStateSavePasswordFailed value)
        savePasswordFailed,
  }) {
    return savingPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
  }) {
    return savingPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
    required TResult orElse(),
  }) {
    if (savingPassword != null) {
      return savingPassword(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSavingPassword implements SignUpState {
  const factory SignUpStateSavingPassword() = _$SignUpStateSavingPassword;
}

/// @nodoc
abstract class $SignUpStatePasswordSavedCopyWith<$Res> {
  factory $SignUpStatePasswordSavedCopyWith(SignUpStatePasswordSaved value,
          $Res Function(SignUpStatePasswordSaved) then) =
      _$SignUpStatePasswordSavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStatePasswordSavedCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStatePasswordSavedCopyWith<$Res> {
  _$SignUpStatePasswordSavedCopyWithImpl(SignUpStatePasswordSaved _value,
      $Res Function(SignUpStatePasswordSaved) _then)
      : super(_value, (v) => _then(v as SignUpStatePasswordSaved));

  @override
  SignUpStatePasswordSaved get _value =>
      super._value as SignUpStatePasswordSaved;
}

/// @nodoc

class _$SignUpStatePasswordSaved
    with DiagnosticableTreeMixin
    implements SignUpStatePasswordSaved {
  const _$SignUpStatePasswordSaved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.passwordSaved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignUpState.passwordSaved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpStatePasswordSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password password, RepeatPassword repeatPassword)
        initial,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordChanged,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        invalidPassword,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordMismatch,
    required TResult Function() savingPassword,
    required TResult Function() passwordSaved,
    required TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)
        savePasswordFailed,
  }) {
    return passwordSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
  }) {
    return passwordSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
    required TResult orElse(),
  }) {
    if (passwordSaved != null) {
      return passwordSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStatePasswordChanged value) passwordChanged,
    required TResult Function(SignUpStateInvalidPassword value) invalidPassword,
    required TResult Function(SignUpStatePasswordMismatch value)
        passwordMismatch,
    required TResult Function(SignUpStateSavingPassword value) savingPassword,
    required TResult Function(SignUpStatePasswordSaved value) passwordSaved,
    required TResult Function(SignUpStateSavePasswordFailed value)
        savePasswordFailed,
  }) {
    return passwordSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
  }) {
    return passwordSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
    required TResult orElse(),
  }) {
    if (passwordSaved != null) {
      return passwordSaved(this);
    }
    return orElse();
  }
}

abstract class SignUpStatePasswordSaved implements SignUpState {
  const factory SignUpStatePasswordSaved() = _$SignUpStatePasswordSaved;
}

/// @nodoc
abstract class $SignUpStateSavePasswordFailedCopyWith<$Res> {
  factory $SignUpStateSavePasswordFailedCopyWith(
          SignUpStateSavePasswordFailed value,
          $Res Function(SignUpStateSavePasswordFailed) then) =
      _$SignUpStateSavePasswordFailedCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      RepeatPassword repeatPassword,
      Exception? exception,
      StackTrace? stackTrace});

  $PasswordCopyWith<$Res> get password;
  $RepeatPasswordCopyWith<$Res> get repeatPassword;
}

/// @nodoc
class _$SignUpStateSavePasswordFailedCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateSavePasswordFailedCopyWith<$Res> {
  _$SignUpStateSavePasswordFailedCopyWithImpl(
      SignUpStateSavePasswordFailed _value,
      $Res Function(SignUpStateSavePasswordFailed) _then)
      : super(_value, (v) => _then(v as SignUpStateSavePasswordFailed));

  @override
  SignUpStateSavePasswordFailed get _value =>
      super._value as SignUpStateSavePasswordFailed;

  @override
  $Res call({
    Object? password = freezed,
    Object? repeatPassword = freezed,
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(SignUpStateSavePasswordFailed(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as RepeatPassword,
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

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  @override
  $RepeatPasswordCopyWith<$Res> get repeatPassword {
    return $RepeatPasswordCopyWith<$Res>(_value.repeatPassword, (value) {
      return _then(_value.copyWith(repeatPassword: value));
    });
  }
}

/// @nodoc

class _$SignUpStateSavePasswordFailed
    with DiagnosticableTreeMixin
    implements SignUpStateSavePasswordFailed {
  const _$SignUpStateSavePasswordFailed(
      {required this.password,
      required this.repeatPassword,
      this.exception,
      this.stackTrace});

  @override
  final Password password;
  @override
  final RepeatPassword repeatPassword;
  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.savePasswordFailed(password: $password, repeatPassword: $repeatPassword, exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.savePasswordFailed'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpStateSavePasswordFailed &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword),
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $SignUpStateSavePasswordFailedCopyWith<SignUpStateSavePasswordFailed>
      get copyWith => _$SignUpStateSavePasswordFailedCopyWithImpl<
          SignUpStateSavePasswordFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Password password, RepeatPassword repeatPassword)
        initial,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordChanged,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        invalidPassword,
    required TResult Function(Password password, RepeatPassword repeatPassword)
        passwordMismatch,
    required TResult Function() savingPassword,
    required TResult Function() passwordSaved,
    required TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)
        savePasswordFailed,
  }) {
    return savePasswordFailed(password, repeatPassword, exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
  }) {
    return savePasswordFailed?.call(
        password, repeatPassword, exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Password password, RepeatPassword repeatPassword)? initial,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordChanged,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        invalidPassword,
    TResult Function(Password password, RepeatPassword repeatPassword)?
        passwordMismatch,
    TResult Function()? savingPassword,
    TResult Function()? passwordSaved,
    TResult Function(Password password, RepeatPassword repeatPassword,
            Exception? exception, StackTrace? stackTrace)?
        savePasswordFailed,
    required TResult orElse(),
  }) {
    if (savePasswordFailed != null) {
      return savePasswordFailed(
          password, repeatPassword, exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStatePasswordChanged value) passwordChanged,
    required TResult Function(SignUpStateInvalidPassword value) invalidPassword,
    required TResult Function(SignUpStatePasswordMismatch value)
        passwordMismatch,
    required TResult Function(SignUpStateSavingPassword value) savingPassword,
    required TResult Function(SignUpStatePasswordSaved value) passwordSaved,
    required TResult Function(SignUpStateSavePasswordFailed value)
        savePasswordFailed,
  }) {
    return savePasswordFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
  }) {
    return savePasswordFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStatePasswordChanged value)? passwordChanged,
    TResult Function(SignUpStateInvalidPassword value)? invalidPassword,
    TResult Function(SignUpStatePasswordMismatch value)? passwordMismatch,
    TResult Function(SignUpStateSavingPassword value)? savingPassword,
    TResult Function(SignUpStatePasswordSaved value)? passwordSaved,
    TResult Function(SignUpStateSavePasswordFailed value)? savePasswordFailed,
    required TResult orElse(),
  }) {
    if (savePasswordFailed != null) {
      return savePasswordFailed(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSavePasswordFailed implements SignUpState {
  const factory SignUpStateSavePasswordFailed(
      {required Password password,
      required RepeatPassword repeatPassword,
      Exception? exception,
      StackTrace? stackTrace}) = _$SignUpStateSavePasswordFailed;

  Password get password;
  RepeatPassword get repeatPassword;
  Exception? get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $SignUpStateSavePasswordFailedCopyWith<SignUpStateSavePasswordFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PasswordTearOff {
  const _$PasswordTearOff();

  _Password call({String value = '', PasswordError? error}) {
    return _Password(
      value: value,
      error: error,
    );
  }
}

/// @nodoc
const $Password = _$PasswordTearOff();

/// @nodoc
mixin _$Password {
  String get value => throw _privateConstructorUsedError;
  PasswordError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordCopyWith<Password> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCopyWith<$Res> {
  factory $PasswordCopyWith(Password value, $Res Function(Password) then) =
      _$PasswordCopyWithImpl<$Res>;
  $Res call({String value, PasswordError? error});

  $PasswordErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$PasswordCopyWithImpl<$Res> implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._value, this._then);

  final Password _value;
  // ignore: unused_field
  final $Res Function(Password) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
    ));
  }

  @override
  $PasswordErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $PasswordErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$PasswordCopyWith<$Res> implements $PasswordCopyWith<$Res> {
  factory _$PasswordCopyWith(_Password value, $Res Function(_Password) then) =
      __$PasswordCopyWithImpl<$Res>;
  @override
  $Res call({String value, PasswordError? error});

  @override
  $PasswordErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$PasswordCopyWithImpl<$Res> extends _$PasswordCopyWithImpl<$Res>
    implements _$PasswordCopyWith<$Res> {
  __$PasswordCopyWithImpl(_Password _value, $Res Function(_Password) _then)
      : super(_value, (v) => _then(v as _Password));

  @override
  _Password get _value => super._value as _Password;

  @override
  $Res call({
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(_Password(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
    ));
  }
}

/// @nodoc

class _$_Password with DiagnosticableTreeMixin implements _Password {
  const _$_Password({this.value = '', this.error});

  @JsonKey()
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Password &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$PasswordCopyWith<_Password> get copyWith =>
      __$PasswordCopyWithImpl<_Password>(this, _$identity);
}

abstract class _Password implements Password {
  const factory _Password({String value, PasswordError? error}) = _$_Password;

  @override
  String get value;
  @override
  PasswordError? get error;
  @override
  @JsonKey(ignore: true)
  _$PasswordCopyWith<_Password> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RepeatPasswordTearOff {
  const _$RepeatPasswordTearOff();

  _RepeatPassword call({String value = '', RepeatPasswordError? error}) {
    return _RepeatPassword(
      value: value,
      error: error,
    );
  }
}

/// @nodoc
const $RepeatPassword = _$RepeatPasswordTearOff();

/// @nodoc
mixin _$RepeatPassword {
  String get value => throw _privateConstructorUsedError;
  RepeatPasswordError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepeatPasswordCopyWith<RepeatPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatPasswordCopyWith<$Res> {
  factory $RepeatPasswordCopyWith(
          RepeatPassword value, $Res Function(RepeatPassword) then) =
      _$RepeatPasswordCopyWithImpl<$Res>;
  $Res call({String value, RepeatPasswordError? error});

  $RepeatPasswordErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$RepeatPasswordCopyWithImpl<$Res>
    implements $RepeatPasswordCopyWith<$Res> {
  _$RepeatPasswordCopyWithImpl(this._value, this._then);

  final RepeatPassword _value;
  // ignore: unused_field
  final $Res Function(RepeatPassword) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordError?,
    ));
  }

  @override
  $RepeatPasswordErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $RepeatPasswordErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$RepeatPasswordCopyWith<$Res>
    implements $RepeatPasswordCopyWith<$Res> {
  factory _$RepeatPasswordCopyWith(
          _RepeatPassword value, $Res Function(_RepeatPassword) then) =
      __$RepeatPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String value, RepeatPasswordError? error});

  @override
  $RepeatPasswordErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$RepeatPasswordCopyWithImpl<$Res>
    extends _$RepeatPasswordCopyWithImpl<$Res>
    implements _$RepeatPasswordCopyWith<$Res> {
  __$RepeatPasswordCopyWithImpl(
      _RepeatPassword _value, $Res Function(_RepeatPassword) _then)
      : super(_value, (v) => _then(v as _RepeatPassword));

  @override
  _RepeatPassword get _value => super._value as _RepeatPassword;

  @override
  $Res call({
    Object? value = freezed,
    Object? error = freezed,
  }) {
    return _then(_RepeatPassword(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordError?,
    ));
  }
}

/// @nodoc

class _$_RepeatPassword
    with DiagnosticableTreeMixin
    implements _RepeatPassword {
  const _$_RepeatPassword({this.value = '', this.error});

  @JsonKey()
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepeatPassword &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$RepeatPasswordCopyWith<_RepeatPassword> get copyWith =>
      __$RepeatPasswordCopyWithImpl<_RepeatPassword>(this, _$identity);
}

abstract class _RepeatPassword implements RepeatPassword {
  const factory _RepeatPassword({String value, RepeatPasswordError? error}) =
      _$_RepeatPassword;

  @override
  String get value;
  @override
  RepeatPasswordError? get error;
  @override
  @JsonKey(ignore: true)
  _$RepeatPasswordCopyWith<_RepeatPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PasswordErrorTearOff {
  const _$PasswordErrorTearOff();

  PasswordErrorEmpty empty() {
    return const PasswordErrorEmpty();
  }

  PasswordErrorTooShort tooShort() {
    return const PasswordErrorTooShort();
  }

  PasswordErrorTooLong tooLong() {
    return const PasswordErrorTooLong();
  }
}

/// @nodoc
const $PasswordError = _$PasswordErrorTearOff();

/// @nodoc
mixin _$PasswordError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() tooShort,
    required TResult Function() tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? tooShort,
    TResult Function()? tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? tooShort,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordErrorEmpty value) empty,
    required TResult Function(PasswordErrorTooShort value) tooShort,
    required TResult Function(PasswordErrorTooLong value) tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordErrorEmpty value)? empty,
    TResult Function(PasswordErrorTooShort value)? tooShort,
    TResult Function(PasswordErrorTooLong value)? tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordErrorEmpty value)? empty,
    TResult Function(PasswordErrorTooShort value)? tooShort,
    TResult Function(PasswordErrorTooLong value)? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordErrorCopyWith<$Res> {
  factory $PasswordErrorCopyWith(
          PasswordError value, $Res Function(PasswordError) then) =
      _$PasswordErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordErrorCopyWithImpl<$Res>
    implements $PasswordErrorCopyWith<$Res> {
  _$PasswordErrorCopyWithImpl(this._value, this._then);

  final PasswordError _value;
  // ignore: unused_field
  final $Res Function(PasswordError) _then;
}

/// @nodoc
abstract class $PasswordErrorEmptyCopyWith<$Res> {
  factory $PasswordErrorEmptyCopyWith(
          PasswordErrorEmpty value, $Res Function(PasswordErrorEmpty) then) =
      _$PasswordErrorEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordErrorEmptyCopyWithImpl<$Res>
    extends _$PasswordErrorCopyWithImpl<$Res>
    implements $PasswordErrorEmptyCopyWith<$Res> {
  _$PasswordErrorEmptyCopyWithImpl(
      PasswordErrorEmpty _value, $Res Function(PasswordErrorEmpty) _then)
      : super(_value, (v) => _then(v as PasswordErrorEmpty));

  @override
  PasswordErrorEmpty get _value => super._value as PasswordErrorEmpty;
}

/// @nodoc

class _$PasswordErrorEmpty
    with DiagnosticableTreeMixin
    implements PasswordErrorEmpty {
  const _$PasswordErrorEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordError.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PasswordError.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordErrorEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() tooShort,
    required TResult Function() tooLong,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? tooShort,
    TResult Function()? tooLong,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? tooShort,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordErrorEmpty value) empty,
    required TResult Function(PasswordErrorTooShort value) tooShort,
    required TResult Function(PasswordErrorTooLong value) tooLong,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordErrorEmpty value)? empty,
    TResult Function(PasswordErrorTooShort value)? tooShort,
    TResult Function(PasswordErrorTooLong value)? tooLong,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordErrorEmpty value)? empty,
    TResult Function(PasswordErrorTooShort value)? tooShort,
    TResult Function(PasswordErrorTooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PasswordErrorEmpty implements PasswordError {
  const factory PasswordErrorEmpty() = _$PasswordErrorEmpty;
}

/// @nodoc
abstract class $PasswordErrorTooShortCopyWith<$Res> {
  factory $PasswordErrorTooShortCopyWith(PasswordErrorTooShort value,
          $Res Function(PasswordErrorTooShort) then) =
      _$PasswordErrorTooShortCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordErrorTooShortCopyWithImpl<$Res>
    extends _$PasswordErrorCopyWithImpl<$Res>
    implements $PasswordErrorTooShortCopyWith<$Res> {
  _$PasswordErrorTooShortCopyWithImpl(
      PasswordErrorTooShort _value, $Res Function(PasswordErrorTooShort) _then)
      : super(_value, (v) => _then(v as PasswordErrorTooShort));

  @override
  PasswordErrorTooShort get _value => super._value as PasswordErrorTooShort;
}

/// @nodoc

class _$PasswordErrorTooShort
    with DiagnosticableTreeMixin
    implements PasswordErrorTooShort {
  const _$PasswordErrorTooShort();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordError.tooShort()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PasswordError.tooShort'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordErrorTooShort);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() tooShort,
    required TResult Function() tooLong,
  }) {
    return tooShort();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? tooShort,
    TResult Function()? tooLong,
  }) {
    return tooShort?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? tooShort,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordErrorEmpty value) empty,
    required TResult Function(PasswordErrorTooShort value) tooShort,
    required TResult Function(PasswordErrorTooLong value) tooLong,
  }) {
    return tooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordErrorEmpty value)? empty,
    TResult Function(PasswordErrorTooShort value)? tooShort,
    TResult Function(PasswordErrorTooLong value)? tooLong,
  }) {
    return tooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordErrorEmpty value)? empty,
    TResult Function(PasswordErrorTooShort value)? tooShort,
    TResult Function(PasswordErrorTooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(this);
    }
    return orElse();
  }
}

abstract class PasswordErrorTooShort implements PasswordError {
  const factory PasswordErrorTooShort() = _$PasswordErrorTooShort;
}

/// @nodoc
abstract class $PasswordErrorTooLongCopyWith<$Res> {
  factory $PasswordErrorTooLongCopyWith(PasswordErrorTooLong value,
          $Res Function(PasswordErrorTooLong) then) =
      _$PasswordErrorTooLongCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordErrorTooLongCopyWithImpl<$Res>
    extends _$PasswordErrorCopyWithImpl<$Res>
    implements $PasswordErrorTooLongCopyWith<$Res> {
  _$PasswordErrorTooLongCopyWithImpl(
      PasswordErrorTooLong _value, $Res Function(PasswordErrorTooLong) _then)
      : super(_value, (v) => _then(v as PasswordErrorTooLong));

  @override
  PasswordErrorTooLong get _value => super._value as PasswordErrorTooLong;
}

/// @nodoc

class _$PasswordErrorTooLong
    with DiagnosticableTreeMixin
    implements PasswordErrorTooLong {
  const _$PasswordErrorTooLong();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordError.tooLong()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PasswordError.tooLong'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordErrorTooLong);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() tooShort,
    required TResult Function() tooLong,
  }) {
    return tooLong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? tooShort,
    TResult Function()? tooLong,
  }) {
    return tooLong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? tooShort,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordErrorEmpty value) empty,
    required TResult Function(PasswordErrorTooShort value) tooShort,
    required TResult Function(PasswordErrorTooLong value) tooLong,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordErrorEmpty value)? empty,
    TResult Function(PasswordErrorTooShort value)? tooShort,
    TResult Function(PasswordErrorTooLong value)? tooLong,
  }) {
    return tooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordErrorEmpty value)? empty,
    TResult Function(PasswordErrorTooShort value)? tooShort,
    TResult Function(PasswordErrorTooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class PasswordErrorTooLong implements PasswordError {
  const factory PasswordErrorTooLong() = _$PasswordErrorTooLong;
}

/// @nodoc
class _$RepeatPasswordErrorTearOff {
  const _$RepeatPasswordErrorTearOff();

  RepeatPasswordErrorEmpty empty() {
    return const RepeatPasswordErrorEmpty();
  }

  RepeatPasswordErrorMismatch mismatch() {
    return const RepeatPasswordErrorMismatch();
  }
}

/// @nodoc
const $RepeatPasswordError = _$RepeatPasswordErrorTearOff();

/// @nodoc
mixin _$RepeatPasswordError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() mismatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? mismatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? mismatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatPasswordErrorEmpty value) empty,
    required TResult Function(RepeatPasswordErrorMismatch value) mismatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatPasswordErrorEmpty value)? empty,
    TResult Function(RepeatPasswordErrorMismatch value)? mismatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatPasswordErrorEmpty value)? empty,
    TResult Function(RepeatPasswordErrorMismatch value)? mismatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatPasswordErrorCopyWith<$Res> {
  factory $RepeatPasswordErrorCopyWith(
          RepeatPasswordError value, $Res Function(RepeatPasswordError) then) =
      _$RepeatPasswordErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepeatPasswordErrorCopyWithImpl<$Res>
    implements $RepeatPasswordErrorCopyWith<$Res> {
  _$RepeatPasswordErrorCopyWithImpl(this._value, this._then);

  final RepeatPasswordError _value;
  // ignore: unused_field
  final $Res Function(RepeatPasswordError) _then;
}

/// @nodoc
abstract class $RepeatPasswordErrorEmptyCopyWith<$Res> {
  factory $RepeatPasswordErrorEmptyCopyWith(RepeatPasswordErrorEmpty value,
          $Res Function(RepeatPasswordErrorEmpty) then) =
      _$RepeatPasswordErrorEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepeatPasswordErrorEmptyCopyWithImpl<$Res>
    extends _$RepeatPasswordErrorCopyWithImpl<$Res>
    implements $RepeatPasswordErrorEmptyCopyWith<$Res> {
  _$RepeatPasswordErrorEmptyCopyWithImpl(RepeatPasswordErrorEmpty _value,
      $Res Function(RepeatPasswordErrorEmpty) _then)
      : super(_value, (v) => _then(v as RepeatPasswordErrorEmpty));

  @override
  RepeatPasswordErrorEmpty get _value =>
      super._value as RepeatPasswordErrorEmpty;
}

/// @nodoc

class _$RepeatPasswordErrorEmpty
    with DiagnosticableTreeMixin
    implements RepeatPasswordErrorEmpty {
  const _$RepeatPasswordErrorEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepeatPasswordError.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RepeatPasswordError.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RepeatPasswordErrorEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() mismatch,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? mismatch,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? mismatch,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatPasswordErrorEmpty value) empty,
    required TResult Function(RepeatPasswordErrorMismatch value) mismatch,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatPasswordErrorEmpty value)? empty,
    TResult Function(RepeatPasswordErrorMismatch value)? mismatch,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatPasswordErrorEmpty value)? empty,
    TResult Function(RepeatPasswordErrorMismatch value)? mismatch,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class RepeatPasswordErrorEmpty implements RepeatPasswordError {
  const factory RepeatPasswordErrorEmpty() = _$RepeatPasswordErrorEmpty;
}

/// @nodoc
abstract class $RepeatPasswordErrorMismatchCopyWith<$Res> {
  factory $RepeatPasswordErrorMismatchCopyWith(
          RepeatPasswordErrorMismatch value,
          $Res Function(RepeatPasswordErrorMismatch) then) =
      _$RepeatPasswordErrorMismatchCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepeatPasswordErrorMismatchCopyWithImpl<$Res>
    extends _$RepeatPasswordErrorCopyWithImpl<$Res>
    implements $RepeatPasswordErrorMismatchCopyWith<$Res> {
  _$RepeatPasswordErrorMismatchCopyWithImpl(RepeatPasswordErrorMismatch _value,
      $Res Function(RepeatPasswordErrorMismatch) _then)
      : super(_value, (v) => _then(v as RepeatPasswordErrorMismatch));

  @override
  RepeatPasswordErrorMismatch get _value =>
      super._value as RepeatPasswordErrorMismatch;
}

/// @nodoc

class _$RepeatPasswordErrorMismatch
    with DiagnosticableTreeMixin
    implements RepeatPasswordErrorMismatch {
  const _$RepeatPasswordErrorMismatch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepeatPasswordError.mismatch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepeatPasswordError.mismatch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepeatPasswordErrorMismatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() mismatch,
  }) {
    return mismatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? mismatch,
  }) {
    return mismatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? mismatch,
    required TResult orElse(),
  }) {
    if (mismatch != null) {
      return mismatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatPasswordErrorEmpty value) empty,
    required TResult Function(RepeatPasswordErrorMismatch value) mismatch,
  }) {
    return mismatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatPasswordErrorEmpty value)? empty,
    TResult Function(RepeatPasswordErrorMismatch value)? mismatch,
  }) {
    return mismatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatPasswordErrorEmpty value)? empty,
    TResult Function(RepeatPasswordErrorMismatch value)? mismatch,
    required TResult orElse(),
  }) {
    if (mismatch != null) {
      return mismatch(this);
    }
    return orElse();
  }
}

abstract class RepeatPasswordErrorMismatch implements RepeatPasswordError {
  const factory RepeatPasswordErrorMismatch() = _$RepeatPasswordErrorMismatch;
}

/// @nodoc
class _$PasswordValidateResultTearOff {
  const _$PasswordValidateResultTearOff();

  PasswordValidateResultSuccess success({required String password}) {
    return PasswordValidateResultSuccess(
      password: password,
    );
  }

  PasswordValidateResultError error({required PasswordError reason}) {
    return PasswordValidateResultError(
      reason: reason,
    );
  }
}

/// @nodoc
const $PasswordValidateResult = _$PasswordValidateResultTearOff();

/// @nodoc
mixin _$PasswordValidateResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) success,
    required TResult Function(PasswordError reason) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(PasswordError reason)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(PasswordError reason)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordValidateResultSuccess value) success,
    required TResult Function(PasswordValidateResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordValidateResultSuccess value)? success,
    TResult Function(PasswordValidateResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordValidateResultSuccess value)? success,
    TResult Function(PasswordValidateResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordValidateResultCopyWith<$Res> {
  factory $PasswordValidateResultCopyWith(PasswordValidateResult value,
          $Res Function(PasswordValidateResult) then) =
      _$PasswordValidateResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordValidateResultCopyWithImpl<$Res>
    implements $PasswordValidateResultCopyWith<$Res> {
  _$PasswordValidateResultCopyWithImpl(this._value, this._then);

  final PasswordValidateResult _value;
  // ignore: unused_field
  final $Res Function(PasswordValidateResult) _then;
}

/// @nodoc
abstract class $PasswordValidateResultSuccessCopyWith<$Res> {
  factory $PasswordValidateResultSuccessCopyWith(
          PasswordValidateResultSuccess value,
          $Res Function(PasswordValidateResultSuccess) then) =
      _$PasswordValidateResultSuccessCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordValidateResultSuccessCopyWithImpl<$Res>
    extends _$PasswordValidateResultCopyWithImpl<$Res>
    implements $PasswordValidateResultSuccessCopyWith<$Res> {
  _$PasswordValidateResultSuccessCopyWithImpl(
      PasswordValidateResultSuccess _value,
      $Res Function(PasswordValidateResultSuccess) _then)
      : super(_value, (v) => _then(v as PasswordValidateResultSuccess));

  @override
  PasswordValidateResultSuccess get _value =>
      super._value as PasswordValidateResultSuccess;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordValidateResultSuccess(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordValidateResultSuccess
    with DiagnosticableTreeMixin
    implements PasswordValidateResultSuccess {
  const _$PasswordValidateResultSuccess({required this.password});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordValidateResultSuccess &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordValidateResultSuccessCopyWith<PasswordValidateResultSuccess>
      get copyWith => _$PasswordValidateResultSuccessCopyWithImpl<
          PasswordValidateResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) success,
    required TResult Function(PasswordError reason) error,
  }) {
    return success(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(PasswordError reason)? error,
  }) {
    return success?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(PasswordError reason)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordValidateResultSuccess value) success,
    required TResult Function(PasswordValidateResultError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordValidateResultSuccess value)? success,
    TResult Function(PasswordValidateResultError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordValidateResultSuccess value)? success,
    TResult Function(PasswordValidateResultError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PasswordValidateResultSuccess implements PasswordValidateResult {
  const factory PasswordValidateResultSuccess({required String password}) =
      _$PasswordValidateResultSuccess;

  String get password;
  @JsonKey(ignore: true)
  $PasswordValidateResultSuccessCopyWith<PasswordValidateResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordValidateResultErrorCopyWith<$Res> {
  factory $PasswordValidateResultErrorCopyWith(
          PasswordValidateResultError value,
          $Res Function(PasswordValidateResultError) then) =
      _$PasswordValidateResultErrorCopyWithImpl<$Res>;
  $Res call({PasswordError reason});

  $PasswordErrorCopyWith<$Res> get reason;
}

/// @nodoc
class _$PasswordValidateResultErrorCopyWithImpl<$Res>
    extends _$PasswordValidateResultCopyWithImpl<$Res>
    implements $PasswordValidateResultErrorCopyWith<$Res> {
  _$PasswordValidateResultErrorCopyWithImpl(PasswordValidateResultError _value,
      $Res Function(PasswordValidateResultError) _then)
      : super(_value, (v) => _then(v as PasswordValidateResultError));

  @override
  PasswordValidateResultError get _value =>
      super._value as PasswordValidateResultError;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(PasswordValidateResultError(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as PasswordError,
    ));
  }

  @override
  $PasswordErrorCopyWith<$Res> get reason {
    return $PasswordErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$PasswordValidateResultError
    with DiagnosticableTreeMixin
    implements PasswordValidateResultError {
  const _$PasswordValidateResultError({required this.reason});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordValidateResultError &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  $PasswordValidateResultErrorCopyWith<PasswordValidateResultError>
      get copyWith => _$PasswordValidateResultErrorCopyWithImpl<
          PasswordValidateResultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) success,
    required TResult Function(PasswordError reason) error,
  }) {
    return error(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(PasswordError reason)? error,
  }) {
    return error?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(PasswordError reason)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordValidateResultSuccess value) success,
    required TResult Function(PasswordValidateResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordValidateResultSuccess value)? success,
    TResult Function(PasswordValidateResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordValidateResultSuccess value)? success,
    TResult Function(PasswordValidateResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PasswordValidateResultError implements PasswordValidateResult {
  const factory PasswordValidateResultError({required PasswordError reason}) =
      _$PasswordValidateResultError;

  PasswordError get reason;
  @JsonKey(ignore: true)
  $PasswordValidateResultErrorCopyWith<PasswordValidateResultError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$RepeatPasswordValidateResultTearOff {
  const _$RepeatPasswordValidateResultTearOff();

  RepeatPasswordValidateResultSuccess success({required String password}) {
    return RepeatPasswordValidateResultSuccess(
      password: password,
    );
  }

  RepeatPasswordValidateResultError error(
      {required RepeatPasswordError reason}) {
    return RepeatPasswordValidateResultError(
      reason: reason,
    );
  }
}

/// @nodoc
const $RepeatPasswordValidateResult = _$RepeatPasswordValidateResultTearOff();

/// @nodoc
mixin _$RepeatPasswordValidateResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) success,
    required TResult Function(RepeatPasswordError reason) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(RepeatPasswordError reason)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(RepeatPasswordError reason)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatPasswordValidateResultSuccess value)
        success,
    required TResult Function(RepeatPasswordValidateResultError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatPasswordValidateResultSuccess value)? success,
    TResult Function(RepeatPasswordValidateResultError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatPasswordValidateResultSuccess value)? success,
    TResult Function(RepeatPasswordValidateResultError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatPasswordValidateResultCopyWith<$Res> {
  factory $RepeatPasswordValidateResultCopyWith(
          RepeatPasswordValidateResult value,
          $Res Function(RepeatPasswordValidateResult) then) =
      _$RepeatPasswordValidateResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepeatPasswordValidateResultCopyWithImpl<$Res>
    implements $RepeatPasswordValidateResultCopyWith<$Res> {
  _$RepeatPasswordValidateResultCopyWithImpl(this._value, this._then);

  final RepeatPasswordValidateResult _value;
  // ignore: unused_field
  final $Res Function(RepeatPasswordValidateResult) _then;
}

/// @nodoc
abstract class $RepeatPasswordValidateResultSuccessCopyWith<$Res> {
  factory $RepeatPasswordValidateResultSuccessCopyWith(
          RepeatPasswordValidateResultSuccess value,
          $Res Function(RepeatPasswordValidateResultSuccess) then) =
      _$RepeatPasswordValidateResultSuccessCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$RepeatPasswordValidateResultSuccessCopyWithImpl<$Res>
    extends _$RepeatPasswordValidateResultCopyWithImpl<$Res>
    implements $RepeatPasswordValidateResultSuccessCopyWith<$Res> {
  _$RepeatPasswordValidateResultSuccessCopyWithImpl(
      RepeatPasswordValidateResultSuccess _value,
      $Res Function(RepeatPasswordValidateResultSuccess) _then)
      : super(_value, (v) => _then(v as RepeatPasswordValidateResultSuccess));

  @override
  RepeatPasswordValidateResultSuccess get _value =>
      super._value as RepeatPasswordValidateResultSuccess;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(RepeatPasswordValidateResultSuccess(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepeatPasswordValidateResultSuccess
    with DiagnosticableTreeMixin
    implements RepeatPasswordValidateResultSuccess {
  const _$RepeatPasswordValidateResultSuccess({required this.password});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepeatPasswordValidateResultSuccess &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $RepeatPasswordValidateResultSuccessCopyWith<
          RepeatPasswordValidateResultSuccess>
      get copyWith => _$RepeatPasswordValidateResultSuccessCopyWithImpl<
          RepeatPasswordValidateResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) success,
    required TResult Function(RepeatPasswordError reason) error,
  }) {
    return success(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(RepeatPasswordError reason)? error,
  }) {
    return success?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(RepeatPasswordError reason)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatPasswordValidateResultSuccess value)
        success,
    required TResult Function(RepeatPasswordValidateResultError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatPasswordValidateResultSuccess value)? success,
    TResult Function(RepeatPasswordValidateResultError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatPasswordValidateResultSuccess value)? success,
    TResult Function(RepeatPasswordValidateResultError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RepeatPasswordValidateResultSuccess
    implements RepeatPasswordValidateResult {
  const factory RepeatPasswordValidateResultSuccess(
      {required String password}) = _$RepeatPasswordValidateResultSuccess;

  String get password;
  @JsonKey(ignore: true)
  $RepeatPasswordValidateResultSuccessCopyWith<
          RepeatPasswordValidateResultSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatPasswordValidateResultErrorCopyWith<$Res> {
  factory $RepeatPasswordValidateResultErrorCopyWith(
          RepeatPasswordValidateResultError value,
          $Res Function(RepeatPasswordValidateResultError) then) =
      _$RepeatPasswordValidateResultErrorCopyWithImpl<$Res>;
  $Res call({RepeatPasswordError reason});

  $RepeatPasswordErrorCopyWith<$Res> get reason;
}

/// @nodoc
class _$RepeatPasswordValidateResultErrorCopyWithImpl<$Res>
    extends _$RepeatPasswordValidateResultCopyWithImpl<$Res>
    implements $RepeatPasswordValidateResultErrorCopyWith<$Res> {
  _$RepeatPasswordValidateResultErrorCopyWithImpl(
      RepeatPasswordValidateResultError _value,
      $Res Function(RepeatPasswordValidateResultError) _then)
      : super(_value, (v) => _then(v as RepeatPasswordValidateResultError));

  @override
  RepeatPasswordValidateResultError get _value =>
      super._value as RepeatPasswordValidateResultError;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(RepeatPasswordValidateResultError(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as RepeatPasswordError,
    ));
  }

  @override
  $RepeatPasswordErrorCopyWith<$Res> get reason {
    return $RepeatPasswordErrorCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$RepeatPasswordValidateResultError
    with DiagnosticableTreeMixin
    implements RepeatPasswordValidateResultError {
  const _$RepeatPasswordValidateResultError({required this.reason});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepeatPasswordValidateResultError &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  $RepeatPasswordValidateResultErrorCopyWith<RepeatPasswordValidateResultError>
      get copyWith => _$RepeatPasswordValidateResultErrorCopyWithImpl<
          RepeatPasswordValidateResultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) success,
    required TResult Function(RepeatPasswordError reason) error,
  }) {
    return error(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(RepeatPasswordError reason)? error,
  }) {
    return error?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? success,
    TResult Function(RepeatPasswordError reason)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatPasswordValidateResultSuccess value)
        success,
    required TResult Function(RepeatPasswordValidateResultError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatPasswordValidateResultSuccess value)? success,
    TResult Function(RepeatPasswordValidateResultError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatPasswordValidateResultSuccess value)? success,
    TResult Function(RepeatPasswordValidateResultError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RepeatPasswordValidateResultError
    implements RepeatPasswordValidateResult {
  const factory RepeatPasswordValidateResultError(
          {required RepeatPasswordError reason}) =
      _$RepeatPasswordValidateResultError;

  RepeatPasswordError get reason;
  @JsonKey(ignore: true)
  $RepeatPasswordValidateResultErrorCopyWith<RepeatPasswordValidateResultError>
      get copyWith => throw _privateConstructorUsedError;
}
