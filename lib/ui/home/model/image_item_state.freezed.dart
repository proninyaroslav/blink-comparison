// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageItemState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageItemState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageItemState()';
}


}

/// @nodoc
class $ImageItemStateCopyWith<$Res>  {
$ImageItemStateCopyWith(ImageItemState _, $Res Function(ImageItemState) __);
}



/// @nodoc


class ImageItemStateInitial implements ImageItemState {
   ImageItemStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageItemStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImageItemState.initial()';
}


}




/// @nodoc


class ImageItemStateLoaded implements ImageItemState {
   ImageItemStateLoaded({required this.image});
  

 final  RefImageEntry image;

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageItemStateLoadedCopyWith<ImageItemStateLoaded> get copyWith => _$ImageItemStateLoadedCopyWithImpl<ImageItemStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageItemStateLoaded&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ImageItemState.loaded(image: $image)';
}


}

/// @nodoc
abstract mixin class $ImageItemStateLoadedCopyWith<$Res> implements $ImageItemStateCopyWith<$Res> {
  factory $ImageItemStateLoadedCopyWith(ImageItemStateLoaded value, $Res Function(ImageItemStateLoaded) _then) = _$ImageItemStateLoadedCopyWithImpl;
@useResult
$Res call({
 RefImageEntry image
});


$RefImageEntryCopyWith<$Res> get image;

}
/// @nodoc
class _$ImageItemStateLoadedCopyWithImpl<$Res>
    implements $ImageItemStateLoadedCopyWith<$Res> {
  _$ImageItemStateLoadedCopyWithImpl(this._self, this._then);

  final ImageItemStateLoaded _self;
  final $Res Function(ImageItemStateLoaded) _then;

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(ImageItemStateLoaded(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as RefImageEntry,
  ));
}

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageEntryCopyWith<$Res> get image {
  
  return $RefImageEntryCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}

/// @nodoc


class ImageItemStateSaving implements ImageItemState {
   ImageItemStateSaving({required this.image});
  

 final  RefImageEntry image;

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageItemStateSavingCopyWith<ImageItemStateSaving> get copyWith => _$ImageItemStateSavingCopyWithImpl<ImageItemStateSaving>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageItemStateSaving&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ImageItemState.saving(image: $image)';
}


}

/// @nodoc
abstract mixin class $ImageItemStateSavingCopyWith<$Res> implements $ImageItemStateCopyWith<$Res> {
  factory $ImageItemStateSavingCopyWith(ImageItemStateSaving value, $Res Function(ImageItemStateSaving) _then) = _$ImageItemStateSavingCopyWithImpl;
@useResult
$Res call({
 RefImageEntry image
});


$RefImageEntryCopyWith<$Res> get image;

}
/// @nodoc
class _$ImageItemStateSavingCopyWithImpl<$Res>
    implements $ImageItemStateSavingCopyWith<$Res> {
  _$ImageItemStateSavingCopyWithImpl(this._self, this._then);

  final ImageItemStateSaving _self;
  final $Res Function(ImageItemStateSaving) _then;

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(ImageItemStateSaving(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as RefImageEntry,
  ));
}

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageEntryCopyWith<$Res> get image {
  
  return $RefImageEntryCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}

/// @nodoc


class ImageItemStateSaved implements ImageItemState {
   ImageItemStateSaved({required this.image, this.error});
  

 final  RefImageEntry image;
 final  SaveRefImageStatusError? error;

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageItemStateSavedCopyWith<ImageItemStateSaved> get copyWith => _$ImageItemStateSavedCopyWithImpl<ImageItemStateSaved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageItemStateSaved&&(identical(other.image, image) || other.image == image)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,image,error);

@override
String toString() {
  return 'ImageItemState.saved(image: $image, error: $error)';
}


}

/// @nodoc
abstract mixin class $ImageItemStateSavedCopyWith<$Res> implements $ImageItemStateCopyWith<$Res> {
  factory $ImageItemStateSavedCopyWith(ImageItemStateSaved value, $Res Function(ImageItemStateSaved) _then) = _$ImageItemStateSavedCopyWithImpl;
@useResult
$Res call({
 RefImageEntry image, SaveRefImageStatusError? error
});


$RefImageEntryCopyWith<$Res> get image;$SaveRefImageStatusErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$ImageItemStateSavedCopyWithImpl<$Res>
    implements $ImageItemStateSavedCopyWith<$Res> {
  _$ImageItemStateSavedCopyWithImpl(this._self, this._then);

  final ImageItemStateSaved _self;
  final $Res Function(ImageItemStateSaved) _then;

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,Object? error = freezed,}) {
  return _then(ImageItemStateSaved(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as RefImageEntry,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SaveRefImageStatusError?,
  ));
}

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageEntryCopyWith<$Res> get image {
  
  return $RefImageEntryCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveRefImageStatusErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $SaveRefImageStatusErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class ImageItemStateLoadingFailed implements ImageItemState {
  const ImageItemStateLoadingFailed({this.error});
  

 final  StorageError? error;

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageItemStateLoadingFailedCopyWith<ImageItemStateLoadingFailed> get copyWith => _$ImageItemStateLoadingFailedCopyWithImpl<ImageItemStateLoadingFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageItemStateLoadingFailed&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ImageItemState.loadingFailed(error: $error)';
}


}

/// @nodoc
abstract mixin class $ImageItemStateLoadingFailedCopyWith<$Res> implements $ImageItemStateCopyWith<$Res> {
  factory $ImageItemStateLoadingFailedCopyWith(ImageItemStateLoadingFailed value, $Res Function(ImageItemStateLoadingFailed) _then) = _$ImageItemStateLoadingFailedCopyWithImpl;
@useResult
$Res call({
 StorageError? error
});


$StorageErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$ImageItemStateLoadingFailedCopyWithImpl<$Res>
    implements $ImageItemStateLoadingFailedCopyWith<$Res> {
  _$ImageItemStateLoadingFailedCopyWithImpl(this._self, this._then);

  final ImageItemStateLoadingFailed _self;
  final $Res Function(ImageItemStateLoadingFailed) _then;

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(ImageItemStateLoadingFailed(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as StorageError?,
  ));
}

/// Create a copy of ImageItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorageErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $StorageErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
