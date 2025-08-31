// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_images_actions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefImagesActionsState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesActionsState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesActionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesActionsState()';
}


}

/// @nodoc
class $RefImagesActionsStateCopyWith<$Res>  {
$RefImagesActionsStateCopyWith(RefImagesActionsState _, $Res Function(RefImagesActionsState) __);
}



/// @nodoc


class RefImagesActionsStateInitial with DiagnosticableTreeMixin implements RefImagesActionsState {
  const RefImagesActionsStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesActionsState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesActionsStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesActionsState.initial()';
}


}




/// @nodoc


class RefImagesActionsStateDeleting with DiagnosticableTreeMixin implements RefImagesActionsState {
  const RefImagesActionsStateDeleting();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesActionsState.deleting'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesActionsStateDeleting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesActionsState.deleting()';
}


}




/// @nodoc


class RefImagesActionsStateDeleted with DiagnosticableTreeMixin implements RefImagesActionsState {
  const RefImagesActionsStateDeleted({required this.count, required final  Map<RefImageInfo, SecStorageError> errors}): _errors = errors;
  

 final  int count;
 final  Map<RefImageInfo, SecStorageError> _errors;
 Map<RefImageInfo, SecStorageError> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}


/// Create a copy of RefImagesActionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImagesActionsStateDeletedCopyWith<RefImagesActionsStateDeleted> get copyWith => _$RefImagesActionsStateDeletedCopyWithImpl<RefImagesActionsStateDeleted>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesActionsState.deleted'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('errors', errors));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesActionsStateDeleted&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(_errors));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesActionsState.deleted(count: $count, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $RefImagesActionsStateDeletedCopyWith<$Res> implements $RefImagesActionsStateCopyWith<$Res> {
  factory $RefImagesActionsStateDeletedCopyWith(RefImagesActionsStateDeleted value, $Res Function(RefImagesActionsStateDeleted) _then) = _$RefImagesActionsStateDeletedCopyWithImpl;
@useResult
$Res call({
 int count, Map<RefImageInfo, SecStorageError> errors
});




}
/// @nodoc
class _$RefImagesActionsStateDeletedCopyWithImpl<$Res>
    implements $RefImagesActionsStateDeletedCopyWith<$Res> {
  _$RefImagesActionsStateDeletedCopyWithImpl(this._self, this._then);

  final RefImagesActionsStateDeleted _self;
  final $Res Function(RefImagesActionsStateDeleted) _then;

/// Create a copy of RefImagesActionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,Object? errors = null,}) {
  return _then(RefImagesActionsStateDeleted(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<RefImageInfo, SecStorageError>,
  ));
}


}

/// @nodoc


class RefImagesActionsStateChanging with DiagnosticableTreeMixin implements RefImagesActionsState {
  const RefImagesActionsStateChanging();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesActionsState.changing'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesActionsStateChanging);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesActionsState.changing()';
}


}




/// @nodoc


class RefImagesActionsStateChanged with DiagnosticableTreeMixin implements RefImagesActionsState {
  const RefImagesActionsStateChanged({required this.error});
  

 final  SecStorageError? error;

/// Create a copy of RefImagesActionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImagesActionsStateChangedCopyWith<RefImagesActionsStateChanged> get copyWith => _$RefImagesActionsStateChangedCopyWithImpl<RefImagesActionsStateChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImagesActionsState.changed'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImagesActionsStateChanged&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImagesActionsState.changed(error: $error)';
}


}

/// @nodoc
abstract mixin class $RefImagesActionsStateChangedCopyWith<$Res> implements $RefImagesActionsStateCopyWith<$Res> {
  factory $RefImagesActionsStateChangedCopyWith(RefImagesActionsStateChanged value, $Res Function(RefImagesActionsStateChanged) _then) = _$RefImagesActionsStateChangedCopyWithImpl;
@useResult
$Res call({
 SecStorageError? error
});


$SecStorageErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$RefImagesActionsStateChangedCopyWithImpl<$Res>
    implements $RefImagesActionsStateChangedCopyWith<$Res> {
  _$RefImagesActionsStateChangedCopyWithImpl(this._self, this._then);

  final RefImagesActionsStateChanged _self;
  final $Res Function(RefImagesActionsStateChanged) _then;

/// Create a copy of RefImagesActionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(RefImagesActionsStateChanged(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SecStorageError?,
  ));
}

/// Create a copy of RefImagesActionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecStorageErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $SecStorageErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
