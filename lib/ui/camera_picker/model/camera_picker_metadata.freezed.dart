// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_picker_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraPickerMetadata {

 String? get label;
/// Create a copy of CameraPickerMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraPickerMetadataCopyWith<CameraPickerMetadata> get copyWith => _$CameraPickerMetadataCopyWithImpl<CameraPickerMetadata>(this as CameraPickerMetadata, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraPickerMetadata&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,label);

@override
String toString() {
  return 'CameraPickerMetadata(label: $label)';
}


}

/// @nodoc
abstract mixin class $CameraPickerMetadataCopyWith<$Res>  {
  factory $CameraPickerMetadataCopyWith(CameraPickerMetadata value, $Res Function(CameraPickerMetadata) _then) = _$CameraPickerMetadataCopyWithImpl;
@useResult
$Res call({
 String? label
});




}
/// @nodoc
class _$CameraPickerMetadataCopyWithImpl<$Res>
    implements $CameraPickerMetadataCopyWith<$Res> {
  _$CameraPickerMetadataCopyWithImpl(this._self, this._then);

  final CameraPickerMetadata _self;
  final $Res Function(CameraPickerMetadata) _then;

/// Create a copy of CameraPickerMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc


class _CameraPickerMetadata implements CameraPickerMetadata {
   _CameraPickerMetadata({this.label});
  

@override final  String? label;

/// Create a copy of CameraPickerMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CameraPickerMetadataCopyWith<_CameraPickerMetadata> get copyWith => __$CameraPickerMetadataCopyWithImpl<_CameraPickerMetadata>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CameraPickerMetadata&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,label);

@override
String toString() {
  return 'CameraPickerMetadata(label: $label)';
}


}

/// @nodoc
abstract mixin class _$CameraPickerMetadataCopyWith<$Res> implements $CameraPickerMetadataCopyWith<$Res> {
  factory _$CameraPickerMetadataCopyWith(_CameraPickerMetadata value, $Res Function(_CameraPickerMetadata) _then) = __$CameraPickerMetadataCopyWithImpl;
@override @useResult
$Res call({
 String? label
});




}
/// @nodoc
class __$CameraPickerMetadataCopyWithImpl<$Res>
    implements _$CameraPickerMetadataCopyWith<$Res> {
  __$CameraPickerMetadataCopyWithImpl(this._self, this._then);

  final _CameraPickerMetadata _self;
  final $Res Function(_CameraPickerMetadata) _then;

/// Create a copy of CameraPickerMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,}) {
  return _then(_CameraPickerMetadata(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
