// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_factor_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFactorModifyResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFactorModifyResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFactorModifyResult()';
}


}

/// @nodoc
class $AuthFactorModifyResultCopyWith<$Res>  {
$AuthFactorModifyResultCopyWith(AuthFactorModifyResult _, $Res Function(AuthFactorModifyResult) __);
}



/// @nodoc


class AuthFactorModifyResultSuccess implements AuthFactorModifyResult {
  const AuthFactorModifyResultSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFactorModifyResultSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFactorModifyResult.success()';
}


}




/// @nodoc


class AuthFactorModifyResultFailed implements AuthFactorModifyResult {
  const AuthFactorModifyResultFailed({required this.error, required this.stackTrace});
  

 final  Object error;
 final  StackTrace stackTrace;

/// Create a copy of AuthFactorModifyResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthFactorModifyResultFailedCopyWith<AuthFactorModifyResultFailed> get copyWith => _$AuthFactorModifyResultFailedCopyWithImpl<AuthFactorModifyResultFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFactorModifyResultFailed&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'AuthFactorModifyResult.failed(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $AuthFactorModifyResultFailedCopyWith<$Res> implements $AuthFactorModifyResultCopyWith<$Res> {
  factory $AuthFactorModifyResultFailedCopyWith(AuthFactorModifyResultFailed value, $Res Function(AuthFactorModifyResultFailed) _then) = _$AuthFactorModifyResultFailedCopyWithImpl;
@useResult
$Res call({
 Object error, StackTrace stackTrace
});




}
/// @nodoc
class _$AuthFactorModifyResultFailedCopyWithImpl<$Res>
    implements $AuthFactorModifyResultFailedCopyWith<$Res> {
  _$AuthFactorModifyResultFailedCopyWithImpl(this._self, this._then);

  final AuthFactorModifyResultFailed _self;
  final $Res Function(AuthFactorModifyResultFailed) _then;

/// Create a copy of AuthFactorModifyResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = null,}) {
  return _then(AuthFactorModifyResultFailed(
error: null == error ? _self.error : error ,stackTrace: null == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace,
  ));
}


}

// dart format on
