// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefImageEntry implements DiagnosticableTreeMixin {

 RefImageInfo get info; Thumbnail get thumbnail;
/// Create a copy of RefImageEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageEntryCopyWith<RefImageEntry> get copyWith => _$RefImageEntryCopyWithImpl<RefImageEntry>(this as RefImageEntry, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageEntry'))
    ..add(DiagnosticsProperty('info', info))..add(DiagnosticsProperty('thumbnail', thumbnail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageEntry&&(identical(other.info, info) || other.info == info)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}


@override
int get hashCode => Object.hash(runtimeType,info,thumbnail);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageEntry(info: $info, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $RefImageEntryCopyWith<$Res>  {
  factory $RefImageEntryCopyWith(RefImageEntry value, $Res Function(RefImageEntry) _then) = _$RefImageEntryCopyWithImpl;
@useResult
$Res call({
 RefImageInfo info, Thumbnail thumbnail
});


$RefImageInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$RefImageEntryCopyWithImpl<$Res>
    implements $RefImageEntryCopyWith<$Res> {
  _$RefImageEntryCopyWithImpl(this._self, this._then);

  final RefImageEntry _self;
  final $Res Function(RefImageEntry) _then;

/// Create a copy of RefImageEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RefImageInfo,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as Thumbnail,
  ));
}
/// Create a copy of RefImageEntry
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


class _RefImageEntry with DiagnosticableTreeMixin implements RefImageEntry {
  const _RefImageEntry({required this.info, required this.thumbnail});
  

@override final  RefImageInfo info;
@override final  Thumbnail thumbnail;

/// Create a copy of RefImageEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefImageEntryCopyWith<_RefImageEntry> get copyWith => __$RefImageEntryCopyWithImpl<_RefImageEntry>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageEntry'))
    ..add(DiagnosticsProperty('info', info))..add(DiagnosticsProperty('thumbnail', thumbnail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefImageEntry&&(identical(other.info, info) || other.info == info)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}


@override
int get hashCode => Object.hash(runtimeType,info,thumbnail);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageEntry(info: $info, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$RefImageEntryCopyWith<$Res> implements $RefImageEntryCopyWith<$Res> {
  factory _$RefImageEntryCopyWith(_RefImageEntry value, $Res Function(_RefImageEntry) _then) = __$RefImageEntryCopyWithImpl;
@override @useResult
$Res call({
 RefImageInfo info, Thumbnail thumbnail
});


@override $RefImageInfoCopyWith<$Res> get info;

}
/// @nodoc
class __$RefImageEntryCopyWithImpl<$Res>
    implements _$RefImageEntryCopyWith<$Res> {
  __$RefImageEntryCopyWithImpl(this._self, this._then);

  final _RefImageEntry _self;
  final $Res Function(_RefImageEntry) _then;

/// Create a copy of RefImageEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? thumbnail = null,}) {
  return _then(_RefImageEntry(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RefImageInfo,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as Thumbnail,
  ));
}

/// Create a copy of RefImageEntry
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
