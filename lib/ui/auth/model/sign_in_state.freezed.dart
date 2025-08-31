// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState()';
}


}

/// @nodoc
class $SignInStateCopyWith<$Res>  {
$SignInStateCopyWith(SignInState _, $Res Function(SignInState) __);
}



/// @nodoc


class SignInStateInitial with DiagnosticableTreeMixin implements SignInState {
  const SignInStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState.initial()';
}


}




/// @nodoc


class SignInStatePasswordNotLoaded with DiagnosticableTreeMixin implements SignInState {
  const SignInStatePasswordNotLoaded();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState.passwordNotLoaded'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStatePasswordNotLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState.passwordNotLoaded()';
}


}




/// @nodoc


class SignInStatePasswordLoaded with DiagnosticableTreeMixin implements SignInState {
  const SignInStatePasswordLoaded({required this.info});
  

 final  PersistentAuthFactor info;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStatePasswordLoadedCopyWith<SignInStatePasswordLoaded> get copyWith => _$SignInStatePasswordLoadedCopyWithImpl<SignInStatePasswordLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState.passwordLoaded'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStatePasswordLoaded&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState.passwordLoaded(info: $info)';
}


}

/// @nodoc
abstract mixin class $SignInStatePasswordLoadedCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInStatePasswordLoadedCopyWith(SignInStatePasswordLoaded value, $Res Function(SignInStatePasswordLoaded) _then) = _$SignInStatePasswordLoadedCopyWithImpl;
@useResult
$Res call({
 PersistentAuthFactor info
});


$PersistentAuthFactorCopyWith<$Res> get info;

}
/// @nodoc
class _$SignInStatePasswordLoadedCopyWithImpl<$Res>
    implements $SignInStatePasswordLoadedCopyWith<$Res> {
  _$SignInStatePasswordLoadedCopyWithImpl(this._self, this._then);

  final SignInStatePasswordLoaded _self;
  final $Res Function(SignInStatePasswordLoaded) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(SignInStatePasswordLoaded(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PersistentAuthFactor,
  ));
}

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersistentAuthFactorCopyWith<$Res> get info {
  
  return $PersistentAuthFactorCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class SignInStateNoPasswordError with DiagnosticableTreeMixin implements SignInState {
  const SignInStateNoPasswordError();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState.noPasswordError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateNoPasswordError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState.noPasswordError()';
}


}




/// @nodoc


class SignInStateLoadPasswordFailed with DiagnosticableTreeMixin implements SignInState {
  const SignInStateLoadPasswordFailed({this.exception, this.stackTrace});
  

 final  Exception? exception;
 final  StackTrace? stackTrace;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStateLoadPasswordFailedCopyWith<SignInStateLoadPasswordFailed> get copyWith => _$SignInStateLoadPasswordFailedCopyWithImpl<SignInStateLoadPasswordFailed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState.loadPasswordFailed'))
    ..add(DiagnosticsProperty('exception', exception))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateLoadPasswordFailed&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState.loadPasswordFailed(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $SignInStateLoadPasswordFailedCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInStateLoadPasswordFailedCopyWith(SignInStateLoadPasswordFailed value, $Res Function(SignInStateLoadPasswordFailed) _then) = _$SignInStateLoadPasswordFailedCopyWithImpl;
@useResult
$Res call({
 Exception? exception, StackTrace? stackTrace
});




}
/// @nodoc
class _$SignInStateLoadPasswordFailedCopyWithImpl<$Res>
    implements $SignInStateLoadPasswordFailedCopyWith<$Res> {
  _$SignInStateLoadPasswordFailedCopyWithImpl(this._self, this._then);

  final SignInStateLoadPasswordFailed _self;
  final $Res Function(SignInStateLoadPasswordFailed) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(SignInStateLoadPasswordFailed(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class SignInStateAuthInProgress with DiagnosticableTreeMixin implements SignInState {
  const SignInStateAuthInProgress({required this.info});
  

 final  PersistentAuthFactor info;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStateAuthInProgressCopyWith<SignInStateAuthInProgress> get copyWith => _$SignInStateAuthInProgressCopyWithImpl<SignInStateAuthInProgress>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState.authInProgress'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateAuthInProgress&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState.authInProgress(info: $info)';
}


}

/// @nodoc
abstract mixin class $SignInStateAuthInProgressCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInStateAuthInProgressCopyWith(SignInStateAuthInProgress value, $Res Function(SignInStateAuthInProgress) _then) = _$SignInStateAuthInProgressCopyWithImpl;
@useResult
$Res call({
 PersistentAuthFactor info
});


$PersistentAuthFactorCopyWith<$Res> get info;

}
/// @nodoc
class _$SignInStateAuthInProgressCopyWithImpl<$Res>
    implements $SignInStateAuthInProgressCopyWith<$Res> {
  _$SignInStateAuthInProgressCopyWithImpl(this._self, this._then);

  final SignInStateAuthInProgress _self;
  final $Res Function(SignInStateAuthInProgress) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(SignInStateAuthInProgress(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PersistentAuthFactor,
  ));
}

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersistentAuthFactorCopyWith<$Res> get info {
  
  return $PersistentAuthFactorCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class SignInStateAuthSuccess with DiagnosticableTreeMixin implements SignInState {
  const SignInStateAuthSuccess({required this.info});
  

 final  PersistentAuthFactor info;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStateAuthSuccessCopyWith<SignInStateAuthSuccess> get copyWith => _$SignInStateAuthSuccessCopyWithImpl<SignInStateAuthSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState.authSuccess'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateAuthSuccess&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState.authSuccess(info: $info)';
}


}

/// @nodoc
abstract mixin class $SignInStateAuthSuccessCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInStateAuthSuccessCopyWith(SignInStateAuthSuccess value, $Res Function(SignInStateAuthSuccess) _then) = _$SignInStateAuthSuccessCopyWithImpl;
@useResult
$Res call({
 PersistentAuthFactor info
});


$PersistentAuthFactorCopyWith<$Res> get info;

}
/// @nodoc
class _$SignInStateAuthSuccessCopyWithImpl<$Res>
    implements $SignInStateAuthSuccessCopyWith<$Res> {
  _$SignInStateAuthSuccessCopyWithImpl(this._self, this._then);

  final SignInStateAuthSuccess _self;
  final $Res Function(SignInStateAuthSuccess) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(SignInStateAuthSuccess(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PersistentAuthFactor,
  ));
}

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersistentAuthFactorCopyWith<$Res> get info {
  
  return $PersistentAuthFactorCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class SignInStateAuthFailed with DiagnosticableTreeMixin implements SignInState {
  const SignInStateAuthFailed({required this.info, required this.reason});
  

 final  PersistentAuthFactor info;
 final  SignInError reason;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStateAuthFailedCopyWith<SignInStateAuthFailed> get copyWith => _$SignInStateAuthFailedCopyWithImpl<SignInStateAuthFailed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInState.authFailed'))
    ..add(DiagnosticsProperty('info', info))..add(DiagnosticsProperty('reason', reason));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInStateAuthFailed&&(identical(other.info, info) || other.info == info)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,info,reason);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInState.authFailed(info: $info, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $SignInStateAuthFailedCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInStateAuthFailedCopyWith(SignInStateAuthFailed value, $Res Function(SignInStateAuthFailed) _then) = _$SignInStateAuthFailedCopyWithImpl;
@useResult
$Res call({
 PersistentAuthFactor info, SignInError reason
});


$PersistentAuthFactorCopyWith<$Res> get info;$SignInErrorCopyWith<$Res> get reason;

}
/// @nodoc
class _$SignInStateAuthFailedCopyWithImpl<$Res>
    implements $SignInStateAuthFailedCopyWith<$Res> {
  _$SignInStateAuthFailedCopyWithImpl(this._self, this._then);

  final SignInStateAuthFailed _self;
  final $Res Function(SignInStateAuthFailed) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? info = null,Object? reason = null,}) {
  return _then(SignInStateAuthFailed(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PersistentAuthFactor,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as SignInError,
  ));
}

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersistentAuthFactorCopyWith<$Res> get info {
  
  return $PersistentAuthFactorCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignInErrorCopyWith<$Res> get reason {
  
  return $SignInErrorCopyWith<$Res>(_self.reason, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}

/// @nodoc
mixin _$SignInError implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInError()';
}


}

/// @nodoc
class $SignInErrorCopyWith<$Res>  {
$SignInErrorCopyWith(SignInError _, $Res Function(SignInError) __);
}



/// @nodoc


class SignInErrorEmptyPassword with DiagnosticableTreeMixin implements SignInError {
  const SignInErrorEmptyPassword();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInError.emptyPassword'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInErrorEmptyPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInError.emptyPassword()';
}


}




/// @nodoc


class SignInErrorWrongPassword with DiagnosticableTreeMixin implements SignInError {
  const SignInErrorWrongPassword();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInError.wrongPassword'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInErrorWrongPassword);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInError.wrongPassword()';
}


}




/// @nodoc


class SignInErrorException with DiagnosticableTreeMixin implements SignInError {
  const SignInErrorException({required this.error, required this.stackTrace});
  

 final  Object error;
 final  StackTrace stackTrace;

/// Create a copy of SignInError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInErrorExceptionCopyWith<SignInErrorException> get copyWith => _$SignInErrorExceptionCopyWithImpl<SignInErrorException>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignInError.exception'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInErrorException&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignInError.exception(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $SignInErrorExceptionCopyWith<$Res> implements $SignInErrorCopyWith<$Res> {
  factory $SignInErrorExceptionCopyWith(SignInErrorException value, $Res Function(SignInErrorException) _then) = _$SignInErrorExceptionCopyWithImpl;
@useResult
$Res call({
 Object error, StackTrace stackTrace
});




}
/// @nodoc
class _$SignInErrorExceptionCopyWithImpl<$Res>
    implements $SignInErrorExceptionCopyWith<$Res> {
  _$SignInErrorExceptionCopyWithImpl(this._self, this._then);

  final SignInErrorException _self;
  final $Res Function(SignInErrorException) _then;

/// Create a copy of SignInError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = null,}) {
  return _then(SignInErrorException(
error: null == error ? _self.error : error ,stackTrace: null == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace,
  ));
}


}

// dart format on
