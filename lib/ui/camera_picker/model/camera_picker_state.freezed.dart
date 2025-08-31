// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraPickerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraPickerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CameraPickerState()';
}


}

/// @nodoc
class $CameraPickerStateCopyWith<$Res>  {
$CameraPickerStateCopyWith(CameraPickerState _, $Res Function(CameraPickerState) __);
}



/// @nodoc


class CameraPickerStateInitial implements CameraPickerState {
   CameraPickerStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraPickerStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CameraPickerState.initial()';
}


}




/// @nodoc


class CameraPickerStateLoaded implements CameraPickerState {
   CameraPickerStateLoaded({required this.image});
  

 final  XFileImage image;

/// Create a copy of CameraPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraPickerStateLoadedCopyWith<CameraPickerStateLoaded> get copyWith => _$CameraPickerStateLoadedCopyWithImpl<CameraPickerStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraPickerStateLoaded&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'CameraPickerState.loaded(image: $image)';
}


}

/// @nodoc
abstract mixin class $CameraPickerStateLoadedCopyWith<$Res> implements $CameraPickerStateCopyWith<$Res> {
  factory $CameraPickerStateLoadedCopyWith(CameraPickerStateLoaded value, $Res Function(CameraPickerStateLoaded) _then) = _$CameraPickerStateLoadedCopyWithImpl;
@useResult
$Res call({
 XFileImage image
});




}
/// @nodoc
class _$CameraPickerStateLoadedCopyWithImpl<$Res>
    implements $CameraPickerStateLoadedCopyWith<$Res> {
  _$CameraPickerStateLoadedCopyWithImpl(this._self, this._then);

  final CameraPickerStateLoaded _self;
  final $Res Function(CameraPickerStateLoaded) _then;

/// Create a copy of CameraPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(CameraPickerStateLoaded(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFileImage,
  ));
}


}

/// @nodoc


class CameraPickerStateAccepted implements CameraPickerState {
   CameraPickerStateAccepted({required this.image, required this.metadata});
  

 final  XFileImage image;
 final  CameraPickerMetadata metadata;

/// Create a copy of CameraPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraPickerStateAcceptedCopyWith<CameraPickerStateAccepted> get copyWith => _$CameraPickerStateAcceptedCopyWithImpl<CameraPickerStateAccepted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraPickerStateAccepted&&(identical(other.image, image) || other.image == image)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,image,metadata);

@override
String toString() {
  return 'CameraPickerState.accepted(image: $image, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CameraPickerStateAcceptedCopyWith<$Res> implements $CameraPickerStateCopyWith<$Res> {
  factory $CameraPickerStateAcceptedCopyWith(CameraPickerStateAccepted value, $Res Function(CameraPickerStateAccepted) _then) = _$CameraPickerStateAcceptedCopyWithImpl;
@useResult
$Res call({
 XFileImage image, CameraPickerMetadata metadata
});


$CameraPickerMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$CameraPickerStateAcceptedCopyWithImpl<$Res>
    implements $CameraPickerStateAcceptedCopyWith<$Res> {
  _$CameraPickerStateAcceptedCopyWithImpl(this._self, this._then);

  final CameraPickerStateAccepted _self;
  final $Res Function(CameraPickerStateAccepted) _then;

/// Create a copy of CameraPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,Object? metadata = null,}) {
  return _then(CameraPickerStateAccepted(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFileImage,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as CameraPickerMetadata,
  ));
}

/// Create a copy of CameraPickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraPickerMetadataCopyWith<$Res> get metadata {
  
  return $CameraPickerMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

/// @nodoc


class CameraPickerStateRejected implements CameraPickerState {
   CameraPickerStateRejected({required this.image});
  

 final  XFileImage image;

/// Create a copy of CameraPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraPickerStateRejectedCopyWith<CameraPickerStateRejected> get copyWith => _$CameraPickerStateRejectedCopyWithImpl<CameraPickerStateRejected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraPickerStateRejected&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'CameraPickerState.rejected(image: $image)';
}


}

/// @nodoc
abstract mixin class $CameraPickerStateRejectedCopyWith<$Res> implements $CameraPickerStateCopyWith<$Res> {
  factory $CameraPickerStateRejectedCopyWith(CameraPickerStateRejected value, $Res Function(CameraPickerStateRejected) _then) = _$CameraPickerStateRejectedCopyWithImpl;
@useResult
$Res call({
 XFileImage image
});




}
/// @nodoc
class _$CameraPickerStateRejectedCopyWithImpl<$Res>
    implements $CameraPickerStateRejectedCopyWith<$Res> {
  _$CameraPickerStateRejectedCopyWithImpl(this._self, this._then);

  final CameraPickerStateRejected _self;
  final $Res Function(CameraPickerStateRejected) _then;

/// Create a copy of CameraPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(CameraPickerStateRejected(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFileImage,
  ));
}


}

// dart format on
