// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraProviderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraProviderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CameraProviderState()';
}


}

/// @nodoc
class $CameraProviderStateCopyWith<$Res>  {
$CameraProviderStateCopyWith(CameraProviderState _, $Res Function(CameraProviderState) __);
}



/// @nodoc


class CameraProviderStateInitial implements CameraProviderState {
  const CameraProviderStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraProviderStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CameraProviderState.initial()';
}


}




/// @nodoc


class CameraProviderStateLoading implements CameraProviderState {
  const CameraProviderStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraProviderStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CameraProviderState.loading()';
}


}




/// @nodoc


class CameraProviderStateLoaded implements CameraProviderState {
  const CameraProviderStateLoaded({required this.primaryCamera, required final  List<CameraDescription> otherCameras, required this.enableFlashByDefault, required this.autofocus}): _otherCameras = otherCameras;
  

 final  CameraDescription primaryCamera;
 final  List<CameraDescription> _otherCameras;
 List<CameraDescription> get otherCameras {
  if (_otherCameras is EqualUnmodifiableListView) return _otherCameras;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_otherCameras);
}

 final  bool enableFlashByDefault;
 final  bool autofocus;

/// Create a copy of CameraProviderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraProviderStateLoadedCopyWith<CameraProviderStateLoaded> get copyWith => _$CameraProviderStateLoadedCopyWithImpl<CameraProviderStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraProviderStateLoaded&&(identical(other.primaryCamera, primaryCamera) || other.primaryCamera == primaryCamera)&&const DeepCollectionEquality().equals(other._otherCameras, _otherCameras)&&(identical(other.enableFlashByDefault, enableFlashByDefault) || other.enableFlashByDefault == enableFlashByDefault)&&(identical(other.autofocus, autofocus) || other.autofocus == autofocus));
}


@override
int get hashCode => Object.hash(runtimeType,primaryCamera,const DeepCollectionEquality().hash(_otherCameras),enableFlashByDefault,autofocus);

@override
String toString() {
  return 'CameraProviderState.loaded(primaryCamera: $primaryCamera, otherCameras: $otherCameras, enableFlashByDefault: $enableFlashByDefault, autofocus: $autofocus)';
}


}

/// @nodoc
abstract mixin class $CameraProviderStateLoadedCopyWith<$Res> implements $CameraProviderStateCopyWith<$Res> {
  factory $CameraProviderStateLoadedCopyWith(CameraProviderStateLoaded value, $Res Function(CameraProviderStateLoaded) _then) = _$CameraProviderStateLoadedCopyWithImpl;
@useResult
$Res call({
 CameraDescription primaryCamera, List<CameraDescription> otherCameras, bool enableFlashByDefault, bool autofocus
});




}
/// @nodoc
class _$CameraProviderStateLoadedCopyWithImpl<$Res>
    implements $CameraProviderStateLoadedCopyWith<$Res> {
  _$CameraProviderStateLoadedCopyWithImpl(this._self, this._then);

  final CameraProviderStateLoaded _self;
  final $Res Function(CameraProviderStateLoaded) _then;

/// Create a copy of CameraProviderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? primaryCamera = null,Object? otherCameras = null,Object? enableFlashByDefault = null,Object? autofocus = null,}) {
  return _then(CameraProviderStateLoaded(
primaryCamera: null == primaryCamera ? _self.primaryCamera : primaryCamera // ignore: cast_nullable_to_non_nullable
as CameraDescription,otherCameras: null == otherCameras ? _self._otherCameras : otherCameras // ignore: cast_nullable_to_non_nullable
as List<CameraDescription>,enableFlashByDefault: null == enableFlashByDefault ? _self.enableFlashByDefault : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
as bool,autofocus: null == autofocus ? _self.autofocus : autofocus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CameraProviderStateLoadFailed implements CameraProviderState {
  const CameraProviderStateLoadFailed({required this.error, this.stackTrace});
  

 final  CameraException error;
 final  StackTrace? stackTrace;

/// Create a copy of CameraProviderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraProviderStateLoadFailedCopyWith<CameraProviderStateLoadFailed> get copyWith => _$CameraProviderStateLoadFailedCopyWithImpl<CameraProviderStateLoadFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraProviderStateLoadFailed&&(identical(other.error, error) || other.error == error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,error,stackTrace);

@override
String toString() {
  return 'CameraProviderState.loadFailed(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $CameraProviderStateLoadFailedCopyWith<$Res> implements $CameraProviderStateCopyWith<$Res> {
  factory $CameraProviderStateLoadFailedCopyWith(CameraProviderStateLoadFailed value, $Res Function(CameraProviderStateLoadFailed) _then) = _$CameraProviderStateLoadFailedCopyWithImpl;
@useResult
$Res call({
 CameraException error, StackTrace? stackTrace
});




}
/// @nodoc
class _$CameraProviderStateLoadFailedCopyWithImpl<$Res>
    implements $CameraProviderStateLoadFailedCopyWith<$Res> {
  _$CameraProviderStateLoadFailedCopyWithImpl(this._self, this._then);

  final CameraProviderStateLoadFailed _self;
  final $Res Function(CameraProviderStateLoadFailed) _then;

/// Create a copy of CameraProviderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = freezed,}) {
  return _then(CameraProviderStateLoadFailed(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as CameraException,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
