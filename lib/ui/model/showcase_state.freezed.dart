// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'showcase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShowcaseState implements DiagnosticableTreeMixin {

 Set<ShowcaseType>? get completed;
/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowcaseStateCopyWith<ShowcaseState> get copyWith => _$ShowcaseStateCopyWithImpl<ShowcaseState>(this as ShowcaseState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ShowcaseState'))
    ..add(DiagnosticsProperty('completed', completed));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseState&&const DeepCollectionEquality().equals(other.completed, completed));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(completed));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ShowcaseState(completed: $completed)';
}


}

/// @nodoc
abstract mixin class $ShowcaseStateCopyWith<$Res>  {
  factory $ShowcaseStateCopyWith(ShowcaseState value, $Res Function(ShowcaseState) _then) = _$ShowcaseStateCopyWithImpl;
@useResult
$Res call({
 Set<ShowcaseType> completed
});




}
/// @nodoc
class _$ShowcaseStateCopyWithImpl<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  _$ShowcaseStateCopyWithImpl(this._self, this._then);

  final ShowcaseState _self;
  final $Res Function(ShowcaseState) _then;

/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? completed = null,}) {
  return _then(_self.copyWith(
completed: null == completed ? _self.completed! : completed // ignore: cast_nullable_to_non_nullable
as Set<ShowcaseType>,
  ));
}

}



/// @nodoc


class ShowcaseStateInitial with DiagnosticableTreeMixin implements ShowcaseState {
  const ShowcaseStateInitial({final  Set<ShowcaseType>? completed = null}): _completed = completed;
  

 final  Set<ShowcaseType>? _completed;
@override@JsonKey() Set<ShowcaseType>? get completed {
  final value = _completed;
  if (value == null) return null;
  if (_completed is EqualUnmodifiableSetView) return _completed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}


/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowcaseStateInitialCopyWith<ShowcaseStateInitial> get copyWith => _$ShowcaseStateInitialCopyWithImpl<ShowcaseStateInitial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ShowcaseState.initial'))
    ..add(DiagnosticsProperty('completed', completed));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseStateInitial&&const DeepCollectionEquality().equals(other._completed, _completed));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_completed));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ShowcaseState.initial(completed: $completed)';
}


}

/// @nodoc
abstract mixin class $ShowcaseStateInitialCopyWith<$Res> implements $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateInitialCopyWith(ShowcaseStateInitial value, $Res Function(ShowcaseStateInitial) _then) = _$ShowcaseStateInitialCopyWithImpl;
@override @useResult
$Res call({
 Set<ShowcaseType>? completed
});




}
/// @nodoc
class _$ShowcaseStateInitialCopyWithImpl<$Res>
    implements $ShowcaseStateInitialCopyWith<$Res> {
  _$ShowcaseStateInitialCopyWithImpl(this._self, this._then);

  final ShowcaseStateInitial _self;
  final $Res Function(ShowcaseStateInitial) _then;

/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? completed = freezed,}) {
  return _then(ShowcaseStateInitial(
completed: freezed == completed ? _self._completed : completed // ignore: cast_nullable_to_non_nullable
as Set<ShowcaseType>?,
  ));
}


}

/// @nodoc


class ShowcaseStateLoaded with DiagnosticableTreeMixin implements ShowcaseState {
  const ShowcaseStateLoaded(final  Set<ShowcaseType> completed): _completed = completed;
  

 final  Set<ShowcaseType> _completed;
@override Set<ShowcaseType> get completed {
  if (_completed is EqualUnmodifiableSetView) return _completed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_completed);
}


/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowcaseStateLoadedCopyWith<ShowcaseStateLoaded> get copyWith => _$ShowcaseStateLoadedCopyWithImpl<ShowcaseStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ShowcaseState.loaded'))
    ..add(DiagnosticsProperty('completed', completed));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseStateLoaded&&const DeepCollectionEquality().equals(other._completed, _completed));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_completed));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ShowcaseState.loaded(completed: $completed)';
}


}

/// @nodoc
abstract mixin class $ShowcaseStateLoadedCopyWith<$Res> implements $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateLoadedCopyWith(ShowcaseStateLoaded value, $Res Function(ShowcaseStateLoaded) _then) = _$ShowcaseStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 Set<ShowcaseType> completed
});




}
/// @nodoc
class _$ShowcaseStateLoadedCopyWithImpl<$Res>
    implements $ShowcaseStateLoadedCopyWith<$Res> {
  _$ShowcaseStateLoadedCopyWithImpl(this._self, this._then);

  final ShowcaseStateLoaded _self;
  final $Res Function(ShowcaseStateLoaded) _then;

/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? completed = null,}) {
  return _then(ShowcaseStateLoaded(
null == completed ? _self._completed : completed // ignore: cast_nullable_to_non_nullable
as Set<ShowcaseType>,
  ));
}


}

/// @nodoc


class ShowcaseStateChanged with DiagnosticableTreeMixin implements ShowcaseState {
  const ShowcaseStateChanged(final  Set<ShowcaseType> completed): _completed = completed;
  

 final  Set<ShowcaseType> _completed;
@override Set<ShowcaseType> get completed {
  if (_completed is EqualUnmodifiableSetView) return _completed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_completed);
}


/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowcaseStateChangedCopyWith<ShowcaseStateChanged> get copyWith => _$ShowcaseStateChangedCopyWithImpl<ShowcaseStateChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ShowcaseState.changed'))
    ..add(DiagnosticsProperty('completed', completed));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseStateChanged&&const DeepCollectionEquality().equals(other._completed, _completed));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_completed));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ShowcaseState.changed(completed: $completed)';
}


}

/// @nodoc
abstract mixin class $ShowcaseStateChangedCopyWith<$Res> implements $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateChangedCopyWith(ShowcaseStateChanged value, $Res Function(ShowcaseStateChanged) _then) = _$ShowcaseStateChangedCopyWithImpl;
@override @useResult
$Res call({
 Set<ShowcaseType> completed
});




}
/// @nodoc
class _$ShowcaseStateChangedCopyWithImpl<$Res>
    implements $ShowcaseStateChangedCopyWith<$Res> {
  _$ShowcaseStateChangedCopyWithImpl(this._self, this._then);

  final ShowcaseStateChanged _self;
  final $Res Function(ShowcaseStateChanged) _then;

/// Create a copy of ShowcaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? completed = null,}) {
  return _then(ShowcaseStateChanged(
null == completed ? _self._completed : completed // ignore: cast_nullable_to_non_nullable
as Set<ShowcaseType>,
  ));
}


}

// dart format on
