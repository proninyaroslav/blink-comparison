// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image_options_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefImageOptionsState implements DiagnosticableTreeMixin {

 RefImageOptions? get options;
/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageOptionsStateCopyWith<RefImageOptionsState> get copyWith => _$RefImageOptionsStateCopyWithImpl<RefImageOptionsState>(this as RefImageOptionsState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageOptionsState'))
    ..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageOptionsState&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,options);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageOptionsState(options: $options)';
}


}

/// @nodoc
abstract mixin class $RefImageOptionsStateCopyWith<$Res>  {
  factory $RefImageOptionsStateCopyWith(RefImageOptionsState value, $Res Function(RefImageOptionsState) _then) = _$RefImageOptionsStateCopyWithImpl;
@useResult
$Res call({
 RefImageOptions options
});


$RefImageOptionsCopyWith<$Res>? get options;

}
/// @nodoc
class _$RefImageOptionsStateCopyWithImpl<$Res>
    implements $RefImageOptionsStateCopyWith<$Res> {
  _$RefImageOptionsStateCopyWithImpl(this._self, this._then);

  final RefImageOptionsState _self;
  final $Res Function(RefImageOptionsState) _then;

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? options = null,}) {
  return _then(_self.copyWith(
options: null == options ? _self.options! : options // ignore: cast_nullable_to_non_nullable
as RefImageOptions,
  ));
}
/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageOptionsCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $RefImageOptionsCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}



/// @nodoc


class RefImageOptionsStateInitial with DiagnosticableTreeMixin implements RefImageOptionsState {
  const RefImageOptionsStateInitial({this.options = null});
  

@override@JsonKey() final  RefImageOptions? options;

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageOptionsStateInitialCopyWith<RefImageOptionsStateInitial> get copyWith => _$RefImageOptionsStateInitialCopyWithImpl<RefImageOptionsStateInitial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageOptionsState.initial'))
    ..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageOptionsStateInitial&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,options);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageOptionsState.initial(options: $options)';
}


}

/// @nodoc
abstract mixin class $RefImageOptionsStateInitialCopyWith<$Res> implements $RefImageOptionsStateCopyWith<$Res> {
  factory $RefImageOptionsStateInitialCopyWith(RefImageOptionsStateInitial value, $Res Function(RefImageOptionsStateInitial) _then) = _$RefImageOptionsStateInitialCopyWithImpl;
@override @useResult
$Res call({
 RefImageOptions? options
});


@override $RefImageOptionsCopyWith<$Res>? get options;

}
/// @nodoc
class _$RefImageOptionsStateInitialCopyWithImpl<$Res>
    implements $RefImageOptionsStateInitialCopyWith<$Res> {
  _$RefImageOptionsStateInitialCopyWithImpl(this._self, this._then);

  final RefImageOptionsStateInitial _self;
  final $Res Function(RefImageOptionsStateInitial) _then;

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = freezed,}) {
  return _then(RefImageOptionsStateInitial(
options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as RefImageOptions?,
  ));
}

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageOptionsCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $RefImageOptionsCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}

/// @nodoc


class RefImageOptionsStateLoaded with DiagnosticableTreeMixin implements RefImageOptionsState {
  const RefImageOptionsStateLoaded(this.options);
  

@override final  RefImageOptions options;

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageOptionsStateLoadedCopyWith<RefImageOptionsStateLoaded> get copyWith => _$RefImageOptionsStateLoadedCopyWithImpl<RefImageOptionsStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageOptionsState.loaded'))
    ..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageOptionsStateLoaded&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,options);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageOptionsState.loaded(options: $options)';
}


}

/// @nodoc
abstract mixin class $RefImageOptionsStateLoadedCopyWith<$Res> implements $RefImageOptionsStateCopyWith<$Res> {
  factory $RefImageOptionsStateLoadedCopyWith(RefImageOptionsStateLoaded value, $Res Function(RefImageOptionsStateLoaded) _then) = _$RefImageOptionsStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 RefImageOptions options
});


@override $RefImageOptionsCopyWith<$Res> get options;

}
/// @nodoc
class _$RefImageOptionsStateLoadedCopyWithImpl<$Res>
    implements $RefImageOptionsStateLoadedCopyWith<$Res> {
  _$RefImageOptionsStateLoadedCopyWithImpl(this._self, this._then);

  final RefImageOptionsStateLoaded _self;
  final $Res Function(RefImageOptionsStateLoaded) _then;

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = null,}) {
  return _then(RefImageOptionsStateLoaded(
null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as RefImageOptions,
  ));
}

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageOptionsCopyWith<$Res> get options {
  
  return $RefImageOptionsCopyWith<$Res>(_self.options, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}

/// @nodoc


class RefImageOptionsStateOpacityChanged with DiagnosticableTreeMixin implements RefImageOptionsState {
  const RefImageOptionsStateOpacityChanged(this.options);
  

@override final  RefImageOptions options;

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageOptionsStateOpacityChangedCopyWith<RefImageOptionsStateOpacityChanged> get copyWith => _$RefImageOptionsStateOpacityChangedCopyWithImpl<RefImageOptionsStateOpacityChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageOptionsState.opacityChanged'))
    ..add(DiagnosticsProperty('options', options));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageOptionsStateOpacityChanged&&(identical(other.options, options) || other.options == options));
}


@override
int get hashCode => Object.hash(runtimeType,options);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageOptionsState.opacityChanged(options: $options)';
}


}

/// @nodoc
abstract mixin class $RefImageOptionsStateOpacityChangedCopyWith<$Res> implements $RefImageOptionsStateCopyWith<$Res> {
  factory $RefImageOptionsStateOpacityChangedCopyWith(RefImageOptionsStateOpacityChanged value, $Res Function(RefImageOptionsStateOpacityChanged) _then) = _$RefImageOptionsStateOpacityChangedCopyWithImpl;
@override @useResult
$Res call({
 RefImageOptions options
});


@override $RefImageOptionsCopyWith<$Res> get options;

}
/// @nodoc
class _$RefImageOptionsStateOpacityChangedCopyWithImpl<$Res>
    implements $RefImageOptionsStateOpacityChangedCopyWith<$Res> {
  _$RefImageOptionsStateOpacityChangedCopyWithImpl(this._self, this._then);

  final RefImageOptionsStateOpacityChanged _self;
  final $Res Function(RefImageOptionsStateOpacityChanged) _then;

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = null,}) {
  return _then(RefImageOptionsStateOpacityChanged(
null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as RefImageOptions,
  ));
}

/// Create a copy of RefImageOptionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageOptionsCopyWith<$Res> get options {
  
  return $RefImageOptionsCopyWith<$Res>(_self.options, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}

/// @nodoc
mixin _$RefImageOptions implements DiagnosticableTreeMixin {

 double get opacity;
/// Create a copy of RefImageOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageOptionsCopyWith<RefImageOptions> get copyWith => _$RefImageOptionsCopyWithImpl<RefImageOptions>(this as RefImageOptions, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageOptions'))
    ..add(DiagnosticsProperty('opacity', opacity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageOptions&&(identical(other.opacity, opacity) || other.opacity == opacity));
}


@override
int get hashCode => Object.hash(runtimeType,opacity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageOptions(opacity: $opacity)';
}


}

/// @nodoc
abstract mixin class $RefImageOptionsCopyWith<$Res>  {
  factory $RefImageOptionsCopyWith(RefImageOptions value, $Res Function(RefImageOptions) _then) = _$RefImageOptionsCopyWithImpl;
@useResult
$Res call({
 double opacity
});




}
/// @nodoc
class _$RefImageOptionsCopyWithImpl<$Res>
    implements $RefImageOptionsCopyWith<$Res> {
  _$RefImageOptionsCopyWithImpl(this._self, this._then);

  final RefImageOptions _self;
  final $Res Function(RefImageOptions) _then;

/// Create a copy of RefImageOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? opacity = null,}) {
  return _then(_self.copyWith(
opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}



/// @nodoc


class _RefImageOptions with DiagnosticableTreeMixin implements RefImageOptions {
  const _RefImageOptions({required this.opacity});
  

@override final  double opacity;

/// Create a copy of RefImageOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefImageOptionsCopyWith<_RefImageOptions> get copyWith => __$RefImageOptionsCopyWithImpl<_RefImageOptions>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageOptions'))
    ..add(DiagnosticsProperty('opacity', opacity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefImageOptions&&(identical(other.opacity, opacity) || other.opacity == opacity));
}


@override
int get hashCode => Object.hash(runtimeType,opacity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageOptions(opacity: $opacity)';
}


}

/// @nodoc
abstract mixin class _$RefImageOptionsCopyWith<$Res> implements $RefImageOptionsCopyWith<$Res> {
  factory _$RefImageOptionsCopyWith(_RefImageOptions value, $Res Function(_RefImageOptions) _then) = __$RefImageOptionsCopyWithImpl;
@override @useResult
$Res call({
 double opacity
});




}
/// @nodoc
class __$RefImageOptionsCopyWithImpl<$Res>
    implements _$RefImageOptionsCopyWith<$Res> {
  __$RefImageOptionsCopyWithImpl(this._self, this._then);

  final _RefImageOptions _self;
  final $Res Function(_RefImageOptions) _then;

/// Create a copy of RefImageOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? opacity = null,}) {
  return _then(_RefImageOptions(
opacity: null == opacity ? _self.opacity : opacity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
