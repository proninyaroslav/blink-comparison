// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypt_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EncryptResult implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EncryptResult'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EncryptResult()';
}


}

/// @nodoc
class $EncryptResultCopyWith<$Res>  {
$EncryptResultCopyWith(EncryptResult _, $Res Function(EncryptResult) __);
}



/// @nodoc


class EncryptResultSuccess with DiagnosticableTreeMixin implements EncryptResult {
  const EncryptResultSuccess({required this.bytes});
  

 final  Uint8List bytes;

/// Create a copy of EncryptResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptResultSuccessCopyWith<EncryptResultSuccess> get copyWith => _$EncryptResultSuccessCopyWithImpl<EncryptResultSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EncryptResult.success'))
    ..add(DiagnosticsProperty('bytes', bytes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptResultSuccess&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EncryptResult.success(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $EncryptResultSuccessCopyWith<$Res> implements $EncryptResultCopyWith<$Res> {
  factory $EncryptResultSuccessCopyWith(EncryptResultSuccess value, $Res Function(EncryptResultSuccess) _then) = _$EncryptResultSuccessCopyWithImpl;
@useResult
$Res call({
 Uint8List bytes
});




}
/// @nodoc
class _$EncryptResultSuccessCopyWithImpl<$Res>
    implements $EncryptResultSuccessCopyWith<$Res> {
  _$EncryptResultSuccessCopyWithImpl(this._self, this._then);

  final EncryptResultSuccess _self;
  final $Res Function(EncryptResultSuccess) _then;

/// Create a copy of EncryptResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(EncryptResultSuccess(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class EncryptResultFail with DiagnosticableTreeMixin implements EncryptResult {
  const EncryptResultFail(this.error);
  

 final  EncryptError error;

/// Create a copy of EncryptResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptResultFailCopyWith<EncryptResultFail> get copyWith => _$EncryptResultFailCopyWithImpl<EncryptResultFail>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EncryptResult.fail'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptResultFail&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EncryptResult.fail(error: $error)';
}


}

/// @nodoc
abstract mixin class $EncryptResultFailCopyWith<$Res> implements $EncryptResultCopyWith<$Res> {
  factory $EncryptResultFailCopyWith(EncryptResultFail value, $Res Function(EncryptResultFail) _then) = _$EncryptResultFailCopyWithImpl;
@useResult
$Res call({
 EncryptError error
});


$EncryptErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$EncryptResultFailCopyWithImpl<$Res>
    implements $EncryptResultFailCopyWith<$Res> {
  _$EncryptResultFailCopyWithImpl(this._self, this._then);

  final EncryptResultFail _self;
  final $Res Function(EncryptResultFail) _then;

/// Create a copy of EncryptResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(EncryptResultFail(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as EncryptError,
  ));
}

/// Create a copy of EncryptResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptErrorCopyWith<$Res> get error {
  
  return $EncryptErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

EncryptError _$EncryptErrorFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'exception':
          return EncryptErrorException.fromJson(
            json
          );
                case 'noSecureKey':
          return EncryptErrorNoSecureKey.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'EncryptError',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$EncryptError implements DiagnosticableTreeMixin {



  /// Serializes this EncryptError to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EncryptError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptError);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EncryptError()';
}


}

/// @nodoc
class $EncryptErrorCopyWith<$Res>  {
$EncryptErrorCopyWith(EncryptError _, $Res Function(EncryptError) __);
}



/// @nodoc
@JsonSerializable()

class EncryptErrorException with DiagnosticableTreeMixin implements EncryptError {
  const EncryptErrorException({@ExceptionConverter() this.error, @StackTraceConverter() this.stackTrace, final  String? $type}): $type = $type ?? 'exception';
  factory EncryptErrorException.fromJson(Map<String, dynamic> json) => _$EncryptErrorExceptionFromJson(json);

@ExceptionConverter() final  Exception? error;
@StackTraceConverter() final  StackTrace? stackTrace;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of EncryptError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptErrorExceptionCopyWith<EncryptErrorException> get copyWith => _$EncryptErrorExceptionCopyWithImpl<EncryptErrorException>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptErrorExceptionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EncryptError.exception'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptErrorException&&(identical(other.error, error) || other.error == error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EncryptError.exception(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $EncryptErrorExceptionCopyWith<$Res> implements $EncryptErrorCopyWith<$Res> {
  factory $EncryptErrorExceptionCopyWith(EncryptErrorException value, $Res Function(EncryptErrorException) _then) = _$EncryptErrorExceptionCopyWithImpl;
@useResult
$Res call({
@ExceptionConverter() Exception? error,@StackTraceConverter() StackTrace? stackTrace
});




}
/// @nodoc
class _$EncryptErrorExceptionCopyWithImpl<$Res>
    implements $EncryptErrorExceptionCopyWith<$Res> {
  _$EncryptErrorExceptionCopyWithImpl(this._self, this._then);

  final EncryptErrorException _self;
  final $Res Function(EncryptErrorException) _then;

/// Create a copy of EncryptError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? stackTrace = freezed,}) {
  return _then(EncryptErrorException(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class EncryptErrorNoSecureKey with DiagnosticableTreeMixin implements EncryptError {
  const EncryptErrorNoSecureKey({final  String? $type}): $type = $type ?? 'noSecureKey';
  factory EncryptErrorNoSecureKey.fromJson(Map<String, dynamic> json) => _$EncryptErrorNoSecureKeyFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$EncryptErrorNoSecureKeyToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EncryptError.noSecureKey'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptErrorNoSecureKey);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EncryptError.noSecureKey()';
}


}




/// @nodoc
mixin _$DecryptResult implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DecryptResult'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DecryptResult()';
}


}

/// @nodoc
class $DecryptResultCopyWith<$Res>  {
$DecryptResultCopyWith(DecryptResult _, $Res Function(DecryptResult) __);
}



/// @nodoc


class DecryptResultSuccess with DiagnosticableTreeMixin implements DecryptResult {
  const DecryptResultSuccess({required this.bytes});
  

 final  Uint8List bytes;

/// Create a copy of DecryptResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptResultSuccessCopyWith<DecryptResultSuccess> get copyWith => _$DecryptResultSuccessCopyWithImpl<DecryptResultSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DecryptResult.success'))
    ..add(DiagnosticsProperty('bytes', bytes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptResultSuccess&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DecryptResult.success(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $DecryptResultSuccessCopyWith<$Res> implements $DecryptResultCopyWith<$Res> {
  factory $DecryptResultSuccessCopyWith(DecryptResultSuccess value, $Res Function(DecryptResultSuccess) _then) = _$DecryptResultSuccessCopyWithImpl;
@useResult
$Res call({
 Uint8List bytes
});




}
/// @nodoc
class _$DecryptResultSuccessCopyWithImpl<$Res>
    implements $DecryptResultSuccessCopyWith<$Res> {
  _$DecryptResultSuccessCopyWithImpl(this._self, this._then);

  final DecryptResultSuccess _self;
  final $Res Function(DecryptResultSuccess) _then;

/// Create a copy of DecryptResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(DecryptResultSuccess(
bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class DecryptResultFail with DiagnosticableTreeMixin implements DecryptResult {
  const DecryptResultFail(this.error);
  

 final  DecryptError error;

/// Create a copy of DecryptResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptResultFailCopyWith<DecryptResultFail> get copyWith => _$DecryptResultFailCopyWithImpl<DecryptResultFail>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DecryptResult.fail'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptResultFail&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DecryptResult.fail(error: $error)';
}


}

/// @nodoc
abstract mixin class $DecryptResultFailCopyWith<$Res> implements $DecryptResultCopyWith<$Res> {
  factory $DecryptResultFailCopyWith(DecryptResultFail value, $Res Function(DecryptResultFail) _then) = _$DecryptResultFailCopyWithImpl;
@useResult
$Res call({
 DecryptError error
});


$DecryptErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$DecryptResultFailCopyWithImpl<$Res>
    implements $DecryptResultFailCopyWith<$Res> {
  _$DecryptResultFailCopyWithImpl(this._self, this._then);

  final DecryptResultFail _self;
  final $Res Function(DecryptResultFail) _then;

/// Create a copy of DecryptResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DecryptResultFail(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DecryptError,
  ));
}

/// Create a copy of DecryptResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecryptErrorCopyWith<$Res> get error {
  
  return $DecryptErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
mixin _$DecryptError implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DecryptError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DecryptError()';
}


}

/// @nodoc
class $DecryptErrorCopyWith<$Res>  {
$DecryptErrorCopyWith(DecryptError _, $Res Function(DecryptError) __);
}



/// @nodoc


class DecryptErrorException with DiagnosticableTreeMixin implements DecryptError {
  const DecryptErrorException({this.error, this.stackTrace});
  

 final  Exception? error;
 final  StackTrace? stackTrace;

/// Create a copy of DecryptError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptErrorExceptionCopyWith<DecryptErrorException> get copyWith => _$DecryptErrorExceptionCopyWithImpl<DecryptErrorException>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DecryptError.exception'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptErrorException&&(identical(other.error, error) || other.error == error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,error,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DecryptError.exception(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $DecryptErrorExceptionCopyWith<$Res> implements $DecryptErrorCopyWith<$Res> {
  factory $DecryptErrorExceptionCopyWith(DecryptErrorException value, $Res Function(DecryptErrorException) _then) = _$DecryptErrorExceptionCopyWithImpl;
@useResult
$Res call({
 Exception? error, StackTrace? stackTrace
});




}
/// @nodoc
class _$DecryptErrorExceptionCopyWithImpl<$Res>
    implements $DecryptErrorExceptionCopyWith<$Res> {
  _$DecryptErrorExceptionCopyWithImpl(this._self, this._then);

  final DecryptErrorException _self;
  final $Res Function(DecryptErrorException) _then;

/// Create a copy of DecryptError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? stackTrace = freezed,}) {
  return _then(DecryptErrorException(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class DecryptErrorNoSecureKey with DiagnosticableTreeMixin implements DecryptError {
  const DecryptErrorNoSecureKey();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DecryptError.noSecureKey'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptErrorNoSecureKey);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DecryptError.noSecureKey()';
}


}




// dart format on
