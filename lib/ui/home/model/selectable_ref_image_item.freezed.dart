// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_ref_image_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectableRefImageItem implements DiagnosticableTreeMixin {

 RefImageInfo get info;
/// Create a copy of SelectableRefImageItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectableRefImageItemCopyWith<SelectableRefImageItem> get copyWith => _$SelectableRefImageItemCopyWithImpl<SelectableRefImageItem>(this as SelectableRefImageItem, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectableRefImageItem'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectableRefImageItem&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectableRefImageItem(info: $info)';
}


}

/// @nodoc
abstract mixin class $SelectableRefImageItemCopyWith<$Res>  {
  factory $SelectableRefImageItemCopyWith(SelectableRefImageItem value, $Res Function(SelectableRefImageItem) _then) = _$SelectableRefImageItemCopyWithImpl;
@useResult
$Res call({
 RefImageInfo info
});


$RefImageInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$SelectableRefImageItemCopyWithImpl<$Res>
    implements $SelectableRefImageItemCopyWith<$Res> {
  _$SelectableRefImageItemCopyWithImpl(this._self, this._then);

  final SelectableRefImageItem _self;
  final $Res Function(SelectableRefImageItem) _then;

/// Create a copy of SelectableRefImageItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RefImageInfo,
  ));
}
/// Create a copy of SelectableRefImageItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageInfoCopyWith<$Res> get info {
  
  return $RefImageInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}



/// @nodoc


class _SelectableRefImageItem with DiagnosticableTreeMixin implements SelectableRefImageItem {
  const _SelectableRefImageItem({required this.info});
  

@override final  RefImageInfo info;

/// Create a copy of SelectableRefImageItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectableRefImageItemCopyWith<_SelectableRefImageItem> get copyWith => __$SelectableRefImageItemCopyWithImpl<_SelectableRefImageItem>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SelectableRefImageItem'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectableRefImageItem&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SelectableRefImageItem(info: $info)';
}


}

/// @nodoc
abstract mixin class _$SelectableRefImageItemCopyWith<$Res> implements $SelectableRefImageItemCopyWith<$Res> {
  factory _$SelectableRefImageItemCopyWith(_SelectableRefImageItem value, $Res Function(_SelectableRefImageItem) _then) = __$SelectableRefImageItemCopyWithImpl;
@override @useResult
$Res call({
 RefImageInfo info
});


@override $RefImageInfoCopyWith<$Res> get info;

}
/// @nodoc
class __$SelectableRefImageItemCopyWithImpl<$Res>
    implements _$SelectableRefImageItemCopyWith<$Res> {
  __$SelectableRefImageItemCopyWithImpl(this._self, this._then);

  final _SelectableRefImageItem _self;
  final $Res Function(_SelectableRefImageItem) _then;

/// Create a copy of SelectableRefImageItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(_SelectableRefImageItem(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RefImageInfo,
  ));
}

/// Create a copy of SelectableRefImageItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageInfoCopyWith<$Res> get info {
  
  return $RefImageInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

// dart format on
