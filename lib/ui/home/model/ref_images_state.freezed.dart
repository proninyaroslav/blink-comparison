// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_images_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefImagesState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesState()';
}


}

/// @nodoc
class $RefImagesStateCopyWith<$Res>  {
$RefImagesStateCopyWith(RefImagesState _, $Res Function(RefImagesState) __);
}



/// @nodoc


class RefImagesStateInitial with DiagnosticableTreeMixin implements RefImagesState {
  const RefImagesStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesState.initial()';
}


}




/// @nodoc


class RefImagesStateLoaded with DiagnosticableTreeMixin implements RefImagesState {
  const RefImagesStateLoaded({required final  List<RefImageEntry> entries}): _entries = entries;
  

 final  List<RefImageEntry> _entries;
 List<RefImageEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of RefImagesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImagesStateLoadedCopyWith<RefImagesStateLoaded> get copyWith => _$RefImagesStateLoadedCopyWithImpl<RefImagesStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesState.loaded'))
    ..add(DiagnosticsProperty('entries', entries));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesStateLoaded&&const DeepCollectionEquality().equals(other._entries, _entries));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesState.loaded(entries: $entries)';
}


}

/// @nodoc
abstract mixin class $RefImagesStateLoadedCopyWith<$Res> implements $RefImagesStateCopyWith<$Res> {
  factory $RefImagesStateLoadedCopyWith(RefImagesStateLoaded value, $Res Function(RefImagesStateLoaded) _then) = _$RefImagesStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<RefImageEntry> entries
});




}
/// @nodoc
class _$RefImagesStateLoadedCopyWithImpl<$Res>
    implements $RefImagesStateLoadedCopyWith<$Res> {
  _$RefImagesStateLoadedCopyWithImpl(this._self, this._then);

  final RefImagesStateLoaded _self;
  final $Res Function(RefImagesStateLoaded) _then;

/// Create a copy of RefImagesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entries = null,}) {
  return _then(RefImagesStateLoaded(
entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<RefImageEntry>,
  ));
}


}

/// @nodoc


class RefImagesStateLoadingFailed with DiagnosticableTreeMixin implements RefImagesState {
  const RefImagesStateLoadingFailed({this.error});
  

 final  StorageError? error;

/// Create a copy of RefImagesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImagesStateLoadingFailedCopyWith<RefImagesStateLoadingFailed> get copyWith => _$RefImagesStateLoadingFailedCopyWithImpl<RefImagesStateLoadingFailed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesState.loadingFailed'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesStateLoadingFailed&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesState.loadingFailed(error: $error)';
}


}

/// @nodoc
abstract mixin class $RefImagesStateLoadingFailedCopyWith<$Res> implements $RefImagesStateCopyWith<$Res> {
  factory $RefImagesStateLoadingFailedCopyWith(RefImagesStateLoadingFailed value, $Res Function(RefImagesStateLoadingFailed) _then) = _$RefImagesStateLoadingFailedCopyWithImpl;
@useResult
$Res call({
 StorageError? error
});


$StorageErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$RefImagesStateLoadingFailedCopyWithImpl<$Res>
    implements $RefImagesStateLoadingFailedCopyWith<$Res> {
  _$RefImagesStateLoadingFailedCopyWithImpl(this._self, this._then);

  final RefImagesStateLoadingFailed _self;
  final $Res Function(RefImagesStateLoadingFailed) _then;

/// Create a copy of RefImagesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(RefImagesStateLoadingFailed(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as StorageError?,
  ));
}

/// Create a copy of RefImagesState
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
