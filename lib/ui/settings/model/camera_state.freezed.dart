// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraState implements DiagnosticableTreeMixin {

 CameraInfo? get info;
/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraStateCopyWith<CameraState> get copyWith => _$CameraStateCopyWithImpl<CameraState>(this as CameraState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CameraState'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraState&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CameraState(info: $info)';
}


}

/// @nodoc
abstract mixin class $CameraStateCopyWith<$Res>  {
  factory $CameraStateCopyWith(CameraState value, $Res Function(CameraState) _then) = _$CameraStateCopyWithImpl;
@useResult
$Res call({
 CameraInfo info
});


$CameraInfoCopyWith<$Res>? get info;

}
/// @nodoc
class _$CameraStateCopyWithImpl<$Res>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._self, this._then);

  final CameraState _self;
  final $Res Function(CameraState) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info! : info // ignore: cast_nullable_to_non_nullable
as CameraInfo,
  ));
}
/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $CameraInfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}



/// @nodoc


class CameraStateInitial with DiagnosticableTreeMixin implements CameraState {
  const CameraStateInitial({this.info = null});
  

@override@JsonKey() final  CameraInfo? info;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraStateInitialCopyWith<CameraStateInitial> get copyWith => _$CameraStateInitialCopyWithImpl<CameraStateInitial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CameraState.initial'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraStateInitial&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CameraState.initial(info: $info)';
}


}

/// @nodoc
abstract mixin class $CameraStateInitialCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory $CameraStateInitialCopyWith(CameraStateInitial value, $Res Function(CameraStateInitial) _then) = _$CameraStateInitialCopyWithImpl;
@override @useResult
$Res call({
 CameraInfo? info
});


@override $CameraInfoCopyWith<$Res>? get info;

}
/// @nodoc
class _$CameraStateInitialCopyWithImpl<$Res>
    implements $CameraStateInitialCopyWith<$Res> {
  _$CameraStateInitialCopyWithImpl(this._self, this._then);

  final CameraStateInitial _self;
  final $Res Function(CameraStateInitial) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = freezed,}) {
  return _then(CameraStateInitial(
info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as CameraInfo?,
  ));
}

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $CameraInfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class CameraStateLoaded with DiagnosticableTreeMixin implements CameraState {
  const CameraStateLoaded(this.info);
  

@override final  CameraInfo info;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraStateLoadedCopyWith<CameraStateLoaded> get copyWith => _$CameraStateLoadedCopyWithImpl<CameraStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CameraState.loaded'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraStateLoaded&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CameraState.loaded(info: $info)';
}


}

/// @nodoc
abstract mixin class $CameraStateLoadedCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory $CameraStateLoadedCopyWith(CameraStateLoaded value, $Res Function(CameraStateLoaded) _then) = _$CameraStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 CameraInfo info
});


@override $CameraInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$CameraStateLoadedCopyWithImpl<$Res>
    implements $CameraStateLoadedCopyWith<$Res> {
  _$CameraStateLoadedCopyWithImpl(this._self, this._then);

  final CameraStateLoaded _self;
  final $Res Function(CameraStateLoaded) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(CameraStateLoaded(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as CameraInfo,
  ));
}

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraInfoCopyWith<$Res> get info {
  
  return $CameraInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class CameraStateEnableFlashChanged with DiagnosticableTreeMixin implements CameraState {
  const CameraStateEnableFlashChanged(this.info);
  

@override final  CameraInfo info;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraStateEnableFlashChangedCopyWith<CameraStateEnableFlashChanged> get copyWith => _$CameraStateEnableFlashChangedCopyWithImpl<CameraStateEnableFlashChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CameraState.enableFlashChanged'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraStateEnableFlashChanged&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CameraState.enableFlashChanged(info: $info)';
}


}

/// @nodoc
abstract mixin class $CameraStateEnableFlashChangedCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory $CameraStateEnableFlashChangedCopyWith(CameraStateEnableFlashChanged value, $Res Function(CameraStateEnableFlashChanged) _then) = _$CameraStateEnableFlashChangedCopyWithImpl;
@override @useResult
$Res call({
 CameraInfo info
});


@override $CameraInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$CameraStateEnableFlashChangedCopyWithImpl<$Res>
    implements $CameraStateEnableFlashChangedCopyWith<$Res> {
  _$CameraStateEnableFlashChangedCopyWithImpl(this._self, this._then);

  final CameraStateEnableFlashChanged _self;
  final $Res Function(CameraStateEnableFlashChanged) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(CameraStateEnableFlashChanged(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as CameraInfo,
  ));
}

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraInfoCopyWith<$Res> get info {
  
  return $CameraInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class CameraStateFullscreenModeChanged with DiagnosticableTreeMixin implements CameraState {
  const CameraStateFullscreenModeChanged(this.info);
  

@override final  CameraInfo info;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraStateFullscreenModeChangedCopyWith<CameraStateFullscreenModeChanged> get copyWith => _$CameraStateFullscreenModeChangedCopyWithImpl<CameraStateFullscreenModeChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CameraState.fullscreenModeChanged'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraStateFullscreenModeChanged&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CameraState.fullscreenModeChanged(info: $info)';
}


}

/// @nodoc
abstract mixin class $CameraStateFullscreenModeChangedCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory $CameraStateFullscreenModeChangedCopyWith(CameraStateFullscreenModeChanged value, $Res Function(CameraStateFullscreenModeChanged) _then) = _$CameraStateFullscreenModeChangedCopyWithImpl;
@override @useResult
$Res call({
 CameraInfo info
});


@override $CameraInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$CameraStateFullscreenModeChangedCopyWithImpl<$Res>
    implements $CameraStateFullscreenModeChangedCopyWith<$Res> {
  _$CameraStateFullscreenModeChangedCopyWithImpl(this._self, this._then);

  final CameraStateFullscreenModeChanged _self;
  final $Res Function(CameraStateFullscreenModeChanged) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(CameraStateFullscreenModeChanged(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as CameraInfo,
  ));
}

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraInfoCopyWith<$Res> get info {
  
  return $CameraInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class CameraStateAutofocusChanged with DiagnosticableTreeMixin implements CameraState {
  const CameraStateAutofocusChanged(this.info);
  

@override final  CameraInfo info;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraStateAutofocusChangedCopyWith<CameraStateAutofocusChanged> get copyWith => _$CameraStateAutofocusChangedCopyWithImpl<CameraStateAutofocusChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CameraState.autofocusChanged'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraStateAutofocusChanged&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CameraState.autofocusChanged(info: $info)';
}


}

/// @nodoc
abstract mixin class $CameraStateAutofocusChangedCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory $CameraStateAutofocusChangedCopyWith(CameraStateAutofocusChanged value, $Res Function(CameraStateAutofocusChanged) _then) = _$CameraStateAutofocusChangedCopyWithImpl;
@override @useResult
$Res call({
 CameraInfo info
});


@override $CameraInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$CameraStateAutofocusChangedCopyWithImpl<$Res>
    implements $CameraStateAutofocusChangedCopyWith<$Res> {
  _$CameraStateAutofocusChangedCopyWithImpl(this._self, this._then);

  final CameraStateAutofocusChanged _self;
  final $Res Function(CameraStateAutofocusChanged) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(CameraStateAutofocusChanged(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as CameraInfo,
  ));
}

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CameraInfoCopyWith<$Res> get info {
  
  return $CameraInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc
mixin _$CameraInfo implements DiagnosticableTreeMixin {

 bool get enableFlashByDefault; bool get fullscreenMode; bool get autofocus;
/// Create a copy of CameraInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraInfoCopyWith<CameraInfo> get copyWith => _$CameraInfoCopyWithImpl<CameraInfo>(this as CameraInfo, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CameraInfo'))
    ..add(DiagnosticsProperty('enableFlashByDefault', enableFlashByDefault))..add(DiagnosticsProperty('fullscreenMode', fullscreenMode))..add(DiagnosticsProperty('autofocus', autofocus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraInfo&&(identical(other.enableFlashByDefault, enableFlashByDefault) || other.enableFlashByDefault == enableFlashByDefault)&&(identical(other.fullscreenMode, fullscreenMode) || other.fullscreenMode == fullscreenMode)&&(identical(other.autofocus, autofocus) || other.autofocus == autofocus));
}


@override
int get hashCode => Object.hash(runtimeType,enableFlashByDefault,fullscreenMode,autofocus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CameraInfo(enableFlashByDefault: $enableFlashByDefault, fullscreenMode: $fullscreenMode, autofocus: $autofocus)';
}


}

/// @nodoc
abstract mixin class $CameraInfoCopyWith<$Res>  {
  factory $CameraInfoCopyWith(CameraInfo value, $Res Function(CameraInfo) _then) = _$CameraInfoCopyWithImpl;
@useResult
$Res call({
 bool enableFlashByDefault, bool fullscreenMode, bool autofocus
});




}
/// @nodoc
class _$CameraInfoCopyWithImpl<$Res>
    implements $CameraInfoCopyWith<$Res> {
  _$CameraInfoCopyWithImpl(this._self, this._then);

  final CameraInfo _self;
  final $Res Function(CameraInfo) _then;

/// Create a copy of CameraInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enableFlashByDefault = null,Object? fullscreenMode = null,Object? autofocus = null,}) {
  return _then(_self.copyWith(
enableFlashByDefault: null == enableFlashByDefault ? _self.enableFlashByDefault : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
as bool,fullscreenMode: null == fullscreenMode ? _self.fullscreenMode : fullscreenMode // ignore: cast_nullable_to_non_nullable
as bool,autofocus: null == autofocus ? _self.autofocus : autofocus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc


class _CameraInfo with DiagnosticableTreeMixin implements CameraInfo {
  const _CameraInfo({required this.enableFlashByDefault, required this.fullscreenMode, required this.autofocus});
  

@override final  bool enableFlashByDefault;
@override final  bool fullscreenMode;
@override final  bool autofocus;

/// Create a copy of CameraInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CameraInfoCopyWith<_CameraInfo> get copyWith => __$CameraInfoCopyWithImpl<_CameraInfo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CameraInfo'))
    ..add(DiagnosticsProperty('enableFlashByDefault', enableFlashByDefault))..add(DiagnosticsProperty('fullscreenMode', fullscreenMode))..add(DiagnosticsProperty('autofocus', autofocus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CameraInfo&&(identical(other.enableFlashByDefault, enableFlashByDefault) || other.enableFlashByDefault == enableFlashByDefault)&&(identical(other.fullscreenMode, fullscreenMode) || other.fullscreenMode == fullscreenMode)&&(identical(other.autofocus, autofocus) || other.autofocus == autofocus));
}


@override
int get hashCode => Object.hash(runtimeType,enableFlashByDefault,fullscreenMode,autofocus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CameraInfo(enableFlashByDefault: $enableFlashByDefault, fullscreenMode: $fullscreenMode, autofocus: $autofocus)';
}


}

/// @nodoc
abstract mixin class _$CameraInfoCopyWith<$Res> implements $CameraInfoCopyWith<$Res> {
  factory _$CameraInfoCopyWith(_CameraInfo value, $Res Function(_CameraInfo) _then) = __$CameraInfoCopyWithImpl;
@override @useResult
$Res call({
 bool enableFlashByDefault, bool fullscreenMode, bool autofocus
});




}
/// @nodoc
class __$CameraInfoCopyWithImpl<$Res>
    implements _$CameraInfoCopyWith<$Res> {
  __$CameraInfoCopyWithImpl(this._self, this._then);

  final _CameraInfo _self;
  final $Res Function(_CameraInfo) _then;

/// Create a copy of CameraInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enableFlashByDefault = null,Object? fullscreenMode = null,Object? autofocus = null,}) {
  return _then(_CameraInfo(
enableFlashByDefault: null == enableFlashByDefault ? _self.enableFlashByDefault : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
as bool,fullscreenMode: null == fullscreenMode ? _self.fullscreenMode : fullscreenMode // ignore: cast_nullable_to_non_nullable
as bool,autofocus: null == autofocus ? _self.autofocus : autofocus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
