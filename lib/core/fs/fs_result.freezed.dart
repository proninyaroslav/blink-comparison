// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fs_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FsResult<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FsResult<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FsResult<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FsResult<$T>()';
}


}

/// @nodoc
class $FsResultCopyWith<T,$Res>  {
$FsResultCopyWith(FsResult<T> _, $Res Function(FsResult<T>) __);
}



/// @nodoc


class FsResultSuccess<T> with DiagnosticableTreeMixin implements FsResult<T> {
  const FsResultSuccess(this.value);
  

 final  T value;

/// Create a copy of FsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FsResultSuccessCopyWith<T, FsResultSuccess<T>> get copyWith => _$FsResultSuccessCopyWithImpl<T, FsResultSuccess<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FsResult<$T>'))
    ..add(DiagnosticsProperty('value', value));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FsResultSuccess<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FsResult<$T>(value: $value)';
}


}

/// @nodoc
abstract mixin class $FsResultSuccessCopyWith<T,$Res> implements $FsResultCopyWith<T, $Res> {
  factory $FsResultSuccessCopyWith(FsResultSuccess<T> value, $Res Function(FsResultSuccess<T>) _then) = _$FsResultSuccessCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class _$FsResultSuccessCopyWithImpl<T,$Res>
    implements $FsResultSuccessCopyWith<T, $Res> {
  _$FsResultSuccessCopyWithImpl(this._self, this._then);

  final FsResultSuccess<T> _self;
  final $Res Function(FsResultSuccess<T>) _then;

/// Create a copy of FsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(FsResultSuccess<T>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class FsResultError<T> with DiagnosticableTreeMixin implements FsResult<T> {
  const FsResultError(this.error);
  

 final  FsError error;

/// Create a copy of FsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FsResultErrorCopyWith<T, FsResultError<T>> get copyWith => _$FsResultErrorCopyWithImpl<T, FsResultError<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FsResult<$T>.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FsResultError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FsResult<$T>.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $FsResultErrorCopyWith<T,$Res> implements $FsResultCopyWith<T, $Res> {
  factory $FsResultErrorCopyWith(FsResultError<T> value, $Res Function(FsResultError<T>) _then) = _$FsResultErrorCopyWithImpl;
@useResult
$Res call({
 FsError error
});


$FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$FsResultErrorCopyWithImpl<T,$Res>
    implements $FsResultErrorCopyWith<T, $Res> {
  _$FsResultErrorCopyWithImpl(this._self, this._then);

  final FsResultError<T> _self;
  final $Res Function(FsResultError<T>) _then;

/// Create a copy of FsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(FsResultError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}

/// Create a copy of FsResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FsErrorCopyWith<$Res> get error {
  
  return $FsErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

FsError _$FsErrorFromJson(
  Map<String, dynamic> json
) {
    return FsErrorIO.fromJson(
      json
    );
}

/// @nodoc
mixin _$FsError implements DiagnosticableTreeMixin {

@ExceptionConverter() Exception? get exception;@StackTraceConverter() StackTrace? get stackTrace;
/// Create a copy of FsError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FsErrorCopyWith<FsError> get copyWith => _$FsErrorCopyWithImpl<FsError>(this as FsError, _$identity);

  /// Serializes this FsError to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FsError'))
    ..add(DiagnosticsProperty('exception', exception))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FsError&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FsError(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $FsErrorCopyWith<$Res>  {
  factory $FsErrorCopyWith(FsError value, $Res Function(FsError) _then) = _$FsErrorCopyWithImpl;
@useResult
$Res call({
@ExceptionConverter() Exception? exception,@StackTraceConverter() StackTrace? stackTrace
});




}
/// @nodoc
class _$FsErrorCopyWithImpl<$Res>
    implements $FsErrorCopyWith<$Res> {
  _$FsErrorCopyWithImpl(this._self, this._then);

  final FsError _self;
  final $Res Function(FsError) _then;

/// Create a copy of FsError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(_self.copyWith(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class FsErrorIO with DiagnosticableTreeMixin implements FsError {
  const FsErrorIO({@ExceptionConverter() this.exception, @StackTraceConverter() this.stackTrace});
  factory FsErrorIO.fromJson(Map<String, dynamic> json) => _$FsErrorIOFromJson(json);

@override@ExceptionConverter() final  Exception? exception;
@override@StackTraceConverter() final  StackTrace? stackTrace;

/// Create a copy of FsError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FsErrorIOCopyWith<FsErrorIO> get copyWith => _$FsErrorIOCopyWithImpl<FsErrorIO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FsErrorIOToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FsError.io'))
    ..add(DiagnosticsProperty('exception', exception))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FsErrorIO&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FsError.io(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $FsErrorIOCopyWith<$Res> implements $FsErrorCopyWith<$Res> {
  factory $FsErrorIOCopyWith(FsErrorIO value, $Res Function(FsErrorIO) _then) = _$FsErrorIOCopyWithImpl;
@override @useResult
$Res call({
@ExceptionConverter() Exception? exception,@StackTraceConverter() StackTrace? stackTrace
});




}
/// @nodoc
class _$FsErrorIOCopyWithImpl<$Res>
    implements $FsErrorIOCopyWith<$Res> {
  _$FsErrorIOCopyWithImpl(this._self, this._then);

  final FsErrorIO _self;
  final $Res Function(FsErrorIO) _then;

/// Create a copy of FsError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(FsErrorIO(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
