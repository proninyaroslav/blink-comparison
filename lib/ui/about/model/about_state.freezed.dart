// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AboutState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AboutState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AboutState()';
}


}

/// @nodoc
class $AboutStateCopyWith<$Res>  {
$AboutStateCopyWith(AboutState _, $Res Function(AboutState) __);
}



/// @nodoc


class AboutStateInitial with DiagnosticableTreeMixin implements AboutState {
  const AboutStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AboutState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AboutState.initial()';
}


}




/// @nodoc


class AboutStateLoading with DiagnosticableTreeMixin implements AboutState {
  const AboutStateLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AboutState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AboutState.loading()';
}


}




/// @nodoc


class AboutStateLoaded with DiagnosticableTreeMixin implements AboutState {
  const AboutStateLoaded({required this.appName, required this.appVersion});
  

 final  String appName;
 final  String appVersion;

/// Create a copy of AboutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutStateLoadedCopyWith<AboutStateLoaded> get copyWith => _$AboutStateLoadedCopyWithImpl<AboutStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AboutState.loaded'))
    ..add(DiagnosticsProperty('appName', appName))..add(DiagnosticsProperty('appVersion', appVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutStateLoaded&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion));
}


@override
int get hashCode => Object.hash(runtimeType,appName,appVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AboutState.loaded(appName: $appName, appVersion: $appVersion)';
}


}

/// @nodoc
abstract mixin class $AboutStateLoadedCopyWith<$Res> implements $AboutStateCopyWith<$Res> {
  factory $AboutStateLoadedCopyWith(AboutStateLoaded value, $Res Function(AboutStateLoaded) _then) = _$AboutStateLoadedCopyWithImpl;
@useResult
$Res call({
 String appName, String appVersion
});




}
/// @nodoc
class _$AboutStateLoadedCopyWithImpl<$Res>
    implements $AboutStateLoadedCopyWith<$Res> {
  _$AboutStateLoadedCopyWithImpl(this._self, this._then);

  final AboutStateLoaded _self;
  final $Res Function(AboutStateLoaded) _then;

/// Create a copy of AboutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appName = null,Object? appVersion = null,}) {
  return _then(AboutStateLoaded(
appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,appVersion: null == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
