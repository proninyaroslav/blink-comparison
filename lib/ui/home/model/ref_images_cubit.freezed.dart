// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_images_cubit.dart';

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


class _BuildResultData with DiagnosticableTreeMixin implements _BuildResult {
  const _BuildResultData({required final  List<RefImageEntry> entries}): _entries = entries;
  

 final  List<RefImageEntry> _entries;
 List<RefImageEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuildResultDataCopyWith<_BuildResultData> get copyWith => __$BuildResultDataCopyWithImpl<_BuildResultData>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', '_BuildResult'))
    ..add(DiagnosticsProperty('entries', entries));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuildResultData&&const DeepCollectionEquality().equals(other._entries, _entries));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return '_BuildResult(entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$BuildResultDataCopyWith<$Res> implements _$BuildResultCopyWith<$Res> {
  factory _$BuildResultDataCopyWith(_BuildResultData value, $Res Function(_BuildResultData) _then) = __$BuildResultDataCopyWithImpl;
@useResult
$Res call({
 List<RefImageEntry> entries
});




}
/// @nodoc
class __$BuildResultDataCopyWithImpl<$Res>
    implements _$BuildResultDataCopyWith<$Res> {
  __$BuildResultDataCopyWithImpl(this._self, this._then);

  final _BuildResultData _self;
  final $Res Function(_BuildResultData) _then;

/// Create a copy of _BuildResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entries = null,}) {
  return _then(_BuildResultData(
entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<RefImageEntry>,
  ));
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
