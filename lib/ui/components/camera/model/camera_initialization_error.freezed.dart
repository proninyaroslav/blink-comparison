// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_initialization_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraInitializationError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraInitializationError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CameraInitializationError()';
}


}

/// @nodoc
class $CameraInitializationErrorCopyWith<$Res>  {
$CameraInitializationErrorCopyWith(CameraInitializationError _, $Res Function(CameraInitializationError) __);
}



/// @nodoc


class CameraInitializationErrorAccessDenied implements CameraInitializationError {
  const CameraInitializationErrorAccessDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraInitializationErrorAccessDenied);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CameraInitializationError.accessDenied()';
}


}




/// @nodoc


class CameraInitializationErrorException implements CameraInitializationError {
  const CameraInitializationErrorException({required this.exception, this.stackTrace});
  

 final  Exception exception;
 final  StackTrace? stackTrace;

/// Create a copy of CameraInitializationError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraInitializationErrorExceptionCopyWith<CameraInitializationErrorException> get copyWith => _$CameraInitializationErrorExceptionCopyWithImpl<CameraInitializationErrorException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraInitializationErrorException&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString() {
  return 'CameraInitializationError.exception(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $CameraInitializationErrorExceptionCopyWith<$Res> implements $CameraInitializationErrorCopyWith<$Res> {
  factory $CameraInitializationErrorExceptionCopyWith(CameraInitializationErrorException value, $Res Function(CameraInitializationErrorException) _then) = _$CameraInitializationErrorExceptionCopyWithImpl;
@useResult
$Res call({
 Exception exception, StackTrace? stackTrace
});




}
/// @nodoc
class _$CameraInitializationErrorExceptionCopyWithImpl<$Res>
    implements $CameraInitializationErrorExceptionCopyWith<$Res> {
  _$CameraInitializationErrorExceptionCopyWithImpl(this._self, this._then);

  final CameraInitializationErrorException _self;
  final $Res Function(CameraInitializationErrorException) _then;

/// Create a copy of CameraInitializationError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,Object? stackTrace = freezed,}) {
  return _then(CameraInitializationErrorException(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
