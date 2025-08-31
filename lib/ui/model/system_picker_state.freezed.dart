// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SystemPickerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemPickerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemPickerState()';
}


}

/// @nodoc
class $SystemPickerStateCopyWith<$Res>  {
$SystemPickerStateCopyWith(SystemPickerState _, $Res Function(SystemPickerState) __);
}



/// @nodoc


class SystemPickerStateInitial implements SystemPickerState {
  const SystemPickerStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemPickerStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemPickerState.initial()';
}


}




/// @nodoc


class SystemPickerStateSelectingImages implements SystemPickerState {
  const SystemPickerStateSelectingImages();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemPickerStateSelectingImages);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemPickerState.selectingImages()';
}


}




/// @nodoc


class SystemPickerStateSelectImagesFailed implements SystemPickerState {
  const SystemPickerStateSelectImagesFailed({this.exception, this.stackTrace});
  

 final  Exception? exception;
 final  StackTrace? stackTrace;

/// Create a copy of SystemPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemPickerStateSelectImagesFailedCopyWith<SystemPickerStateSelectImagesFailed> get copyWith => _$SystemPickerStateSelectImagesFailedCopyWithImpl<SystemPickerStateSelectImagesFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemPickerStateSelectImagesFailed&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString() {
  return 'SystemPickerState.selectImagesFailed(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $SystemPickerStateSelectImagesFailedCopyWith<$Res> implements $SystemPickerStateCopyWith<$Res> {
  factory $SystemPickerStateSelectImagesFailedCopyWith(SystemPickerStateSelectImagesFailed value, $Res Function(SystemPickerStateSelectImagesFailed) _then) = _$SystemPickerStateSelectImagesFailedCopyWithImpl;
@useResult
$Res call({
 Exception? exception, StackTrace? stackTrace
});




}
/// @nodoc
class _$SystemPickerStateSelectImagesFailedCopyWithImpl<$Res>
    implements $SystemPickerStateSelectImagesFailedCopyWith<$Res> {
  _$SystemPickerStateSelectImagesFailedCopyWithImpl(this._self, this._then);

  final SystemPickerStateSelectImagesFailed _self;
  final $Res Function(SystemPickerStateSelectImagesFailed) _then;

/// Create a copy of SystemPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(SystemPickerStateSelectImagesFailed(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class SystemPickerStateImagesNotSelected implements SystemPickerState {
  const SystemPickerStateImagesNotSelected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemPickerStateImagesNotSelected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SystemPickerState.imagesNotSelected()';
}


}




/// @nodoc


class SystemPickerStateImagesSelected implements SystemPickerState {
  const SystemPickerStateImagesSelected(final  List<XFile> files): _files = files;
  

 final  List<XFile> _files;
 List<XFile> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}


/// Create a copy of SystemPickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SystemPickerStateImagesSelectedCopyWith<SystemPickerStateImagesSelected> get copyWith => _$SystemPickerStateImagesSelectedCopyWithImpl<SystemPickerStateImagesSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SystemPickerStateImagesSelected&&const DeepCollectionEquality().equals(other._files, _files));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files));

@override
String toString() {
  return 'SystemPickerState.imagesSelected(files: $files)';
}


}

/// @nodoc
abstract mixin class $SystemPickerStateImagesSelectedCopyWith<$Res> implements $SystemPickerStateCopyWith<$Res> {
  factory $SystemPickerStateImagesSelectedCopyWith(SystemPickerStateImagesSelected value, $Res Function(SystemPickerStateImagesSelected) _then) = _$SystemPickerStateImagesSelectedCopyWithImpl;
@useResult
$Res call({
 List<XFile> files
});




}
/// @nodoc
class _$SystemPickerStateImagesSelectedCopyWithImpl<$Res>
    implements $SystemPickerStateImagesSelectedCopyWith<$Res> {
  _$SystemPickerStateImagesSelectedCopyWithImpl(this._self, this._then);

  final SystemPickerStateImagesSelected _self;
  final $Res Function(SystemPickerStateImagesSelected) _then;

/// Create a copy of SystemPickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? files = null,}) {
  return _then(SystemPickerStateImagesSelected(
null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<XFile>,
  ));
}


}

// dart format on
