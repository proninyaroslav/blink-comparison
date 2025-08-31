// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appearance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppearanceState implements DiagnosticableTreeMixin {

 AppearanceInfo? get info;
/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceStateCopyWith<AppearanceState> get copyWith => _$AppearanceStateCopyWithImpl<AppearanceState>(this as AppearanceState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppearanceState'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceState&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppearanceState(info: $info)';
}


}

/// @nodoc
abstract mixin class $AppearanceStateCopyWith<$Res>  {
  factory $AppearanceStateCopyWith(AppearanceState value, $Res Function(AppearanceState) _then) = _$AppearanceStateCopyWithImpl;
@useResult
$Res call({
 AppearanceInfo info
});


$AppearanceInfoCopyWith<$Res>? get info;

}
/// @nodoc
class _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  _$AppearanceStateCopyWithImpl(this._self, this._then);

  final AppearanceState _self;
  final $Res Function(AppearanceState) _then;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info! : info // ignore: cast_nullable_to_non_nullable
as AppearanceInfo,
  ));
}
/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $AppearanceInfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}



/// @nodoc


class AppearanceStateInitial with DiagnosticableTreeMixin implements AppearanceState {
  const AppearanceStateInitial({this.info = null});
  

@override@JsonKey() final  AppearanceInfo? info;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceStateInitialCopyWith<AppearanceStateInitial> get copyWith => _$AppearanceStateInitialCopyWithImpl<AppearanceStateInitial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppearanceState.initial'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceStateInitial&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppearanceState.initial(info: $info)';
}


}

/// @nodoc
abstract mixin class $AppearanceStateInitialCopyWith<$Res> implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateInitialCopyWith(AppearanceStateInitial value, $Res Function(AppearanceStateInitial) _then) = _$AppearanceStateInitialCopyWithImpl;
@override @useResult
$Res call({
 AppearanceInfo? info
});


@override $AppearanceInfoCopyWith<$Res>? get info;

}
/// @nodoc
class _$AppearanceStateInitialCopyWithImpl<$Res>
    implements $AppearanceStateInitialCopyWith<$Res> {
  _$AppearanceStateInitialCopyWithImpl(this._self, this._then);

  final AppearanceStateInitial _self;
  final $Res Function(AppearanceStateInitial) _then;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = freezed,}) {
  return _then(AppearanceStateInitial(
info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as AppearanceInfo?,
  ));
}

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceInfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $AppearanceInfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class AppearanceStateLoaded with DiagnosticableTreeMixin implements AppearanceState {
  const AppearanceStateLoaded(this.info);
  

@override final  AppearanceInfo info;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceStateLoadedCopyWith<AppearanceStateLoaded> get copyWith => _$AppearanceStateLoadedCopyWithImpl<AppearanceStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppearanceState.loaded'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceStateLoaded&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppearanceState.loaded(info: $info)';
}


}

/// @nodoc
abstract mixin class $AppearanceStateLoadedCopyWith<$Res> implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateLoadedCopyWith(AppearanceStateLoaded value, $Res Function(AppearanceStateLoaded) _then) = _$AppearanceStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 AppearanceInfo info
});


@override $AppearanceInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$AppearanceStateLoadedCopyWithImpl<$Res>
    implements $AppearanceStateLoadedCopyWith<$Res> {
  _$AppearanceStateLoadedCopyWithImpl(this._self, this._then);

  final AppearanceStateLoaded _self;
  final $Res Function(AppearanceStateLoaded) _then;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(AppearanceStateLoaded(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as AppearanceInfo,
  ));
}

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceInfoCopyWith<$Res> get info {
  
  return $AppearanceInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class AppearanceStateThemeChanged with DiagnosticableTreeMixin implements AppearanceState {
  const AppearanceStateThemeChanged(this.info);
  

@override final  AppearanceInfo info;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceStateThemeChangedCopyWith<AppearanceStateThemeChanged> get copyWith => _$AppearanceStateThemeChangedCopyWithImpl<AppearanceStateThemeChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppearanceState.themeChanged'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceStateThemeChanged&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppearanceState.themeChanged(info: $info)';
}


}

/// @nodoc
abstract mixin class $AppearanceStateThemeChangedCopyWith<$Res> implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateThemeChangedCopyWith(AppearanceStateThemeChanged value, $Res Function(AppearanceStateThemeChanged) _then) = _$AppearanceStateThemeChangedCopyWithImpl;
@override @useResult
$Res call({
 AppearanceInfo info
});


@override $AppearanceInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$AppearanceStateThemeChangedCopyWithImpl<$Res>
    implements $AppearanceStateThemeChangedCopyWith<$Res> {
  _$AppearanceStateThemeChangedCopyWithImpl(this._self, this._then);

  final AppearanceStateThemeChanged _self;
  final $Res Function(AppearanceStateThemeChanged) _then;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(AppearanceStateThemeChanged(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as AppearanceInfo,
  ));
}

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceInfoCopyWith<$Res> get info {
  
  return $AppearanceInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class AppearanceStateLocaleChanged with DiagnosticableTreeMixin implements AppearanceState {
  const AppearanceStateLocaleChanged(this.info);
  

@override final  AppearanceInfo info;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceStateLocaleChangedCopyWith<AppearanceStateLocaleChanged> get copyWith => _$AppearanceStateLocaleChangedCopyWithImpl<AppearanceStateLocaleChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppearanceState.localeChanged'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceStateLocaleChanged&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppearanceState.localeChanged(info: $info)';
}


}

/// @nodoc
abstract mixin class $AppearanceStateLocaleChangedCopyWith<$Res> implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateLocaleChangedCopyWith(AppearanceStateLocaleChanged value, $Res Function(AppearanceStateLocaleChanged) _then) = _$AppearanceStateLocaleChangedCopyWithImpl;
@override @useResult
$Res call({
 AppearanceInfo info
});


@override $AppearanceInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$AppearanceStateLocaleChangedCopyWithImpl<$Res>
    implements $AppearanceStateLocaleChangedCopyWith<$Res> {
  _$AppearanceStateLocaleChangedCopyWithImpl(this._self, this._then);

  final AppearanceStateLocaleChanged _self;
  final $Res Function(AppearanceStateLocaleChanged) _then;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(AppearanceStateLocaleChanged(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as AppearanceInfo,
  ));
}

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceInfoCopyWith<$Res> get info {
  
  return $AppearanceInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc


class AppearanceStateRefImageBorderColorChanged with DiagnosticableTreeMixin implements AppearanceState {
  const AppearanceStateRefImageBorderColorChanged(this.info);
  

@override final  AppearanceInfo info;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceStateRefImageBorderColorChangedCopyWith<AppearanceStateRefImageBorderColorChanged> get copyWith => _$AppearanceStateRefImageBorderColorChangedCopyWithImpl<AppearanceStateRefImageBorderColorChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppearanceState.refImageBorderColorChanged'))
    ..add(DiagnosticsProperty('info', info));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceStateRefImageBorderColorChanged&&(identical(other.info, info) || other.info == info));
}


@override
int get hashCode => Object.hash(runtimeType,info);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppearanceState.refImageBorderColorChanged(info: $info)';
}


}

/// @nodoc
abstract mixin class $AppearanceStateRefImageBorderColorChangedCopyWith<$Res> implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateRefImageBorderColorChangedCopyWith(AppearanceStateRefImageBorderColorChanged value, $Res Function(AppearanceStateRefImageBorderColorChanged) _then) = _$AppearanceStateRefImageBorderColorChangedCopyWithImpl;
@override @useResult
$Res call({
 AppearanceInfo info
});


@override $AppearanceInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$AppearanceStateRefImageBorderColorChangedCopyWithImpl<$Res>
    implements $AppearanceStateRefImageBorderColorChangedCopyWith<$Res> {
  _$AppearanceStateRefImageBorderColorChangedCopyWithImpl(this._self, this._then);

  final AppearanceStateRefImageBorderColorChanged _self;
  final $Res Function(AppearanceStateRefImageBorderColorChanged) _then;

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,}) {
  return _then(AppearanceStateRefImageBorderColorChanged(
null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as AppearanceInfo,
  ));
}

/// Create a copy of AppearanceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppearanceInfoCopyWith<$Res> get info {
  
  return $AppearanceInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

/// @nodoc
mixin _$AppearanceInfo implements DiagnosticableTreeMixin {

 AppThemeType get theme; AppLocaleType get locale; int get refImageBorderColor;
/// Create a copy of AppearanceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppearanceInfoCopyWith<AppearanceInfo> get copyWith => _$AppearanceInfoCopyWithImpl<AppearanceInfo>(this as AppearanceInfo, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppearanceInfo'))
    ..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('locale', locale))..add(DiagnosticsProperty('refImageBorderColor', refImageBorderColor));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppearanceInfo&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.refImageBorderColor, refImageBorderColor) || other.refImageBorderColor == refImageBorderColor));
}


@override
int get hashCode => Object.hash(runtimeType,theme,locale,refImageBorderColor);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppearanceInfo(theme: $theme, locale: $locale, refImageBorderColor: $refImageBorderColor)';
}


}

/// @nodoc
abstract mixin class $AppearanceInfoCopyWith<$Res>  {
  factory $AppearanceInfoCopyWith(AppearanceInfo value, $Res Function(AppearanceInfo) _then) = _$AppearanceInfoCopyWithImpl;
@useResult
$Res call({
 AppThemeType theme, AppLocaleType locale, int refImageBorderColor
});


$AppThemeTypeCopyWith<$Res> get theme;$AppLocaleTypeCopyWith<$Res> get locale;

}
/// @nodoc
class _$AppearanceInfoCopyWithImpl<$Res>
    implements $AppearanceInfoCopyWith<$Res> {
  _$AppearanceInfoCopyWithImpl(this._self, this._then);

  final AppearanceInfo _self;
  final $Res Function(AppearanceInfo) _then;

/// Create a copy of AppearanceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,Object? locale = null,Object? refImageBorderColor = null,}) {
  return _then(_self.copyWith(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as AppThemeType,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocaleType,refImageBorderColor: null == refImageBorderColor ? _self.refImageBorderColor : refImageBorderColor // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of AppearanceInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppThemeTypeCopyWith<$Res> get theme {
  
  return $AppThemeTypeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppearanceInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppLocaleTypeCopyWith<$Res> get locale {
  
  return $AppLocaleTypeCopyWith<$Res>(_self.locale, (value) {
    return _then(_self.copyWith(locale: value));
  });
}
}



/// @nodoc


class _AppearanceInfo with DiagnosticableTreeMixin implements AppearanceInfo {
  const _AppearanceInfo({required this.theme, required this.locale, required this.refImageBorderColor});
  

@override final  AppThemeType theme;
@override final  AppLocaleType locale;
@override final  int refImageBorderColor;

/// Create a copy of AppearanceInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppearanceInfoCopyWith<_AppearanceInfo> get copyWith => __$AppearanceInfoCopyWithImpl<_AppearanceInfo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppearanceInfo'))
    ..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('locale', locale))..add(DiagnosticsProperty('refImageBorderColor', refImageBorderColor));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppearanceInfo&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.refImageBorderColor, refImageBorderColor) || other.refImageBorderColor == refImageBorderColor));
}


@override
int get hashCode => Object.hash(runtimeType,theme,locale,refImageBorderColor);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppearanceInfo(theme: $theme, locale: $locale, refImageBorderColor: $refImageBorderColor)';
}


}

/// @nodoc
abstract mixin class _$AppearanceInfoCopyWith<$Res> implements $AppearanceInfoCopyWith<$Res> {
  factory _$AppearanceInfoCopyWith(_AppearanceInfo value, $Res Function(_AppearanceInfo) _then) = __$AppearanceInfoCopyWithImpl;
@override @useResult
$Res call({
 AppThemeType theme, AppLocaleType locale, int refImageBorderColor
});


@override $AppThemeTypeCopyWith<$Res> get theme;@override $AppLocaleTypeCopyWith<$Res> get locale;

}
/// @nodoc
class __$AppearanceInfoCopyWithImpl<$Res>
    implements _$AppearanceInfoCopyWith<$Res> {
  __$AppearanceInfoCopyWithImpl(this._self, this._then);

  final _AppearanceInfo _self;
  final $Res Function(_AppearanceInfo) _then;

/// Create a copy of AppearanceInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? locale = null,Object? refImageBorderColor = null,}) {
  return _then(_AppearanceInfo(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as AppThemeType,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocaleType,refImageBorderColor: null == refImageBorderColor ? _self.refImageBorderColor : refImageBorderColor // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of AppearanceInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppThemeTypeCopyWith<$Res> get theme {
  
  return $AppThemeTypeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppearanceInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppLocaleTypeCopyWith<$Res> get locale {
  
  return $AppLocaleTypeCopyWith<$Res>(_self.locale, (value) {
    return _then(_self.copyWith(locale: value));
  });
}
}

// dart format on
