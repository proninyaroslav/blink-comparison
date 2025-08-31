// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppState implements DiagnosticableTreeMixin {

 AppThemeType? get theme; AppLocaleType? get locale; bool? get cameraFullscreenMode;
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateCopyWith<AppState> get copyWith => _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState'))
    ..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('locale', locale))..add(DiagnosticsProperty('cameraFullscreenMode', cameraFullscreenMode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.cameraFullscreenMode, cameraFullscreenMode) || other.cameraFullscreenMode == cameraFullscreenMode));
}


@override
int get hashCode => Object.hash(runtimeType,theme,locale,cameraFullscreenMode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState(theme: $theme, locale: $locale, cameraFullscreenMode: $cameraFullscreenMode)';
}


}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res>  {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) = _$AppStateCopyWithImpl;
@useResult
$Res call({
 AppThemeType theme, AppLocaleType locale, bool cameraFullscreenMode
});


$AppThemeTypeCopyWith<$Res>? get theme;$AppLocaleTypeCopyWith<$Res>? get locale;

}
/// @nodoc
class _$AppStateCopyWithImpl<$Res>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._self, this._then);

  final AppState _self;
  final $Res Function(AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,Object? locale = null,Object? cameraFullscreenMode = null,}) {
  return _then(_self.copyWith(
theme: null == theme ? _self.theme! : theme // ignore: cast_nullable_to_non_nullable
as AppThemeType,locale: null == locale ? _self.locale! : locale // ignore: cast_nullable_to_non_nullable
as AppLocaleType,cameraFullscreenMode: null == cameraFullscreenMode ? _self.cameraFullscreenMode! : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppThemeTypeCopyWith<$Res>? get theme {
    if (_self.theme == null) {
    return null;
  }

  return $AppThemeTypeCopyWith<$Res>(_self.theme!, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppLocaleTypeCopyWith<$Res>? get locale {
    if (_self.locale == null) {
    return null;
  }

  return $AppLocaleTypeCopyWith<$Res>(_self.locale!, (value) {
    return _then(_self.copyWith(locale: value));
  });
}
}



/// @nodoc


class AppStateInitial with DiagnosticableTreeMixin implements AppState {
  const AppStateInitial({this.theme = null, this.locale = null, this.cameraFullscreenMode = null});
  

@override@JsonKey() final  AppThemeType? theme;
@override@JsonKey() final  AppLocaleType? locale;
@override@JsonKey() final  bool? cameraFullscreenMode;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateInitialCopyWith<AppStateInitial> get copyWith => _$AppStateInitialCopyWithImpl<AppStateInitial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.initial'))
    ..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('locale', locale))..add(DiagnosticsProperty('cameraFullscreenMode', cameraFullscreenMode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStateInitial&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.cameraFullscreenMode, cameraFullscreenMode) || other.cameraFullscreenMode == cameraFullscreenMode));
}


@override
int get hashCode => Object.hash(runtimeType,theme,locale,cameraFullscreenMode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.initial(theme: $theme, locale: $locale, cameraFullscreenMode: $cameraFullscreenMode)';
}


}

/// @nodoc
abstract mixin class $AppStateInitialCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppStateInitialCopyWith(AppStateInitial value, $Res Function(AppStateInitial) _then) = _$AppStateInitialCopyWithImpl;
@override @useResult
$Res call({
 AppThemeType? theme, AppLocaleType? locale, bool? cameraFullscreenMode
});


@override $AppThemeTypeCopyWith<$Res>? get theme;@override $AppLocaleTypeCopyWith<$Res>? get locale;

}
/// @nodoc
class _$AppStateInitialCopyWithImpl<$Res>
    implements $AppStateInitialCopyWith<$Res> {
  _$AppStateInitialCopyWithImpl(this._self, this._then);

  final AppStateInitial _self;
  final $Res Function(AppStateInitial) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = freezed,Object? locale = freezed,Object? cameraFullscreenMode = freezed,}) {
  return _then(AppStateInitial(
theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as AppThemeType?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocaleType?,cameraFullscreenMode: freezed == cameraFullscreenMode ? _self.cameraFullscreenMode : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppThemeTypeCopyWith<$Res>? get theme {
    if (_self.theme == null) {
    return null;
  }

  return $AppThemeTypeCopyWith<$Res>(_self.theme!, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppLocaleTypeCopyWith<$Res>? get locale {
    if (_self.locale == null) {
    return null;
  }

  return $AppLocaleTypeCopyWith<$Res>(_self.locale!, (value) {
    return _then(_self.copyWith(locale: value));
  });
}
}

/// @nodoc


class AppStateLoaded with DiagnosticableTreeMixin implements AppState {
  const AppStateLoaded({required this.theme, required this.locale, required this.cameraFullscreenMode});
  

@override final  AppThemeType theme;
@override final  AppLocaleType locale;
@override final  bool cameraFullscreenMode;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateLoadedCopyWith<AppStateLoaded> get copyWith => _$AppStateLoadedCopyWithImpl<AppStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.loaded'))
    ..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('locale', locale))..add(DiagnosticsProperty('cameraFullscreenMode', cameraFullscreenMode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStateLoaded&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.cameraFullscreenMode, cameraFullscreenMode) || other.cameraFullscreenMode == cameraFullscreenMode));
}


@override
int get hashCode => Object.hash(runtimeType,theme,locale,cameraFullscreenMode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.loaded(theme: $theme, locale: $locale, cameraFullscreenMode: $cameraFullscreenMode)';
}


}

/// @nodoc
abstract mixin class $AppStateLoadedCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppStateLoadedCopyWith(AppStateLoaded value, $Res Function(AppStateLoaded) _then) = _$AppStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 AppThemeType theme, AppLocaleType locale, bool cameraFullscreenMode
});


@override $AppThemeTypeCopyWith<$Res> get theme;@override $AppLocaleTypeCopyWith<$Res> get locale;

}
/// @nodoc
class _$AppStateLoadedCopyWithImpl<$Res>
    implements $AppStateLoadedCopyWith<$Res> {
  _$AppStateLoadedCopyWithImpl(this._self, this._then);

  final AppStateLoaded _self;
  final $Res Function(AppStateLoaded) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? locale = null,Object? cameraFullscreenMode = null,}) {
  return _then(AppStateLoaded(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as AppThemeType,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocaleType,cameraFullscreenMode: null == cameraFullscreenMode ? _self.cameraFullscreenMode : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppThemeTypeCopyWith<$Res> get theme {
  
  return $AppThemeTypeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppState
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


class AppStateChanged with DiagnosticableTreeMixin implements AppState {
  const AppStateChanged({required this.theme, required this.locale, required this.cameraFullscreenMode});
  

@override final  AppThemeType theme;
@override final  AppLocaleType locale;
@override final  bool cameraFullscreenMode;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateChangedCopyWith<AppStateChanged> get copyWith => _$AppStateChangedCopyWithImpl<AppStateChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.changed'))
    ..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('locale', locale))..add(DiagnosticsProperty('cameraFullscreenMode', cameraFullscreenMode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStateChanged&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.cameraFullscreenMode, cameraFullscreenMode) || other.cameraFullscreenMode == cameraFullscreenMode));
}


@override
int get hashCode => Object.hash(runtimeType,theme,locale,cameraFullscreenMode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.changed(theme: $theme, locale: $locale, cameraFullscreenMode: $cameraFullscreenMode)';
}


}

/// @nodoc
abstract mixin class $AppStateChangedCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppStateChangedCopyWith(AppStateChanged value, $Res Function(AppStateChanged) _then) = _$AppStateChangedCopyWithImpl;
@override @useResult
$Res call({
 AppThemeType theme, AppLocaleType locale, bool cameraFullscreenMode
});


@override $AppThemeTypeCopyWith<$Res> get theme;@override $AppLocaleTypeCopyWith<$Res> get locale;

}
/// @nodoc
class _$AppStateChangedCopyWithImpl<$Res>
    implements $AppStateChangedCopyWith<$Res> {
  _$AppStateChangedCopyWithImpl(this._self, this._then);

  final AppStateChanged _self;
  final $Res Function(AppStateChanged) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? locale = null,Object? cameraFullscreenMode = null,}) {
  return _then(AppStateChanged(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as AppThemeType,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocaleType,cameraFullscreenMode: null == cameraFullscreenMode ? _self.cameraFullscreenMode : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppThemeTypeCopyWith<$Res> get theme {
  
  return $AppThemeTypeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppState
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


class AppStateEncryptPreferenceChanged with DiagnosticableTreeMixin implements AppState {
  const AppStateEncryptPreferenceChanged({required this.theme, required this.locale, required this.cameraFullscreenMode, required this.encrypt});
  

@override final  AppThemeType theme;
@override final  AppLocaleType locale;
@override final  bool cameraFullscreenMode;
 final  EncryptionPreference? encrypt;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateEncryptPreferenceChangedCopyWith<AppStateEncryptPreferenceChanged> get copyWith => _$AppStateEncryptPreferenceChangedCopyWithImpl<AppStateEncryptPreferenceChanged>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppState.encryptPreferenceChanged'))
    ..add(DiagnosticsProperty('theme', theme))..add(DiagnosticsProperty('locale', locale))..add(DiagnosticsProperty('cameraFullscreenMode', cameraFullscreenMode))..add(DiagnosticsProperty('encrypt', encrypt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStateEncryptPreferenceChanged&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.cameraFullscreenMode, cameraFullscreenMode) || other.cameraFullscreenMode == cameraFullscreenMode)&&(identical(other.encrypt, encrypt) || other.encrypt == encrypt));
}


@override
int get hashCode => Object.hash(runtimeType,theme,locale,cameraFullscreenMode,encrypt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppState.encryptPreferenceChanged(theme: $theme, locale: $locale, cameraFullscreenMode: $cameraFullscreenMode, encrypt: $encrypt)';
}


}

/// @nodoc
abstract mixin class $AppStateEncryptPreferenceChangedCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppStateEncryptPreferenceChangedCopyWith(AppStateEncryptPreferenceChanged value, $Res Function(AppStateEncryptPreferenceChanged) _then) = _$AppStateEncryptPreferenceChangedCopyWithImpl;
@override @useResult
$Res call({
 AppThemeType theme, AppLocaleType locale, bool cameraFullscreenMode, EncryptionPreference? encrypt
});


@override $AppThemeTypeCopyWith<$Res> get theme;@override $AppLocaleTypeCopyWith<$Res> get locale;$EncryptionPreferenceCopyWith<$Res>? get encrypt;

}
/// @nodoc
class _$AppStateEncryptPreferenceChangedCopyWithImpl<$Res>
    implements $AppStateEncryptPreferenceChangedCopyWith<$Res> {
  _$AppStateEncryptPreferenceChangedCopyWithImpl(this._self, this._then);

  final AppStateEncryptPreferenceChanged _self;
  final $Res Function(AppStateEncryptPreferenceChanged) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? locale = null,Object? cameraFullscreenMode = null,Object? encrypt = freezed,}) {
  return _then(AppStateEncryptPreferenceChanged(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as AppThemeType,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as AppLocaleType,cameraFullscreenMode: null == cameraFullscreenMode ? _self.cameraFullscreenMode : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
as bool,encrypt: freezed == encrypt ? _self.encrypt : encrypt // ignore: cast_nullable_to_non_nullable
as EncryptionPreference?,
  ));
}

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppThemeTypeCopyWith<$Res> get theme {
  
  return $AppThemeTypeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppLocaleTypeCopyWith<$Res> get locale {
  
  return $AppLocaleTypeCopyWith<$Res>(_self.locale, (value) {
    return _then(_self.copyWith(locale: value));
  });
}/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptionPreferenceCopyWith<$Res>? get encrypt {
    if (_self.encrypt == null) {
    return null;
  }

  return $EncryptionPreferenceCopyWith<$Res>(_self.encrypt!, (value) {
    return _then(_self.copyWith(encrypt: value));
  });
}
}

// dart format on
