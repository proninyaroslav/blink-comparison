// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  AppThemeType? get theme => throw _privateConstructorUsedError;
  AppLocaleType? get locale => throw _privateConstructorUsedError;
  bool? get cameraFullscreenMode => throw _privateConstructorUsedError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AppThemeType theme, AppLocaleType locale, bool cameraFullscreenMode});

  $AppThemeTypeCopyWith<$Res>? get theme;
  $AppLocaleTypeCopyWith<$Res>? get locale;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? locale = null,
    Object? cameraFullscreenMode = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme!
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: null == locale
          ? _value.locale!
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      cameraFullscreenMode: null == cameraFullscreenMode
          ? _value.cameraFullscreenMode!
          : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeTypeCopyWith<$Res>? get theme {
    if (_value.theme == null) {
      return null;
    }

    return $AppThemeTypeCopyWith<$Res>(_value.theme!, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppLocaleTypeCopyWith<$Res>? get locale {
    if (_value.locale == null) {
      return null;
    }

    return $AppLocaleTypeCopyWith<$Res>(_value.locale!, (value) {
      return _then(_value.copyWith(locale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateInitialImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateInitialImplCopyWith(_$AppStateInitialImpl value,
          $Res Function(_$AppStateInitialImpl) then) =
      __$$AppStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppThemeType? theme, AppLocaleType? locale, bool? cameraFullscreenMode});

  @override
  $AppThemeTypeCopyWith<$Res>? get theme;
  @override
  $AppLocaleTypeCopyWith<$Res>? get locale;
}

/// @nodoc
class __$$AppStateInitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateInitialImpl>
    implements _$$AppStateInitialImplCopyWith<$Res> {
  __$$AppStateInitialImplCopyWithImpl(
      _$AppStateInitialImpl _value, $Res Function(_$AppStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
    Object? cameraFullscreenMode = freezed,
  }) {
    return _then(_$AppStateInitialImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType?,
      cameraFullscreenMode: freezed == cameraFullscreenMode
          ? _value.cameraFullscreenMode
          : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AppStateInitialImpl
    with DiagnosticableTreeMixin
    implements AppStateInitial {
  const _$AppStateInitialImpl(
      {this.theme = null,
      this.locale = null,
      this.cameraFullscreenMode = null});

  @override
  @JsonKey()
  final AppThemeType? theme;
  @override
  @JsonKey()
  final AppLocaleType? locale;
  @override
  @JsonKey()
  final bool? cameraFullscreenMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.initial(theme: $theme, locale: $locale, cameraFullscreenMode: $cameraFullscreenMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.initial'))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('cameraFullscreenMode', cameraFullscreenMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateInitialImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.cameraFullscreenMode, cameraFullscreenMode) ||
                other.cameraFullscreenMode == cameraFullscreenMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, theme, locale, cameraFullscreenMode);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateInitialImplCopyWith<_$AppStateInitialImpl> get copyWith =>
      __$$AppStateInitialImplCopyWithImpl<_$AppStateInitialImpl>(
          this, _$identity);
}

abstract class AppStateInitial implements AppState {
  const factory AppStateInitial(
      {final AppThemeType? theme,
      final AppLocaleType? locale,
      final bool? cameraFullscreenMode}) = _$AppStateInitialImpl;

  @override
  AppThemeType? get theme;
  @override
  AppLocaleType? get locale;
  @override
  bool? get cameraFullscreenMode;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateInitialImplCopyWith<_$AppStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStateLoadedImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateLoadedImplCopyWith(_$AppStateLoadedImpl value,
          $Res Function(_$AppStateLoadedImpl) then) =
      __$$AppStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppThemeType theme, AppLocaleType locale, bool cameraFullscreenMode});

  @override
  $AppThemeTypeCopyWith<$Res> get theme;
  @override
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class __$$AppStateLoadedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateLoadedImpl>
    implements _$$AppStateLoadedImplCopyWith<$Res> {
  __$$AppStateLoadedImplCopyWithImpl(
      _$AppStateLoadedImpl _value, $Res Function(_$AppStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? locale = null,
    Object? cameraFullscreenMode = null,
  }) {
    return _then(_$AppStateLoadedImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      cameraFullscreenMode: null == cameraFullscreenMode
          ? _value.cameraFullscreenMode
          : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeTypeCopyWith<$Res> get theme {
    return $AppThemeTypeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppLocaleTypeCopyWith<$Res> get locale {
    return $AppLocaleTypeCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value));
    });
  }
}

/// @nodoc

class _$AppStateLoadedImpl
    with DiagnosticableTreeMixin
    implements AppStateLoaded {
  const _$AppStateLoadedImpl(
      {required this.theme,
      required this.locale,
      required this.cameraFullscreenMode});

  @override
  final AppThemeType theme;
  @override
  final AppLocaleType locale;
  @override
  final bool cameraFullscreenMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.loaded(theme: $theme, locale: $locale, cameraFullscreenMode: $cameraFullscreenMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.loaded'))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('cameraFullscreenMode', cameraFullscreenMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateLoadedImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.cameraFullscreenMode, cameraFullscreenMode) ||
                other.cameraFullscreenMode == cameraFullscreenMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, theme, locale, cameraFullscreenMode);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateLoadedImplCopyWith<_$AppStateLoadedImpl> get copyWith =>
      __$$AppStateLoadedImplCopyWithImpl<_$AppStateLoadedImpl>(
          this, _$identity);
}

abstract class AppStateLoaded implements AppState {
  const factory AppStateLoaded(
      {required final AppThemeType theme,
      required final AppLocaleType locale,
      required final bool cameraFullscreenMode}) = _$AppStateLoadedImpl;

  @override
  AppThemeType get theme;
  @override
  AppLocaleType get locale;
  @override
  bool get cameraFullscreenMode;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateLoadedImplCopyWith<_$AppStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStateChangedImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateChangedImplCopyWith(_$AppStateChangedImpl value,
          $Res Function(_$AppStateChangedImpl) then) =
      __$$AppStateChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppThemeType theme, AppLocaleType locale, bool cameraFullscreenMode});

  @override
  $AppThemeTypeCopyWith<$Res> get theme;
  @override
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class __$$AppStateChangedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateChangedImpl>
    implements _$$AppStateChangedImplCopyWith<$Res> {
  __$$AppStateChangedImplCopyWithImpl(
      _$AppStateChangedImpl _value, $Res Function(_$AppStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? locale = null,
    Object? cameraFullscreenMode = null,
  }) {
    return _then(_$AppStateChangedImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      cameraFullscreenMode: null == cameraFullscreenMode
          ? _value.cameraFullscreenMode
          : cameraFullscreenMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeTypeCopyWith<$Res> get theme {
    return $AppThemeTypeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppLocaleTypeCopyWith<$Res> get locale {
    return $AppLocaleTypeCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value));
    });
  }
}

/// @nodoc

class _$AppStateChangedImpl
    with DiagnosticableTreeMixin
    implements AppStateChanged {
  const _$AppStateChangedImpl(
      {required this.theme,
      required this.locale,
      required this.cameraFullscreenMode});

  @override
  final AppThemeType theme;
  @override
  final AppLocaleType locale;
  @override
  final bool cameraFullscreenMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.changed(theme: $theme, locale: $locale, cameraFullscreenMode: $cameraFullscreenMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.changed'))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('cameraFullscreenMode', cameraFullscreenMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateChangedImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.cameraFullscreenMode, cameraFullscreenMode) ||
                other.cameraFullscreenMode == cameraFullscreenMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, theme, locale, cameraFullscreenMode);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateChangedImplCopyWith<_$AppStateChangedImpl> get copyWith =>
      __$$AppStateChangedImplCopyWithImpl<_$AppStateChangedImpl>(
          this, _$identity);
}

abstract class AppStateChanged implements AppState {
  const factory AppStateChanged(
      {required final AppThemeType theme,
      required final AppLocaleType locale,
      required final bool cameraFullscreenMode}) = _$AppStateChangedImpl;

  @override
  AppThemeType get theme;
  @override
  AppLocaleType get locale;
  @override
  bool get cameraFullscreenMode;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateChangedImplCopyWith<_$AppStateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
