// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_ref_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddRefImageState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageState()';
}


}

/// @nodoc
class $AddRefImageStateCopyWith<$Res>  {
$AddRefImageStateCopyWith(AddRefImageState _, $Res Function(AddRefImageState) __);
}



/// @nodoc


class AddRefImageStateInitial with DiagnosticableTreeMixin implements AddRefImageState {
  const AddRefImageStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageState.initial()';
}


}




/// @nodoc


class AddRefImageStateAddingImage with DiagnosticableTreeMixin implements AddRefImageState {
  const AddRefImageStateAddingImage();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageState.addingImages'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageStateAddingImage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageState.addingImages()';
}


}




/// @nodoc


class AddRefImageStateImagesAdded with DiagnosticableTreeMixin implements AddRefImageState {
  const AddRefImageStateImagesAdded(this.result);
  

 final  AddRefImageResult result;

/// Create a copy of AddRefImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRefImageStateImagesAddedCopyWith<AddRefImageStateImagesAdded> get copyWith => _$AddRefImageStateImagesAddedCopyWithImpl<AddRefImageStateImagesAdded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageState.imagesAdded'))
    ..add(DiagnosticsProperty('result', result));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageStateImagesAdded&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageState.imagesAdded(result: $result)';
}


}

/// @nodoc
abstract mixin class $AddRefImageStateImagesAddedCopyWith<$Res> implements $AddRefImageStateCopyWith<$Res> {
  factory $AddRefImageStateImagesAddedCopyWith(AddRefImageStateImagesAdded value, $Res Function(AddRefImageStateImagesAdded) _then) = _$AddRefImageStateImagesAddedCopyWithImpl;
@useResult
$Res call({
 AddRefImageResult result
});


$AddRefImageResultCopyWith<$Res> get result;

}
/// @nodoc
class _$AddRefImageStateImagesAddedCopyWithImpl<$Res>
    implements $AddRefImageStateImagesAddedCopyWith<$Res> {
  _$AddRefImageStateImagesAddedCopyWithImpl(this._self, this._then);

  final AddRefImageStateImagesAdded _self;
  final $Res Function(AddRefImageStateImagesAdded) _then;

/// Create a copy of AddRefImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(AddRefImageStateImagesAdded(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AddRefImageResult,
  ));
}

/// Create a copy of AddRefImageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddRefImageResultCopyWith<$Res> get result {
  
  return $AddRefImageResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

/// @nodoc


class AddRefImageStateNoSecureKey with DiagnosticableTreeMixin implements AddRefImageState {
  const AddRefImageStateNoSecureKey();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageState.noSecureKey'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageStateNoSecureKey);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageState.noSecureKey()';
}


}




/// @nodoc
mixin _$AddRefImageResult implements DiagnosticableTreeMixin {

 List<RefImageInfo> get successList; List<AddRefImageError> get failedList;
/// Create a copy of AddRefImageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRefImageResultCopyWith<AddRefImageResult> get copyWith => _$AddRefImageResultCopyWithImpl<AddRefImageResult>(this as AddRefImageResult, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageResult'))
    ..add(DiagnosticsProperty('successList', successList))..add(DiagnosticsProperty('failedList', failedList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageResult&&const DeepCollectionEquality().equals(other.successList, successList)&&const DeepCollectionEquality().equals(other.failedList, failedList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(successList),const DeepCollectionEquality().hash(failedList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageResult(successList: $successList, failedList: $failedList)';
}


}

/// @nodoc
abstract mixin class $AddRefImageResultCopyWith<$Res>  {
  factory $AddRefImageResultCopyWith(AddRefImageResult value, $Res Function(AddRefImageResult) _then) = _$AddRefImageResultCopyWithImpl;
@useResult
$Res call({
 List<RefImageInfo> successList, List<AddRefImageError> failedList
});




}
/// @nodoc
class _$AddRefImageResultCopyWithImpl<$Res>
    implements $AddRefImageResultCopyWith<$Res> {
  _$AddRefImageResultCopyWithImpl(this._self, this._then);

  final AddRefImageResult _self;
  final $Res Function(AddRefImageResult) _then;

/// Create a copy of AddRefImageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? successList = null,Object? failedList = null,}) {
  return _then(_self.copyWith(
successList: null == successList ? _self.successList : successList // ignore: cast_nullable_to_non_nullable
as List<RefImageInfo>,failedList: null == failedList ? _self.failedList : failedList // ignore: cast_nullable_to_non_nullable
as List<AddRefImageError>,
  ));
}

}



/// @nodoc


class _AddRefImageResult with DiagnosticableTreeMixin implements AddRefImageResult {
  const _AddRefImageResult({required final  List<RefImageInfo> successList, required final  List<AddRefImageError> failedList}): _successList = successList,_failedList = failedList;
  

 final  List<RefImageInfo> _successList;
@override List<RefImageInfo> get successList {
  if (_successList is EqualUnmodifiableListView) return _successList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_successList);
}

 final  List<AddRefImageError> _failedList;
@override List<AddRefImageError> get failedList {
  if (_failedList is EqualUnmodifiableListView) return _failedList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failedList);
}


/// Create a copy of AddRefImageResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddRefImageResultCopyWith<_AddRefImageResult> get copyWith => __$AddRefImageResultCopyWithImpl<_AddRefImageResult>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageResult'))
    ..add(DiagnosticsProperty('successList', successList))..add(DiagnosticsProperty('failedList', failedList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddRefImageResult&&const DeepCollectionEquality().equals(other._successList, _successList)&&const DeepCollectionEquality().equals(other._failedList, _failedList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_successList),const DeepCollectionEquality().hash(_failedList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageResult(successList: $successList, failedList: $failedList)';
}


}

/// @nodoc
abstract mixin class _$AddRefImageResultCopyWith<$Res> implements $AddRefImageResultCopyWith<$Res> {
  factory _$AddRefImageResultCopyWith(_AddRefImageResult value, $Res Function(_AddRefImageResult) _then) = __$AddRefImageResultCopyWithImpl;
@override @useResult
$Res call({
 List<RefImageInfo> successList, List<AddRefImageError> failedList
});




}
/// @nodoc
class __$AddRefImageResultCopyWithImpl<$Res>
    implements _$AddRefImageResultCopyWith<$Res> {
  __$AddRefImageResultCopyWithImpl(this._self, this._then);

  final _AddRefImageResult _self;
  final $Res Function(_AddRefImageResult) _then;

/// Create a copy of AddRefImageResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? successList = null,Object? failedList = null,}) {
  return _then(_AddRefImageResult(
successList: null == successList ? _self._successList : successList // ignore: cast_nullable_to_non_nullable
as List<RefImageInfo>,failedList: null == failedList ? _self._failedList : failedList // ignore: cast_nullable_to_non_nullable
as List<AddRefImageError>,
  ));
}


}

/// @nodoc
mixin _$AddRefImageError implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageError()';
}


}

/// @nodoc
class $AddRefImageErrorCopyWith<$Res>  {
$AddRefImageErrorCopyWith(AddRefImageError _, $Res Function(AddRefImageError) __);
}



/// @nodoc


class AddRefImageErrorData with DiagnosticableTreeMixin implements AddRefImageError {
  const AddRefImageErrorData({required this.path, this.exception, this.stackTrace});
  

 final  String path;
 final  Exception? exception;
 final  StackTrace? stackTrace;

/// Create a copy of AddRefImageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRefImageErrorDataCopyWith<AddRefImageErrorData> get copyWith => _$AddRefImageErrorDataCopyWithImpl<AddRefImageErrorData>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageError'))
    ..add(DiagnosticsProperty('path', path))..add(DiagnosticsProperty('exception', exception))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageErrorData&&(identical(other.path, path) || other.path == path)&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,path,exception,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageError(path: $path, exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $AddRefImageErrorDataCopyWith<$Res> implements $AddRefImageErrorCopyWith<$Res> {
  factory $AddRefImageErrorDataCopyWith(AddRefImageErrorData value, $Res Function(AddRefImageErrorData) _then) = _$AddRefImageErrorDataCopyWithImpl;
@useResult
$Res call({
 String path, Exception? exception, StackTrace? stackTrace
});




}
/// @nodoc
class _$AddRefImageErrorDataCopyWithImpl<$Res>
    implements $AddRefImageErrorDataCopyWith<$Res> {
  _$AddRefImageErrorDataCopyWithImpl(this._self, this._then);

  final AddRefImageErrorData _self;
  final $Res Function(AddRefImageErrorData) _then;

/// Create a copy of AddRefImageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(AddRefImageErrorData(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class AddRefImageErrorFs with DiagnosticableTreeMixin implements AddRefImageError {
  const AddRefImageErrorFs({required this.path, required this.error});
  

 final  String path;
 final  FsError error;

/// Create a copy of AddRefImageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRefImageErrorFsCopyWith<AddRefImageErrorFs> get copyWith => _$AddRefImageErrorFsCopyWithImpl<AddRefImageErrorFs>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageError.fs'))
    ..add(DiagnosticsProperty('path', path))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageErrorFs&&(identical(other.path, path) || other.path == path)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,path,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageError.fs(path: $path, error: $error)';
}


}

/// @nodoc
abstract mixin class $AddRefImageErrorFsCopyWith<$Res> implements $AddRefImageErrorCopyWith<$Res> {
  factory $AddRefImageErrorFsCopyWith(AddRefImageErrorFs value, $Res Function(AddRefImageErrorFs) _then) = _$AddRefImageErrorFsCopyWithImpl;
@useResult
$Res call({
 String path, FsError error
});


$FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$AddRefImageErrorFsCopyWithImpl<$Res>
    implements $AddRefImageErrorFsCopyWith<$Res> {
  _$AddRefImageErrorFsCopyWithImpl(this._self, this._then);

  final AddRefImageErrorFs _self;
  final $Res Function(AddRefImageErrorFs) _then;

/// Create a copy of AddRefImageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,Object? error = null,}) {
  return _then(AddRefImageErrorFs(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}

/// Create a copy of AddRefImageError
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


class AddRefImageErrorEncrypt with DiagnosticableTreeMixin implements AddRefImageError {
  const AddRefImageErrorEncrypt({required this.path, required this.error});
  

 final  String path;
 final  EncryptError error;

/// Create a copy of AddRefImageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddRefImageErrorEncryptCopyWith<AddRefImageErrorEncrypt> get copyWith => _$AddRefImageErrorEncryptCopyWithImpl<AddRefImageErrorEncrypt>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageError.encrypt'))
    ..add(DiagnosticsProperty('path', path))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageErrorEncrypt&&(identical(other.path, path) || other.path == path)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,path,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageError.encrypt(path: $path, error: $error)';
}


}

/// @nodoc
abstract mixin class $AddRefImageErrorEncryptCopyWith<$Res> implements $AddRefImageErrorCopyWith<$Res> {
  factory $AddRefImageErrorEncryptCopyWith(AddRefImageErrorEncrypt value, $Res Function(AddRefImageErrorEncrypt) _then) = _$AddRefImageErrorEncryptCopyWithImpl;
@useResult
$Res call({
 String path, EncryptError error
});


$EncryptErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$AddRefImageErrorEncryptCopyWithImpl<$Res>
    implements $AddRefImageErrorEncryptCopyWith<$Res> {
  _$AddRefImageErrorEncryptCopyWithImpl(this._self, this._then);

  final AddRefImageErrorEncrypt _self;
  final $Res Function(AddRefImageErrorEncrypt) _then;

/// Create a copy of AddRefImageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,Object? error = null,}) {
  return _then(AddRefImageErrorEncrypt(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as EncryptError,
  ));
}

/// Create a copy of AddRefImageError
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


class AddRefImageErrorNoSecureKey with DiagnosticableTreeMixin implements AddRefImageError {
  const AddRefImageErrorNoSecureKey();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddRefImageError.noSecureKey'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddRefImageErrorNoSecureKey);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddRefImageError.noSecureKey()';
}


}




// dart format on
