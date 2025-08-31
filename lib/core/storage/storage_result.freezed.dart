// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StorageResult<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorageResult<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageResult<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorageResult<$T>()';
}


}

/// @nodoc
class $StorageResultCopyWith<T,$Res>  {
$StorageResultCopyWith(StorageResult<T> _, $Res Function(StorageResult<T>) __);
}



/// @nodoc


class StorageResultValue<T> with DiagnosticableTreeMixin implements StorageResult<T> {
  const StorageResultValue(this.value);
  

 final  T value;

/// Create a copy of StorageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageResultValueCopyWith<T, StorageResultValue<T>> get copyWith => _$StorageResultValueCopyWithImpl<T, StorageResultValue<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorageResult<$T>'))
    ..add(DiagnosticsProperty('value', value));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageResultValue<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorageResult<$T>(value: $value)';
}


}

/// @nodoc
abstract mixin class $StorageResultValueCopyWith<T,$Res> implements $StorageResultCopyWith<T, $Res> {
  factory $StorageResultValueCopyWith(StorageResultValue<T> value, $Res Function(StorageResultValue<T>) _then) = _$StorageResultValueCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class _$StorageResultValueCopyWithImpl<T,$Res>
    implements $StorageResultValueCopyWith<T, $Res> {
  _$StorageResultValueCopyWithImpl(this._self, this._then);

  final StorageResultValue<T> _self;
  final $Res Function(StorageResultValue<T>) _then;

/// Create a copy of StorageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(StorageResultValue<T>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class StorageResultError<T> with DiagnosticableTreeMixin implements StorageResult<T> {
  const StorageResultError(this.error);
  

 final  StorageError error;

/// Create a copy of StorageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageResultErrorCopyWith<T, StorageResultError<T>> get copyWith => _$StorageResultErrorCopyWithImpl<T, StorageResultError<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorageResult<$T>.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageResultError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorageResult<$T>.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $StorageResultErrorCopyWith<T,$Res> implements $StorageResultCopyWith<T, $Res> {
  factory $StorageResultErrorCopyWith(StorageResultError<T> value, $Res Function(StorageResultError<T>) _then) = _$StorageResultErrorCopyWithImpl;
@useResult
$Res call({
 StorageError error
});


$StorageErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$StorageResultErrorCopyWithImpl<T,$Res>
    implements $StorageResultErrorCopyWith<T, $Res> {
  _$StorageResultErrorCopyWithImpl(this._self, this._then);

  final StorageResultError<T> _self;
  final $Res Function(StorageResultError<T>) _then;

/// Create a copy of StorageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(StorageResultError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as StorageError,
  ));
}

/// Create a copy of StorageResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorageErrorCopyWith<$Res> get error {
  
  return $StorageErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
mixin _$SecStorageResult<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageResult<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageResult<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageResult<$T>()';
}


}

/// @nodoc
class $SecStorageResultCopyWith<T,$Res>  {
$SecStorageResultCopyWith(SecStorageResult<T> _, $Res Function(SecStorageResult<T>) __);
}



/// @nodoc


class SecStorageResultSuccess<T> with DiagnosticableTreeMixin implements SecStorageResult<T> {
  const SecStorageResultSuccess(this.value);
  

 final  T value;

/// Create a copy of SecStorageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecStorageResultSuccessCopyWith<T, SecStorageResultSuccess<T>> get copyWith => _$SecStorageResultSuccessCopyWithImpl<T, SecStorageResultSuccess<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageResult<$T>'))
    ..add(DiagnosticsProperty('value', value));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageResultSuccess<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageResult<$T>(value: $value)';
}


}

/// @nodoc
abstract mixin class $SecStorageResultSuccessCopyWith<T,$Res> implements $SecStorageResultCopyWith<T, $Res> {
  factory $SecStorageResultSuccessCopyWith(SecStorageResultSuccess<T> value, $Res Function(SecStorageResultSuccess<T>) _then) = _$SecStorageResultSuccessCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class _$SecStorageResultSuccessCopyWithImpl<T,$Res>
    implements $SecStorageResultSuccessCopyWith<T, $Res> {
  _$SecStorageResultSuccessCopyWithImpl(this._self, this._then);

  final SecStorageResultSuccess<T> _self;
  final $Res Function(SecStorageResultSuccess<T>) _then;

/// Create a copy of SecStorageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(SecStorageResultSuccess<T>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SecStorageResultError<T> with DiagnosticableTreeMixin implements SecStorageResult<T> {
  const SecStorageResultError(this.error);
  

 final  SecStorageError error;

/// Create a copy of SecStorageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecStorageResultErrorCopyWith<T, SecStorageResultError<T>> get copyWith => _$SecStorageResultErrorCopyWithImpl<T, SecStorageResultError<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageResult<$T>.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageResultError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageResult<$T>.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SecStorageResultErrorCopyWith<T,$Res> implements $SecStorageResultCopyWith<T, $Res> {
  factory $SecStorageResultErrorCopyWith(SecStorageResultError<T> value, $Res Function(SecStorageResultError<T>) _then) = _$SecStorageResultErrorCopyWithImpl;
@useResult
$Res call({
 SecStorageError error
});


$SecStorageErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SecStorageResultErrorCopyWithImpl<T,$Res>
    implements $SecStorageResultErrorCopyWith<T, $Res> {
  _$SecStorageResultErrorCopyWithImpl(this._self, this._then);

  final SecStorageResultError<T> _self;
  final $Res Function(SecStorageResultError<T>) _then;

/// Create a copy of SecStorageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SecStorageResultError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SecStorageError,
  ));
}

/// Create a copy of SecStorageResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecStorageErrorCopyWith<$Res> get error {
  
  return $SecStorageErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
mixin _$StorageError implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorageError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorageError()';
}


}

/// @nodoc
class $StorageErrorCopyWith<$Res>  {
$StorageErrorCopyWith(StorageError _, $Res Function(StorageError) __);
}



/// @nodoc


class StorageErrorDatabase with DiagnosticableTreeMixin implements StorageError {
  const StorageErrorDatabase({this.exception, this.stackTrace});
  

 final  Exception? exception;
 final  StackTrace? stackTrace;

/// Create a copy of StorageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageErrorDatabaseCopyWith<StorageErrorDatabase> get copyWith => _$StorageErrorDatabaseCopyWithImpl<StorageErrorDatabase>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorageError.database'))
    ..add(DiagnosticsProperty('exception', exception))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageErrorDatabase&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorageError.database(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $StorageErrorDatabaseCopyWith<$Res> implements $StorageErrorCopyWith<$Res> {
  factory $StorageErrorDatabaseCopyWith(StorageErrorDatabase value, $Res Function(StorageErrorDatabase) _then) = _$StorageErrorDatabaseCopyWithImpl;
@useResult
$Res call({
 Exception? exception, StackTrace? stackTrace
});




}
/// @nodoc
class _$StorageErrorDatabaseCopyWithImpl<$Res>
    implements $StorageErrorDatabaseCopyWith<$Res> {
  _$StorageErrorDatabaseCopyWithImpl(this._self, this._then);

  final StorageErrorDatabase _self;
  final $Res Function(StorageErrorDatabase) _then;

/// Create a copy of StorageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(StorageErrorDatabase(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class StorageErrorFs with DiagnosticableTreeMixin implements StorageError {
  const StorageErrorFs({required this.error});
  

 final  FsError error;

/// Create a copy of StorageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageErrorFsCopyWith<StorageErrorFs> get copyWith => _$StorageErrorFsCopyWithImpl<StorageErrorFs>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StorageError.fs'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageErrorFs&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StorageError.fs(error: $error)';
}


}

/// @nodoc
abstract mixin class $StorageErrorFsCopyWith<$Res> implements $StorageErrorCopyWith<$Res> {
  factory $StorageErrorFsCopyWith(StorageErrorFs value, $Res Function(StorageErrorFs) _then) = _$StorageErrorFsCopyWithImpl;
@useResult
$Res call({
 FsError error
});


$FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$StorageErrorFsCopyWithImpl<$Res>
    implements $StorageErrorFsCopyWith<$Res> {
  _$StorageErrorFsCopyWithImpl(this._self, this._then);

  final StorageErrorFs _self;
  final $Res Function(StorageErrorFs) _then;

/// Create a copy of StorageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(StorageErrorFs(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}

/// Create a copy of StorageError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FsErrorCopyWith<$Res> get error {
  
  return $FsErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
mixin _$SecStorageError implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageError()';
}


}

/// @nodoc
class $SecStorageErrorCopyWith<$Res>  {
$SecStorageErrorCopyWith(SecStorageError _, $Res Function(SecStorageError) __);
}



/// @nodoc


class SecStorageErrorDatabase with DiagnosticableTreeMixin implements SecStorageError {
  const SecStorageErrorDatabase({this.exception, this.stackTrace});
  

 final  Exception? exception;
 final  StackTrace? stackTrace;

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecStorageErrorDatabaseCopyWith<SecStorageErrorDatabase> get copyWith => _$SecStorageErrorDatabaseCopyWithImpl<SecStorageErrorDatabase>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageError.database'))
    ..add(DiagnosticsProperty('exception', exception))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageErrorDatabase&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageError.database(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $SecStorageErrorDatabaseCopyWith<$Res> implements $SecStorageErrorCopyWith<$Res> {
  factory $SecStorageErrorDatabaseCopyWith(SecStorageErrorDatabase value, $Res Function(SecStorageErrorDatabase) _then) = _$SecStorageErrorDatabaseCopyWithImpl;
@useResult
$Res call({
 Exception? exception, StackTrace? stackTrace
});




}
/// @nodoc
class _$SecStorageErrorDatabaseCopyWithImpl<$Res>
    implements $SecStorageErrorDatabaseCopyWith<$Res> {
  _$SecStorageErrorDatabaseCopyWithImpl(this._self, this._then);

  final SecStorageErrorDatabase _self;
  final $Res Function(SecStorageErrorDatabase) _then;

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(SecStorageErrorDatabase(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class SecStorageErrorFs with DiagnosticableTreeMixin implements SecStorageError {
  const SecStorageErrorFs({required this.error});
  

 final  FsError error;

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecStorageErrorFsCopyWith<SecStorageErrorFs> get copyWith => _$SecStorageErrorFsCopyWithImpl<SecStorageErrorFs>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageError.fs'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageErrorFs&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageError.fs(error: $error)';
}


}

/// @nodoc
abstract mixin class $SecStorageErrorFsCopyWith<$Res> implements $SecStorageErrorCopyWith<$Res> {
  factory $SecStorageErrorFsCopyWith(SecStorageErrorFs value, $Res Function(SecStorageErrorFs) _then) = _$SecStorageErrorFsCopyWithImpl;
@useResult
$Res call({
 FsError error
});


$FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SecStorageErrorFsCopyWithImpl<$Res>
    implements $SecStorageErrorFsCopyWith<$Res> {
  _$SecStorageErrorFsCopyWithImpl(this._self, this._then);

  final SecStorageErrorFs _self;
  final $Res Function(SecStorageErrorFs) _then;

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SecStorageErrorFs(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FsErrorCopyWith<$Res> get error {
  
  return $FsErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class SecStorageErrorNoKey with DiagnosticableTreeMixin implements SecStorageError {
  const SecStorageErrorNoKey();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageError.noKey'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageErrorNoKey);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageError.noKey()';
}


}




/// @nodoc


class SecStorageErrorEncrypt with DiagnosticableTreeMixin implements SecStorageError {
  const SecStorageErrorEncrypt({required this.error});
  

 final  EncryptError error;

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecStorageErrorEncryptCopyWith<SecStorageErrorEncrypt> get copyWith => _$SecStorageErrorEncryptCopyWithImpl<SecStorageErrorEncrypt>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageError.encrypt'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageErrorEncrypt&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageError.encrypt(error: $error)';
}


}

/// @nodoc
abstract mixin class $SecStorageErrorEncryptCopyWith<$Res> implements $SecStorageErrorCopyWith<$Res> {
  factory $SecStorageErrorEncryptCopyWith(SecStorageErrorEncrypt value, $Res Function(SecStorageErrorEncrypt) _then) = _$SecStorageErrorEncryptCopyWithImpl;
@useResult
$Res call({
 EncryptError error
});


$EncryptErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SecStorageErrorEncryptCopyWithImpl<$Res>
    implements $SecStorageErrorEncryptCopyWith<$Res> {
  _$SecStorageErrorEncryptCopyWithImpl(this._self, this._then);

  final SecStorageErrorEncrypt _self;
  final $Res Function(SecStorageErrorEncrypt) _then;

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SecStorageErrorEncrypt(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as EncryptError,
  ));
}

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptErrorCopyWith<$Res> get error {
  
  return $EncryptErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class SecStorageErrorDecrypt with DiagnosticableTreeMixin implements SecStorageError {
  const SecStorageErrorDecrypt({required this.error});
  

 final  DecryptError error;

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecStorageErrorDecryptCopyWith<SecStorageErrorDecrypt> get copyWith => _$SecStorageErrorDecryptCopyWithImpl<SecStorageErrorDecrypt>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SecStorageError.decrypt'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecStorageErrorDecrypt&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SecStorageError.decrypt(error: $error)';
}


}

/// @nodoc
abstract mixin class $SecStorageErrorDecryptCopyWith<$Res> implements $SecStorageErrorCopyWith<$Res> {
  factory $SecStorageErrorDecryptCopyWith(SecStorageErrorDecrypt value, $Res Function(SecStorageErrorDecrypt) _then) = _$SecStorageErrorDecryptCopyWithImpl;
@useResult
$Res call({
 DecryptError error
});


$DecryptErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SecStorageErrorDecryptCopyWithImpl<$Res>
    implements $SecStorageErrorDecryptCopyWith<$Res> {
  _$SecStorageErrorDecryptCopyWithImpl(this._self, this._then);

  final SecStorageErrorDecrypt _self;
  final $Res Function(SecStorageErrorDecrypt) _then;

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SecStorageErrorDecrypt(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DecryptError,
  ));
}

/// Create a copy of SecStorageError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecryptErrorCopyWith<$Res> get error {
  
  return $DecryptErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
