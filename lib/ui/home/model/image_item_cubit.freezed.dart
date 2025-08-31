// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BuildResult implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', '_BuildResult'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuildResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return '_BuildResult()';
}


}

/// @nodoc
class _$BuildResultCopyWith<$Res>  {
_$BuildResultCopyWith(_BuildResult _, $Res Function(_BuildResult) __);
}



/// @nodoc


class _BuildResulLoaded with DiagnosticableTreeMixin implements _BuildResult {
  const _BuildResulLoaded({required this.image, required this.status});
  

 final  RefImageEntry image;
 final  SaveRefImageStatus? status;

/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuildResulLoadedCopyWith<_BuildResulLoaded> get copyWith => __$BuildResulLoadedCopyWithImpl<_BuildResulLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', '_BuildResult'))
    ..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuildResulLoaded&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,image,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return '_BuildResult(image: $image, status: $status)';
}


}

/// @nodoc
abstract mixin class _$BuildResulLoadedCopyWith<$Res> implements _$BuildResultCopyWith<$Res> {
  factory _$BuildResulLoadedCopyWith(_BuildResulLoaded value, $Res Function(_BuildResulLoaded) _then) = __$BuildResulLoadedCopyWithImpl;
@useResult
$Res call({
 RefImageEntry image, SaveRefImageStatus? status
});


$RefImageEntryCopyWith<$Res> get image;$SaveRefImageStatusCopyWith<$Res>? get status;

}
/// @nodoc
class __$BuildResulLoadedCopyWithImpl<$Res>
    implements _$BuildResulLoadedCopyWith<$Res> {
  __$BuildResulLoadedCopyWithImpl(this._self, this._then);

  final _BuildResulLoaded _self;
  final $Res Function(_BuildResulLoaded) _then;

/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,Object? status = freezed,}) {
  return _then(_BuildResulLoaded(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as RefImageEntry,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SaveRefImageStatus?,
  ));
}

/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageEntryCopyWith<$Res> get image {
  
  return $RefImageEntryCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveRefImageStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $SaveRefImageStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc


class _BuildResultFailed with DiagnosticableTreeMixin implements _BuildResult {
  const _BuildResultFailed({required this.error});
  

 final  StorageError error;

/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuildResultFailedCopyWith<_BuildResultFailed> get copyWith => __$BuildResultFailedCopyWithImpl<_BuildResultFailed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', '_BuildResult.failed'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuildResultFailed&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return '_BuildResult.failed(error: $error)';
}


}

/// @nodoc
abstract mixin class _$BuildResultFailedCopyWith<$Res> implements _$BuildResultCopyWith<$Res> {
  factory _$BuildResultFailedCopyWith(_BuildResultFailed value, $Res Function(_BuildResultFailed) _then) = __$BuildResultFailedCopyWithImpl;
@useResult
$Res call({
 StorageError error
});


$StorageErrorCopyWith<$Res> get error;

}
/// @nodoc
class __$BuildResultFailedCopyWithImpl<$Res>
    implements _$BuildResultFailedCopyWith<$Res> {
  __$BuildResultFailedCopyWithImpl(this._self, this._then);

  final _BuildResultFailed _self;
  final $Res Function(_BuildResultFailed) _then;

/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_BuildResultFailed(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as StorageError,
  ));
}

/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorageErrorCopyWith<$Res> get error {
  
  return $StorageErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
