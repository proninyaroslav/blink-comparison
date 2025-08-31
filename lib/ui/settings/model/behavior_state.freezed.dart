// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'behavior_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BehaviorState implements DiagnosticableTreeMixin {

 BehaviorInfo? get info;
/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehaviorStateCopyWith<BehaviorState> get copyWith => _$BehaviorStateCopyWithImpl<BehaviorState>(this as BehaviorState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BehaviorState'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehaviorState&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BehaviorState(info: $info)';
}


}

/// @nodoc
abstract mixin class $BehaviorStateCopyWith<$Res>  {
  factory $BehaviorStateCopyWith(BehaviorState value, $Res Function(BehaviorState) _then) = _$BehaviorStateCopyWithImpl;
@useResult
$Res call({
 BehaviorInfo info
});


$BehaviorInfoCopyWith<$Res>? get info;

}
/// @nodoc
class _$BehaviorStateCopyWithImpl<$Res>
    implements $BehaviorStateCopyWith<$Res> {
  _$BehaviorStateCopyWithImpl(this._self, this._then);

  final BehaviorState _self;
  final $Res Function(BehaviorState) _then;

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info! : info // ignore: cast_nullable_to_non_nullable
as BehaviorInfo,
  ));
}
/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BehaviorInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $BehaviorInfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}



/// @nodoc


class BehaviorStateInitial with DiagnosticableTreeMixin implements BehaviorState {
  const BehaviorStateInitial({this.info = null});
  

@override@JsonKey() final  BehaviorInfo? info;

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehaviorStateInitialCopyWith<BehaviorStateInitial> get copyWith => _$BehaviorStateInitialCopyWithImpl<BehaviorStateInitial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BehaviorState.initial'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehaviorStateInitial&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BehaviorState.initial(info: $info)';
}


}

/// @nodoc
abstract mixin class $BehaviorStateInitialCopyWith<$Res> implements $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateInitialCopyWith(BehaviorStateInitial value, $Res Function(BehaviorStateInitial) _then) = _$BehaviorStateInitialCopyWithImpl;
@override @useResult
$Res call({
 BehaviorInfo? info
});


@override $BehaviorInfoCopyWith<$Res>? get info;

}
/// @nodoc
class _$BehaviorStateInitialCopyWithImpl<$Res>
    implements $BehaviorStateInitialCopyWith<$Res> {
  _$BehaviorStateInitialCopyWithImpl(this._self, this._then);

  final BehaviorStateInitial _self;
  final $Res Function(BehaviorStateInitial) _then;

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = freezed,}) {
  return _then(BehaviorStateInitial(
info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as BehaviorInfo?,
  ));
}

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BehaviorInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $BehaviorInfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class BehaviorStateLoaded with DiagnosticableTreeMixin implements BehaviorState {
  const BehaviorStateLoaded(this.info);
  

@override final  BehaviorInfo info;

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehaviorStateLoadedCopyWith<BehaviorStateLoaded> get copyWith => _$BehaviorStateLoadedCopyWithImpl<BehaviorStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BehaviorState.loaded'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehaviorStateLoaded&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BehaviorState.loaded(info: $info)';
}


}

/// @nodoc
abstract mixin class $BehaviorStateLoadedCopyWith<$Res> implements $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateLoadedCopyWith(BehaviorStateLoaded value, $Res Function(BehaviorStateLoaded) _then) = _$BehaviorStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 BehaviorInfo info
});


@override $BehaviorInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$BehaviorStateLoadedCopyWithImpl<$Res>
    implements $BehaviorStateLoadedCopyWith<$Res> {
  _$BehaviorStateLoadedCopyWithImpl(this._self, this._then);

  final BehaviorStateLoaded _self;
  final $Res Function(BehaviorStateLoaded) _then;

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(BehaviorStateLoaded(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as BehaviorInfo,
  ));
}

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BehaviorInfoCopyWith<$Res> get info {
  
  return $BehaviorInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class BehaviorStateEncryptionChanged with DiagnosticableTreeMixin implements BehaviorState {
  const BehaviorStateEncryptionChanged(this.info);
  

@override final  BehaviorInfo info;

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehaviorStateEncryptionChangedCopyWith<BehaviorStateEncryptionChanged> get copyWith => _$BehaviorStateEncryptionChangedCopyWithImpl<BehaviorStateEncryptionChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BehaviorState.encryptionChanged'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehaviorStateEncryptionChanged&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BehaviorState.encryptionChanged(info: $info)';
}


}

/// @nodoc
abstract mixin class $BehaviorStateEncryptionChangedCopyWith<$Res> implements $BehaviorStateCopyWith<$Res> {
  factory $BehaviorStateEncryptionChangedCopyWith(BehaviorStateEncryptionChanged value, $Res Function(BehaviorStateEncryptionChanged) _then) = _$BehaviorStateEncryptionChangedCopyWithImpl;
@override @useResult
$Res call({
 BehaviorInfo info
});


@override $BehaviorInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$BehaviorStateEncryptionChangedCopyWithImpl<$Res>
    implements $BehaviorStateEncryptionChangedCopyWith<$Res> {
  _$BehaviorStateEncryptionChangedCopyWithImpl(this._self, this._then);

  final BehaviorStateEncryptionChanged _self;
  final $Res Function(BehaviorStateEncryptionChanged) _then;

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(BehaviorStateEncryptionChanged(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as BehaviorInfo,
  ));
}

/// Create a copy of BehaviorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BehaviorInfoCopyWith<$Res> get info {
  
  return $BehaviorInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc
mixin _$BehaviorInfo implements DiagnosticableTreeMixin {

 EncryptionPreference? get encryption;
/// Create a copy of BehaviorInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehaviorInfoCopyWith<BehaviorInfo> get copyWith => _$BehaviorInfoCopyWithImpl<BehaviorInfo>(this as BehaviorInfo, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BehaviorInfo'))
    ..add(DiagnosticsProperty('encryption', encryption));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehaviorInfo&&(identical(other.encryption, encryption) || other.encryption == encryption));
}


@override
int get hashCode => Object.hash(runtimeType,encryption);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BehaviorInfo(encryption: $encryption)';
}


}

/// @nodoc
abstract mixin class $BehaviorInfoCopyWith<$Res>  {
  factory $BehaviorInfoCopyWith(BehaviorInfo value, $Res Function(BehaviorInfo) _then) = _$BehaviorInfoCopyWithImpl;
@useResult
$Res call({
 EncryptionPreference? encryption
});


$EncryptionPreferenceCopyWith<$Res>? get encryption;

}
/// @nodoc
class _$BehaviorInfoCopyWithImpl<$Res>
    implements $BehaviorInfoCopyWith<$Res> {
  _$BehaviorInfoCopyWithImpl(this._self, this._then);

  final BehaviorInfo _self;
  final $Res Function(BehaviorInfo) _then;

/// Create a copy of BehaviorInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryption = freezed,}) {
  return _then(_self.copyWith(
encryption: freezed == encryption ? _self.encryption : encryption // ignore: cast_nullable_to_non_nullable
as EncryptionPreference?,
  ));
}
/// Create a copy of BehaviorInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptionPreferenceCopyWith<$Res>? get encryption {
    if (_self.encryption == null) {
    return null;
  }

  return $EncryptionPreferenceCopyWith<$Res>(_self.encryption!, (value) {
    return _then(_self.copyWith(encryption: value));
  });
}
}



/// @nodoc


class _BehaviorInfo with DiagnosticableTreeMixin implements BehaviorInfo {
  const _BehaviorInfo({required this.encryption});
  

@override final  EncryptionPreference? encryption;

/// Create a copy of BehaviorInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BehaviorInfoCopyWith<_BehaviorInfo> get copyWith => __$BehaviorInfoCopyWithImpl<_BehaviorInfo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'BehaviorInfo'))
    ..add(DiagnosticsProperty('encryption', encryption));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BehaviorInfo&&(identical(other.encryption, encryption) || other.encryption == encryption));
}


@override
int get hashCode => Object.hash(runtimeType,encryption);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'BehaviorInfo(encryption: $encryption)';
}


}

/// @nodoc
abstract mixin class _$BehaviorInfoCopyWith<$Res> implements $BehaviorInfoCopyWith<$Res> {
  factory _$BehaviorInfoCopyWith(_BehaviorInfo value, $Res Function(_BehaviorInfo) _then) = __$BehaviorInfoCopyWithImpl;
@override @useResult
$Res call({
 EncryptionPreference? encryption
});


@override $EncryptionPreferenceCopyWith<$Res>? get encryption;

}
/// @nodoc
class __$BehaviorInfoCopyWithImpl<$Res>
    implements _$BehaviorInfoCopyWith<$Res> {
  __$BehaviorInfoCopyWithImpl(this._self, this._then);

  final _BehaviorInfo _self;
  final $Res Function(_BehaviorInfo) _then;

/// Create a copy of BehaviorInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryption = freezed,}) {
  return _then(_BehaviorInfo(
encryption: freezed == encryption ? _self.encryption : encryption // ignore: cast_nullable_to_non_nullable
as EncryptionPreference?,
  ));
}

/// Create a copy of BehaviorInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptionPreferenceCopyWith<$Res>? get encryption {
    if (_self.encryption == null) {
    return null;
  }

  return $EncryptionPreferenceCopyWith<$Res>(_self.encryption!, (value) {
    return _then(_self.copyWith(encryption: value));
  });
}
}

// dart format on
