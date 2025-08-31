// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState()';
}


}

/// @nodoc
class $SignUpStateCopyWith<$Res>  {
$SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}



/// @nodoc


class SignUpStateInitial with DiagnosticableTreeMixin implements SignUpState {
  const SignUpStateInitial({this.password = const Password(), this.repeatPassword = const RepeatPassword()});
  

@JsonKey() final  Password password;
@JsonKey() final  RepeatPassword repeatPassword;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateInitialCopyWith<SignUpStateInitial> get copyWith => _$SignUpStateInitialCopyWithImpl<SignUpStateInitial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState.initial'))
    ..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('repeatPassword', repeatPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateInitial&&(identical(other.password, password) || other.password == password)&&(identical(other.repeatPassword, repeatPassword) || other.repeatPassword == repeatPassword));
}


@override
int get hashCode => Object.hash(runtimeType,password,repeatPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState.initial(password: $password, repeatPassword: $repeatPassword)';
}


}

/// @nodoc
abstract mixin class $SignUpStateInitialCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpStateInitialCopyWith(SignUpStateInitial value, $Res Function(SignUpStateInitial) _then) = _$SignUpStateInitialCopyWithImpl;
@useResult
$Res call({
 Password password, RepeatPassword repeatPassword
});


$PasswordCopyWith<$Res> get password;$RepeatPasswordCopyWith<$Res> get repeatPassword;

}
/// @nodoc
class _$SignUpStateInitialCopyWithImpl<$Res>
    implements $SignUpStateInitialCopyWith<$Res> {
  _$SignUpStateInitialCopyWithImpl(this._self, this._then);

  final SignUpStateInitial _self;
  final $Res Function(SignUpStateInitial) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,Object? repeatPassword = null,}) {
  return _then(SignUpStateInitial(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,repeatPassword: null == repeatPassword ? _self.repeatPassword : repeatPassword // ignore: cast_nullable_to_non_nullable
as RepeatPassword,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCopyWith<$Res> get password {
  
  return $PasswordCopyWith<$Res>(_self.password, (value) {
    return _then(_self.copyWith(password: value));
  });
}/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatPasswordCopyWith<$Res> get repeatPassword {
  
  return $RepeatPasswordCopyWith<$Res>(_self.repeatPassword, (value) {
    return _then(_self.copyWith(repeatPassword: value));
  });
}
}

/// @nodoc


class SignUpStatePasswordChanged with DiagnosticableTreeMixin implements SignUpState {
  const SignUpStatePasswordChanged({required this.password, required this.repeatPassword});
  

 final  Password password;
 final  RepeatPassword repeatPassword;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStatePasswordChangedCopyWith<SignUpStatePasswordChanged> get copyWith => _$SignUpStatePasswordChangedCopyWithImpl<SignUpStatePasswordChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState.passwordChanged'))
    ..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('repeatPassword', repeatPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStatePasswordChanged&&(identical(other.password, password) || other.password == password)&&(identical(other.repeatPassword, repeatPassword) || other.repeatPassword == repeatPassword));
}


@override
int get hashCode => Object.hash(runtimeType,password,repeatPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState.passwordChanged(password: $password, repeatPassword: $repeatPassword)';
}


}

/// @nodoc
abstract mixin class $SignUpStatePasswordChangedCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpStatePasswordChangedCopyWith(SignUpStatePasswordChanged value, $Res Function(SignUpStatePasswordChanged) _then) = _$SignUpStatePasswordChangedCopyWithImpl;
@useResult
$Res call({
 Password password, RepeatPassword repeatPassword
});


$PasswordCopyWith<$Res> get password;$RepeatPasswordCopyWith<$Res> get repeatPassword;

}
/// @nodoc
class _$SignUpStatePasswordChangedCopyWithImpl<$Res>
    implements $SignUpStatePasswordChangedCopyWith<$Res> {
  _$SignUpStatePasswordChangedCopyWithImpl(this._self, this._then);

  final SignUpStatePasswordChanged _self;
  final $Res Function(SignUpStatePasswordChanged) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,Object? repeatPassword = null,}) {
  return _then(SignUpStatePasswordChanged(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,repeatPassword: null == repeatPassword ? _self.repeatPassword : repeatPassword // ignore: cast_nullable_to_non_nullable
as RepeatPassword,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCopyWith<$Res> get password {
  
  return $PasswordCopyWith<$Res>(_self.password, (value) {
    return _then(_self.copyWith(password: value));
  });
}/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatPasswordCopyWith<$Res> get repeatPassword {
  
  return $RepeatPasswordCopyWith<$Res>(_self.repeatPassword, (value) {
    return _then(_self.copyWith(repeatPassword: value));
  });
}
}

/// @nodoc


class SignUpStateInvalidPassword with DiagnosticableTreeMixin implements SignUpState {
  const SignUpStateInvalidPassword({required this.password, required this.repeatPassword});
  

 final  Password password;
 final  RepeatPassword repeatPassword;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateInvalidPasswordCopyWith<SignUpStateInvalidPassword> get copyWith => _$SignUpStateInvalidPasswordCopyWithImpl<SignUpStateInvalidPassword>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState.invalidPassword'))
    ..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('repeatPassword', repeatPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateInvalidPassword&&(identical(other.password, password) || other.password == password)&&(identical(other.repeatPassword, repeatPassword) || other.repeatPassword == repeatPassword));
}


@override
int get hashCode => Object.hash(runtimeType,password,repeatPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState.invalidPassword(password: $password, repeatPassword: $repeatPassword)';
}


}

/// @nodoc
abstract mixin class $SignUpStateInvalidPasswordCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpStateInvalidPasswordCopyWith(SignUpStateInvalidPassword value, $Res Function(SignUpStateInvalidPassword) _then) = _$SignUpStateInvalidPasswordCopyWithImpl;
@useResult
$Res call({
 Password password, RepeatPassword repeatPassword
});


$PasswordCopyWith<$Res> get password;$RepeatPasswordCopyWith<$Res> get repeatPassword;

}
/// @nodoc
class _$SignUpStateInvalidPasswordCopyWithImpl<$Res>
    implements $SignUpStateInvalidPasswordCopyWith<$Res> {
  _$SignUpStateInvalidPasswordCopyWithImpl(this._self, this._then);

  final SignUpStateInvalidPassword _self;
  final $Res Function(SignUpStateInvalidPassword) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,Object? repeatPassword = null,}) {
  return _then(SignUpStateInvalidPassword(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,repeatPassword: null == repeatPassword ? _self.repeatPassword : repeatPassword // ignore: cast_nullable_to_non_nullable
as RepeatPassword,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCopyWith<$Res> get password {
  
  return $PasswordCopyWith<$Res>(_self.password, (value) {
    return _then(_self.copyWith(password: value));
  });
}/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatPasswordCopyWith<$Res> get repeatPassword {
  
  return $RepeatPasswordCopyWith<$Res>(_self.repeatPassword, (value) {
    return _then(_self.copyWith(repeatPassword: value));
  });
}
}

/// @nodoc


class SignUpStatePasswordMismatch with DiagnosticableTreeMixin implements SignUpState {
  const SignUpStatePasswordMismatch({required this.password, required this.repeatPassword});
  

 final  Password password;
 final  RepeatPassword repeatPassword;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStatePasswordMismatchCopyWith<SignUpStatePasswordMismatch> get copyWith => _$SignUpStatePasswordMismatchCopyWithImpl<SignUpStatePasswordMismatch>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState.passwordMismatch'))
    ..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('repeatPassword', repeatPassword));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStatePasswordMismatch&&(identical(other.password, password) || other.password == password)&&(identical(other.repeatPassword, repeatPassword) || other.repeatPassword == repeatPassword));
}


@override
int get hashCode => Object.hash(runtimeType,password,repeatPassword);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState.passwordMismatch(password: $password, repeatPassword: $repeatPassword)';
}


}

/// @nodoc
abstract mixin class $SignUpStatePasswordMismatchCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpStatePasswordMismatchCopyWith(SignUpStatePasswordMismatch value, $Res Function(SignUpStatePasswordMismatch) _then) = _$SignUpStatePasswordMismatchCopyWithImpl;
@useResult
$Res call({
 Password password, RepeatPassword repeatPassword
});


$PasswordCopyWith<$Res> get password;$RepeatPasswordCopyWith<$Res> get repeatPassword;

}
/// @nodoc
class _$SignUpStatePasswordMismatchCopyWithImpl<$Res>
    implements $SignUpStatePasswordMismatchCopyWith<$Res> {
  _$SignUpStatePasswordMismatchCopyWithImpl(this._self, this._then);

  final SignUpStatePasswordMismatch _self;
  final $Res Function(SignUpStatePasswordMismatch) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,Object? repeatPassword = null,}) {
  return _then(SignUpStatePasswordMismatch(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,repeatPassword: null == repeatPassword ? _self.repeatPassword : repeatPassword // ignore: cast_nullable_to_non_nullable
as RepeatPassword,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCopyWith<$Res> get password {
  
  return $PasswordCopyWith<$Res>(_self.password, (value) {
    return _then(_self.copyWith(password: value));
  });
}/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatPasswordCopyWith<$Res> get repeatPassword {
  
  return $RepeatPasswordCopyWith<$Res>(_self.repeatPassword, (value) {
    return _then(_self.copyWith(repeatPassword: value));
  });
}
}

/// @nodoc


class SignUpStateSavingPassword with DiagnosticableTreeMixin implements SignUpState {
  const SignUpStateSavingPassword();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState.savingPassword'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateSavingPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState.savingPassword()';
}


}




/// @nodoc


class SignUpStateSavedAndAuthorized with DiagnosticableTreeMixin implements SignUpState {
  const SignUpStateSavedAndAuthorized();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState.savedAndAuthorized'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateSavedAndAuthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState.savedAndAuthorized()';
}


}




/// @nodoc


class SignUpStateSavePasswordFailed with DiagnosticableTreeMixin implements SignUpState {
  const SignUpStateSavePasswordFailed({required this.password, required this.repeatPassword, this.error, this.stackTrace});
  

 final  Password password;
 final  RepeatPassword repeatPassword;
 final  Object? error;
 final  StackTrace? stackTrace;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateSavePasswordFailedCopyWith<SignUpStateSavePasswordFailed> get copyWith => _$SignUpStateSavePasswordFailedCopyWithImpl<SignUpStateSavePasswordFailed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignUpState.savePasswordFailed'))
    ..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('repeatPassword', repeatPassword))..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpStateSavePasswordFailed&&(identical(other.password, password) || other.password == password)&&(identical(other.repeatPassword, repeatPassword) || other.repeatPassword == repeatPassword)&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,password,repeatPassword,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignUpState.savePasswordFailed(password: $password, repeatPassword: $repeatPassword, error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $SignUpStateSavePasswordFailedCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpStateSavePasswordFailedCopyWith(SignUpStateSavePasswordFailed value, $Res Function(SignUpStateSavePasswordFailed) _then) = _$SignUpStateSavePasswordFailedCopyWithImpl;
@useResult
$Res call({
 Password password, RepeatPassword repeatPassword, Object? error, StackTrace? stackTrace
});


$PasswordCopyWith<$Res> get password;$RepeatPasswordCopyWith<$Res> get repeatPassword;

}
/// @nodoc
class _$SignUpStateSavePasswordFailedCopyWithImpl<$Res>
    implements $SignUpStateSavePasswordFailedCopyWith<$Res> {
  _$SignUpStateSavePasswordFailedCopyWithImpl(this._self, this._then);

  final SignUpStateSavePasswordFailed _self;
  final $Res Function(SignUpStateSavePasswordFailed) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,Object? repeatPassword = null,Object? error = freezed,Object? stackTrace = freezed,}) {
  return _then(SignUpStateSavePasswordFailed(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,repeatPassword: null == repeatPassword ? _self.repeatPassword : repeatPassword // ignore: cast_nullable_to_non_nullable
as RepeatPassword,error: freezed == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordCopyWith<$Res> get password {
  
  return $PasswordCopyWith<$Res>(_self.password, (value) {
    return _then(_self.copyWith(password: value));
  });
}/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatPasswordCopyWith<$Res> get repeatPassword {
  
  return $RepeatPasswordCopyWith<$Res>(_self.repeatPassword, (value) {
    return _then(_self.copyWith(repeatPassword: value));
  });
}
}

/// @nodoc
mixin _$Password implements DiagnosticableTreeMixin {

 String get value; PasswordError? get error;
/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordCopyWith<Password> get copyWith => _$PasswordCopyWithImpl<Password>(this as Password, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Password'))
    ..add(DiagnosticsProperty('value', value))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Password&&(identical(other.value, value) || other.value == value)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,value,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Password(value: $value, error: $error)';
}


}

/// @nodoc
abstract mixin class $PasswordCopyWith<$Res>  {
  factory $PasswordCopyWith(Password value, $Res Function(Password) _then) = _$PasswordCopyWithImpl;
@useResult
$Res call({
 String value, PasswordError? error
});


$PasswordErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$PasswordCopyWithImpl<$Res>
    implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._self, this._then);

  final Password _self;
  final $Res Function(Password) _then;

/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as PasswordError?,
  ));
}
/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $PasswordErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}



/// @nodoc


class _Password with DiagnosticableTreeMixin implements Password {
  const _Password({this.value = '', this.error});
  

@override@JsonKey() final  String value;
@override final  PasswordError? error;

/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasswordCopyWith<_Password> get copyWith => __$PasswordCopyWithImpl<_Password>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Password'))
    ..add(DiagnosticsProperty('value', value))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Password&&(identical(other.value, value) || other.value == value)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,value,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Password(value: $value, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PasswordCopyWith<$Res> implements $PasswordCopyWith<$Res> {
  factory _$PasswordCopyWith(_Password value, $Res Function(_Password) _then) = __$PasswordCopyWithImpl;
@override @useResult
$Res call({
 String value, PasswordError? error
});


@override $PasswordErrorCopyWith<$Res>? get error;

}
/// @nodoc
class __$PasswordCopyWithImpl<$Res>
    implements _$PasswordCopyWith<$Res> {
  __$PasswordCopyWithImpl(this._self, this._then);

  final _Password _self;
  final $Res Function(_Password) _then;

/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? error = freezed,}) {
  return _then(_Password(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as PasswordError?,
  ));
}

/// Create a copy of Password
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $PasswordErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
mixin _$RepeatPassword implements DiagnosticableTreeMixin {

 String get value; RepeatPasswordError? get error;
/// Create a copy of RepeatPassword
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepeatPasswordCopyWith<RepeatPassword> get copyWith => _$RepeatPasswordCopyWithImpl<RepeatPassword>(this as RepeatPassword, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RepeatPassword'))
    ..add(DiagnosticsProperty('value', value))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatPassword&&(identical(other.value, value) || other.value == value)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,value,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RepeatPassword(value: $value, error: $error)';
}


}

/// @nodoc
abstract mixin class $RepeatPasswordCopyWith<$Res>  {
  factory $RepeatPasswordCopyWith(RepeatPassword value, $Res Function(RepeatPassword) _then) = _$RepeatPasswordCopyWithImpl;
@useResult
$Res call({
 String value, RepeatPasswordError? error
});


$RepeatPasswordErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$RepeatPasswordCopyWithImpl<$Res>
    implements $RepeatPasswordCopyWith<$Res> {
  _$RepeatPasswordCopyWithImpl(this._self, this._then);

  final RepeatPassword _self;
  final $Res Function(RepeatPassword) _then;

/// Create a copy of RepeatPassword
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as RepeatPasswordError?,
  ));
}
/// Create a copy of RepeatPassword
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatPasswordErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $RepeatPasswordErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}



/// @nodoc


class _RepeatPassword with DiagnosticableTreeMixin implements RepeatPassword {
  const _RepeatPassword({this.value = '', this.error});
  

@override@JsonKey() final  String value;
@override final  RepeatPasswordError? error;

/// Create a copy of RepeatPassword
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepeatPasswordCopyWith<_RepeatPassword> get copyWith => __$RepeatPasswordCopyWithImpl<_RepeatPassword>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RepeatPassword'))
    ..add(DiagnosticsProperty('value', value))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepeatPassword&&(identical(other.value, value) || other.value == value)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,value,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RepeatPassword(value: $value, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RepeatPasswordCopyWith<$Res> implements $RepeatPasswordCopyWith<$Res> {
  factory _$RepeatPasswordCopyWith(_RepeatPassword value, $Res Function(_RepeatPassword) _then) = __$RepeatPasswordCopyWithImpl;
@override @useResult
$Res call({
 String value, RepeatPasswordError? error
});


@override $RepeatPasswordErrorCopyWith<$Res>? get error;

}
/// @nodoc
class __$RepeatPasswordCopyWithImpl<$Res>
    implements _$RepeatPasswordCopyWith<$Res> {
  __$RepeatPasswordCopyWithImpl(this._self, this._then);

  final _RepeatPassword _self;
  final $Res Function(_RepeatPassword) _then;

/// Create a copy of RepeatPassword
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? error = freezed,}) {
  return _then(_RepeatPassword(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as RepeatPasswordError?,
  ));
}

/// Create a copy of RepeatPassword
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatPasswordErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $RepeatPasswordErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
mixin _$PasswordError implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordError()';
}


}

/// @nodoc
class $PasswordErrorCopyWith<$Res>  {
$PasswordErrorCopyWith(PasswordError _, $Res Function(PasswordError) __);
}



/// @nodoc


class PasswordErrorEmpty with DiagnosticableTreeMixin implements PasswordError {
  const PasswordErrorEmpty();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordError.empty'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordErrorEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordError.empty()';
}


}




/// @nodoc


class PasswordErrorTooShort with DiagnosticableTreeMixin implements PasswordError {
  const PasswordErrorTooShort();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordError.tooShort'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordErrorTooShort);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordError.tooShort()';
}


}




/// @nodoc


class PasswordErrorTooLong with DiagnosticableTreeMixin implements PasswordError {
  const PasswordErrorTooLong();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordError.tooLong'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordErrorTooLong);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordError.tooLong()';
}


}




/// @nodoc
mixin _$RepeatPasswordError implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RepeatPasswordError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatPasswordError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RepeatPasswordError()';
}


}

/// @nodoc
class $RepeatPasswordErrorCopyWith<$Res>  {
$RepeatPasswordErrorCopyWith(RepeatPasswordError _, $Res Function(RepeatPasswordError) __);
}



/// @nodoc


class RepeatPasswordErrorEmpty with DiagnosticableTreeMixin implements RepeatPasswordError {
  const RepeatPasswordErrorEmpty();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RepeatPasswordError.empty'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatPasswordErrorEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RepeatPasswordError.empty()';
}


}




/// @nodoc


class RepeatPasswordErrorMismatch with DiagnosticableTreeMixin implements RepeatPasswordError {
  const RepeatPasswordErrorMismatch();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RepeatPasswordError.mismatch'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatPasswordErrorMismatch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RepeatPasswordError.mismatch()';
}


}




/// @nodoc
mixin _$PasswordValidateResult implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordValidateResult'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordValidateResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordValidateResult()';
}


}

/// @nodoc
class $PasswordValidateResultCopyWith<$Res>  {
$PasswordValidateResultCopyWith(PasswordValidateResult _, $Res Function(PasswordValidateResult) __);
}



/// @nodoc


class PasswordValidateResultSuccess with DiagnosticableTreeMixin implements PasswordValidateResult {
  const PasswordValidateResultSuccess({required this.password});
  

 final  String password;

/// Create a copy of PasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordValidateResultSuccessCopyWith<PasswordValidateResultSuccess> get copyWith => _$PasswordValidateResultSuccessCopyWithImpl<PasswordValidateResultSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordValidateResult.success'))
    ..add(DiagnosticsProperty('password', password));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordValidateResultSuccess&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordValidateResult.success(password: $password)';
}


}

/// @nodoc
abstract mixin class $PasswordValidateResultSuccessCopyWith<$Res> implements $PasswordValidateResultCopyWith<$Res> {
  factory $PasswordValidateResultSuccessCopyWith(PasswordValidateResultSuccess value, $Res Function(PasswordValidateResultSuccess) _then) = _$PasswordValidateResultSuccessCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$PasswordValidateResultSuccessCopyWithImpl<$Res>
    implements $PasswordValidateResultSuccessCopyWith<$Res> {
  _$PasswordValidateResultSuccessCopyWithImpl(this._self, this._then);

  final PasswordValidateResultSuccess _self;
  final $Res Function(PasswordValidateResultSuccess) _then;

/// Create a copy of PasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(PasswordValidateResultSuccess(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordValidateResultError with DiagnosticableTreeMixin implements PasswordValidateResult {
  const PasswordValidateResultError({required this.reason});
  

 final  PasswordError reason;

/// Create a copy of PasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordValidateResultErrorCopyWith<PasswordValidateResultError> get copyWith => _$PasswordValidateResultErrorCopyWithImpl<PasswordValidateResultError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PasswordValidateResult.error'))
    ..add(DiagnosticsProperty('reason', reason));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordValidateResultError&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PasswordValidateResult.error(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $PasswordValidateResultErrorCopyWith<$Res> implements $PasswordValidateResultCopyWith<$Res> {
  factory $PasswordValidateResultErrorCopyWith(PasswordValidateResultError value, $Res Function(PasswordValidateResultError) _then) = _$PasswordValidateResultErrorCopyWithImpl;
@useResult
$Res call({
 PasswordError reason
});


$PasswordErrorCopyWith<$Res> get reason;

}
/// @nodoc
class _$PasswordValidateResultErrorCopyWithImpl<$Res>
    implements $PasswordValidateResultErrorCopyWith<$Res> {
  _$PasswordValidateResultErrorCopyWithImpl(this._self, this._then);

  final PasswordValidateResultError _self;
  final $Res Function(PasswordValidateResultError) _then;

/// Create a copy of PasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(PasswordValidateResultError(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as PasswordError,
  ));
}

/// Create a copy of PasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasswordErrorCopyWith<$Res> get reason {
  
  return $PasswordErrorCopyWith<$Res>(_self.reason, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}

/// @nodoc
mixin _$RepeatPasswordValidateResult implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RepeatPasswordValidateResult'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatPasswordValidateResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RepeatPasswordValidateResult()';
}


}

/// @nodoc
class $RepeatPasswordValidateResultCopyWith<$Res>  {
$RepeatPasswordValidateResultCopyWith(RepeatPasswordValidateResult _, $Res Function(RepeatPasswordValidateResult) __);
}



/// @nodoc


class RepeatPasswordValidateResultSuccess with DiagnosticableTreeMixin implements RepeatPasswordValidateResult {
  const RepeatPasswordValidateResultSuccess({required this.password});
  

 final  String password;

/// Create a copy of RepeatPasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepeatPasswordValidateResultSuccessCopyWith<RepeatPasswordValidateResultSuccess> get copyWith => _$RepeatPasswordValidateResultSuccessCopyWithImpl<RepeatPasswordValidateResultSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RepeatPasswordValidateResult.success'))
    ..add(DiagnosticsProperty('password', password));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatPasswordValidateResultSuccess&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RepeatPasswordValidateResult.success(password: $password)';
}


}

/// @nodoc
abstract mixin class $RepeatPasswordValidateResultSuccessCopyWith<$Res> implements $RepeatPasswordValidateResultCopyWith<$Res> {
  factory $RepeatPasswordValidateResultSuccessCopyWith(RepeatPasswordValidateResultSuccess value, $Res Function(RepeatPasswordValidateResultSuccess) _then) = _$RepeatPasswordValidateResultSuccessCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$RepeatPasswordValidateResultSuccessCopyWithImpl<$Res>
    implements $RepeatPasswordValidateResultSuccessCopyWith<$Res> {
  _$RepeatPasswordValidateResultSuccessCopyWithImpl(this._self, this._then);

  final RepeatPasswordValidateResultSuccess _self;
  final $Res Function(RepeatPasswordValidateResultSuccess) _then;

/// Create a copy of RepeatPasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(RepeatPasswordValidateResultSuccess(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RepeatPasswordValidateResultError with DiagnosticableTreeMixin implements RepeatPasswordValidateResult {
  const RepeatPasswordValidateResultError({required this.reason});
  

 final  RepeatPasswordError reason;

/// Create a copy of RepeatPasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepeatPasswordValidateResultErrorCopyWith<RepeatPasswordValidateResultError> get copyWith => _$RepeatPasswordValidateResultErrorCopyWithImpl<RepeatPasswordValidateResultError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RepeatPasswordValidateResult.error'))
    ..add(DiagnosticsProperty('reason', reason));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepeatPasswordValidateResultError&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RepeatPasswordValidateResult.error(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $RepeatPasswordValidateResultErrorCopyWith<$Res> implements $RepeatPasswordValidateResultCopyWith<$Res> {
  factory $RepeatPasswordValidateResultErrorCopyWith(RepeatPasswordValidateResultError value, $Res Function(RepeatPasswordValidateResultError) _then) = _$RepeatPasswordValidateResultErrorCopyWithImpl;
@useResult
$Res call({
 RepeatPasswordError reason
});


$RepeatPasswordErrorCopyWith<$Res> get reason;

}
/// @nodoc
class _$RepeatPasswordValidateResultErrorCopyWithImpl<$Res>
    implements $RepeatPasswordValidateResultErrorCopyWith<$Res> {
  _$RepeatPasswordValidateResultErrorCopyWithImpl(this._self, this._then);

  final RepeatPasswordValidateResultError _self;
  final $Res Function(RepeatPasswordValidateResultError) _then;

/// Create a copy of RepeatPasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(RepeatPasswordValidateResultError(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as RepeatPasswordError,
  ));
}

/// Create a copy of RepeatPasswordValidateResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepeatPasswordErrorCopyWith<$Res> get reason {
  
  return $RepeatPasswordErrorCopyWith<$Res>(_self.reason, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}

// dart format on
