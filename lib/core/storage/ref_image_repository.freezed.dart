// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefImageProps {

 XFile get file; String? get label;
/// Create a copy of RefImageProps
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImagePropsCopyWith<RefImageProps> get copyWith => _$RefImagePropsCopyWithImpl<RefImageProps>(this as RefImageProps, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageProps&&(identical(other.file, file) || other.file == file)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,file,label);

@override
String toString() {
  return 'RefImageProps(file: $file, label: $label)';
}


}

/// @nodoc
abstract mixin class $RefImagePropsCopyWith<$Res>  {
  factory $RefImagePropsCopyWith(RefImageProps value, $Res Function(RefImageProps) _then) = _$RefImagePropsCopyWithImpl;
@useResult
$Res call({
 XFile file, String? label
});




}
/// @nodoc
class _$RefImagePropsCopyWithImpl<$Res>
    implements $RefImagePropsCopyWith<$Res> {
  _$RefImagePropsCopyWithImpl(this._self, this._then);

  final RefImageProps _self;
  final $Res Function(RefImageProps) _then;

/// Create a copy of RefImageProps
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = null,Object? label = freezed,}) {
  return _then(_self.copyWith(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as XFile,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc


class _RefImageProps implements RefImageProps {
  const _RefImageProps({required this.file, this.label});
  

@override final  XFile file;
@override final  String? label;

/// Create a copy of RefImageProps
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefImagePropsCopyWith<_RefImageProps> get copyWith => __$RefImagePropsCopyWithImpl<_RefImageProps>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefImageProps&&(identical(other.file, file) || other.file == file)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,file,label);

@override
String toString() {
  return 'RefImageProps(file: $file, label: $label)';
}


}

/// @nodoc
abstract mixin class _$RefImagePropsCopyWith<$Res> implements $RefImagePropsCopyWith<$Res> {
  factory _$RefImagePropsCopyWith(_RefImageProps value, $Res Function(_RefImageProps) _then) = __$RefImagePropsCopyWithImpl;
@override @useResult
$Res call({
 XFile file, String? label
});




}
/// @nodoc
class __$RefImagePropsCopyWithImpl<$Res>
    implements _$RefImagePropsCopyWith<$Res> {
  __$RefImagePropsCopyWithImpl(this._self, this._then);

  final _RefImageProps _self;
  final $Res Function(_RefImageProps) _then;

/// Create a copy of RefImageProps
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = null,Object? label = freezed,}) {
  return _then(_RefImageProps(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as XFile,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
