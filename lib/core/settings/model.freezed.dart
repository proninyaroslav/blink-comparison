// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppThemeType _$AppThemeTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'light':
      return AppThemeTypeLight.fromJson(json);
    case 'dark':
      return AppThemeTypeDark.fromJson(json);
    case 'system':
      return AppThemeTypeSystem.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppThemeType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$AppThemeTypeTearOff {
  const _$AppThemeTypeTearOff();

  AppThemeTypeLight light() {
    return const AppThemeTypeLight();
  }

  AppThemeTypeDark dark() {
    return const AppThemeTypeDark();
  }

  AppThemeTypeSystem system() {
    return const AppThemeTypeSystem();
  }

  AppThemeType fromJson(Map<String, Object?> json) {
    return AppThemeType.fromJson(json);
  }
}

/// @nodoc
const $AppThemeType = _$AppThemeTypeTearOff();

/// @nodoc
mixin _$AppThemeType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
    required TResult Function() system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeTypeLight value) light,
    required TResult Function(AppThemeTypeDark value) dark,
    required TResult Function(AppThemeTypeSystem value) system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeTypeCopyWith<$Res> {
  factory $AppThemeTypeCopyWith(
          AppThemeType value, $Res Function(AppThemeType) then) =
      _$AppThemeTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeTypeCopyWithImpl<$Res> implements $AppThemeTypeCopyWith<$Res> {
  _$AppThemeTypeCopyWithImpl(this._value, this._then);

  final AppThemeType _value;
  // ignore: unused_field
  final $Res Function(AppThemeType) _then;
}

/// @nodoc
abstract class $AppThemeTypeLightCopyWith<$Res> {
  factory $AppThemeTypeLightCopyWith(
          AppThemeTypeLight value, $Res Function(AppThemeTypeLight) then) =
      _$AppThemeTypeLightCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeTypeLightCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res>
    implements $AppThemeTypeLightCopyWith<$Res> {
  _$AppThemeTypeLightCopyWithImpl(
      AppThemeTypeLight _value, $Res Function(AppThemeTypeLight) _then)
      : super(_value, (v) => _then(v as AppThemeTypeLight));

  @override
  AppThemeTypeLight get _value => super._value as AppThemeTypeLight;
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeLight implements AppThemeTypeLight {
  const _$AppThemeTypeLight({String? $type}) : $type = $type ?? 'light';

  factory _$AppThemeTypeLight.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeLightFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.light()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppThemeTypeLight);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
    required TResult Function() system,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeTypeLight value) light,
    required TResult Function(AppThemeTypeDark value) dark,
    required TResult Function(AppThemeTypeSystem value) system,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeLightToJson(this);
  }
}

abstract class AppThemeTypeLight implements AppThemeType {
  const factory AppThemeTypeLight() = _$AppThemeTypeLight;

  factory AppThemeTypeLight.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeLight.fromJson;
}

/// @nodoc
abstract class $AppThemeTypeDarkCopyWith<$Res> {
  factory $AppThemeTypeDarkCopyWith(
          AppThemeTypeDark value, $Res Function(AppThemeTypeDark) then) =
      _$AppThemeTypeDarkCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeTypeDarkCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res>
    implements $AppThemeTypeDarkCopyWith<$Res> {
  _$AppThemeTypeDarkCopyWithImpl(
      AppThemeTypeDark _value, $Res Function(AppThemeTypeDark) _then)
      : super(_value, (v) => _then(v as AppThemeTypeDark));

  @override
  AppThemeTypeDark get _value => super._value as AppThemeTypeDark;
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeDark implements AppThemeTypeDark {
  const _$AppThemeTypeDark({String? $type}) : $type = $type ?? 'dark';

  factory _$AppThemeTypeDark.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeDarkFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.dark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppThemeTypeDark);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
    required TResult Function() system,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeTypeLight value) light,
    required TResult Function(AppThemeTypeDark value) dark,
    required TResult Function(AppThemeTypeSystem value) system,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeDarkToJson(this);
  }
}

abstract class AppThemeTypeDark implements AppThemeType {
  const factory AppThemeTypeDark() = _$AppThemeTypeDark;

  factory AppThemeTypeDark.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeDark.fromJson;
}

/// @nodoc
abstract class $AppThemeTypeSystemCopyWith<$Res> {
  factory $AppThemeTypeSystemCopyWith(
          AppThemeTypeSystem value, $Res Function(AppThemeTypeSystem) then) =
      _$AppThemeTypeSystemCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeTypeSystemCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res>
    implements $AppThemeTypeSystemCopyWith<$Res> {
  _$AppThemeTypeSystemCopyWithImpl(
      AppThemeTypeSystem _value, $Res Function(AppThemeTypeSystem) _then)
      : super(_value, (v) => _then(v as AppThemeTypeSystem));

  @override
  AppThemeTypeSystem get _value => super._value as AppThemeTypeSystem;
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeSystem implements AppThemeTypeSystem {
  const _$AppThemeTypeSystem({String? $type}) : $type = $type ?? 'system';

  factory _$AppThemeTypeSystem.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeSystemFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.system()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppThemeTypeSystem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
    required TResult Function() system,
  }) {
    return system();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
  }) {
    return system?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    TResult Function()? system,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeTypeLight value) light,
    required TResult Function(AppThemeTypeDark value) dark,
    required TResult Function(AppThemeTypeSystem value) system,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeTypeLight value)? light,
    TResult Function(AppThemeTypeDark value)? dark,
    TResult Function(AppThemeTypeSystem value)? system,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeSystemToJson(this);
  }
}

abstract class AppThemeTypeSystem implements AppThemeType {
  const factory AppThemeTypeSystem() = _$AppThemeTypeSystem;

  factory AppThemeTypeSystem.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeSystem.fromJson;
}

AppLocaleType _$AppLocaleTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'system':
      return AppLocaleTypeSystem.fromJson(json);
    case 'inner':
      return AppLocaleTypeInner.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppLocaleType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$AppLocaleTypeTearOff {
  const _$AppLocaleTypeTearOff();

  AppLocaleTypeSystem system() {
    return const AppLocaleTypeSystem();
  }

  AppLocaleTypeInner inner({@LocaleConverter() required Locale locale}) {
    return AppLocaleTypeInner(
      locale: locale,
    );
  }

  AppLocaleType fromJson(Map<String, Object?> json) {
    return AppLocaleType.fromJson(json);
  }
}

/// @nodoc
const $AppLocaleType = _$AppLocaleTypeTearOff();

/// @nodoc
mixin _$AppLocaleType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function(@LocaleConverter() Locale locale) inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(@LocaleConverter() Locale locale)? inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(@LocaleConverter() Locale locale)? inner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleTypeSystem value) system,
    required TResult Function(AppLocaleTypeInner value) inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocaleTypeCopyWith<$Res> {
  factory $AppLocaleTypeCopyWith(
          AppLocaleType value, $Res Function(AppLocaleType) then) =
      _$AppLocaleTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLocaleTypeCopyWithImpl<$Res>
    implements $AppLocaleTypeCopyWith<$Res> {
  _$AppLocaleTypeCopyWithImpl(this._value, this._then);

  final AppLocaleType _value;
  // ignore: unused_field
  final $Res Function(AppLocaleType) _then;
}

/// @nodoc
abstract class $AppLocaleTypeSystemCopyWith<$Res> {
  factory $AppLocaleTypeSystemCopyWith(
          AppLocaleTypeSystem value, $Res Function(AppLocaleTypeSystem) then) =
      _$AppLocaleTypeSystemCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLocaleTypeSystemCopyWithImpl<$Res>
    extends _$AppLocaleTypeCopyWithImpl<$Res>
    implements $AppLocaleTypeSystemCopyWith<$Res> {
  _$AppLocaleTypeSystemCopyWithImpl(
      AppLocaleTypeSystem _value, $Res Function(AppLocaleTypeSystem) _then)
      : super(_value, (v) => _then(v as AppLocaleTypeSystem));

  @override
  AppLocaleTypeSystem get _value => super._value as AppLocaleTypeSystem;
}

/// @nodoc
@JsonSerializable()
class _$AppLocaleTypeSystem implements AppLocaleTypeSystem {
  const _$AppLocaleTypeSystem({String? $type}) : $type = $type ?? 'system';

  factory _$AppLocaleTypeSystem.fromJson(Map<String, dynamic> json) =>
      _$$AppLocaleTypeSystemFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppLocaleType.system()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppLocaleTypeSystem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function(@LocaleConverter() Locale locale) inner,
  }) {
    return system();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(@LocaleConverter() Locale locale)? inner,
  }) {
    return system?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(@LocaleConverter() Locale locale)? inner,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleTypeSystem value) system,
    required TResult Function(AppLocaleTypeInner value) inner,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLocaleTypeSystemToJson(this);
  }
}

abstract class AppLocaleTypeSystem implements AppLocaleType {
  const factory AppLocaleTypeSystem() = _$AppLocaleTypeSystem;

  factory AppLocaleTypeSystem.fromJson(Map<String, dynamic> json) =
      _$AppLocaleTypeSystem.fromJson;
}

/// @nodoc
abstract class $AppLocaleTypeInnerCopyWith<$Res> {
  factory $AppLocaleTypeInnerCopyWith(
          AppLocaleTypeInner value, $Res Function(AppLocaleTypeInner) then) =
      _$AppLocaleTypeInnerCopyWithImpl<$Res>;
  $Res call({@LocaleConverter() Locale locale});
}

/// @nodoc
class _$AppLocaleTypeInnerCopyWithImpl<$Res>
    extends _$AppLocaleTypeCopyWithImpl<$Res>
    implements $AppLocaleTypeInnerCopyWith<$Res> {
  _$AppLocaleTypeInnerCopyWithImpl(
      AppLocaleTypeInner _value, $Res Function(AppLocaleTypeInner) _then)
      : super(_value, (v) => _then(v as AppLocaleTypeInner));

  @override
  AppLocaleTypeInner get _value => super._value as AppLocaleTypeInner;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(AppLocaleTypeInner(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppLocaleTypeInner implements AppLocaleTypeInner {
  const _$AppLocaleTypeInner(
      {@LocaleConverter() required this.locale, String? $type})
      : $type = $type ?? 'inner';

  factory _$AppLocaleTypeInner.fromJson(Map<String, dynamic> json) =>
      _$$AppLocaleTypeInnerFromJson(json);

  @override
  @LocaleConverter()
  final Locale locale;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppLocaleType.inner(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLocaleTypeInner &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  $AppLocaleTypeInnerCopyWith<AppLocaleTypeInner> get copyWith =>
      _$AppLocaleTypeInnerCopyWithImpl<AppLocaleTypeInner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() system,
    required TResult Function(@LocaleConverter() Locale locale) inner,
  }) {
    return inner(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(@LocaleConverter() Locale locale)? inner,
  }) {
    return inner?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? system,
    TResult Function(@LocaleConverter() Locale locale)? inner,
    required TResult orElse(),
  }) {
    if (inner != null) {
      return inner(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleTypeSystem value) system,
    required TResult Function(AppLocaleTypeInner value) inner,
  }) {
    return inner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
  }) {
    return inner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleTypeSystem value)? system,
    TResult Function(AppLocaleTypeInner value)? inner,
    required TResult orElse(),
  }) {
    if (inner != null) {
      return inner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLocaleTypeInnerToJson(this);
  }
}

abstract class AppLocaleTypeInner implements AppLocaleType {
  const factory AppLocaleTypeInner(
      {@LocaleConverter() required Locale locale}) = _$AppLocaleTypeInner;

  factory AppLocaleTypeInner.fromJson(Map<String, dynamic> json) =
      _$AppLocaleTypeInner.fromJson;

  @LocaleConverter()
  Locale get locale;
  @JsonKey(ignore: true)
  $AppLocaleTypeInnerCopyWith<AppLocaleTypeInner> get copyWith =>
      throw _privateConstructorUsedError;
}

ShowcaseType _$ShowcaseTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'opacity':
      return ShowcaseTypeOpacity.fromJson(json);
    case 'refImageBorder':
      return ShowcaseTypeRefImageBorder.fromJson(json);
    case 'blinkComparison':
      return ShowcaseTypeBlinkComparison.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ShowcaseType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ShowcaseTypeTearOff {
  const _$ShowcaseTypeTearOff();

  ShowcaseTypeOpacity opacity() {
    return const ShowcaseTypeOpacity();
  }

  ShowcaseTypeRefImageBorder refImageBorder() {
    return const ShowcaseTypeRefImageBorder();
  }

  ShowcaseTypeBlinkComparison blinkComparison() {
    return const ShowcaseTypeBlinkComparison();
  }

  ShowcaseType fromJson(Map<String, Object?> json) {
    return ShowcaseType.fromJson(json);
  }
}

/// @nodoc
const $ShowcaseType = _$ShowcaseTypeTearOff();

/// @nodoc
mixin _$ShowcaseType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opacity,
    required TResult Function() refImageBorder,
    required TResult Function() blinkComparison,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? opacity,
    TResult Function()? refImageBorder,
    TResult Function()? blinkComparison,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opacity,
    TResult Function()? refImageBorder,
    TResult Function()? blinkComparison,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowcaseTypeOpacity value) opacity,
    required TResult Function(ShowcaseTypeRefImageBorder value) refImageBorder,
    required TResult Function(ShowcaseTypeBlinkComparison value)
        blinkComparison,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowcaseTypeOpacity value)? opacity,
    TResult Function(ShowcaseTypeRefImageBorder value)? refImageBorder,
    TResult Function(ShowcaseTypeBlinkComparison value)? blinkComparison,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowcaseTypeOpacity value)? opacity,
    TResult Function(ShowcaseTypeRefImageBorder value)? refImageBorder,
    TResult Function(ShowcaseTypeBlinkComparison value)? blinkComparison,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowcaseTypeCopyWith<$Res> {
  factory $ShowcaseTypeCopyWith(
          ShowcaseType value, $Res Function(ShowcaseType) then) =
      _$ShowcaseTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowcaseTypeCopyWithImpl<$Res> implements $ShowcaseTypeCopyWith<$Res> {
  _$ShowcaseTypeCopyWithImpl(this._value, this._then);

  final ShowcaseType _value;
  // ignore: unused_field
  final $Res Function(ShowcaseType) _then;
}

/// @nodoc
abstract class $ShowcaseTypeOpacityCopyWith<$Res> {
  factory $ShowcaseTypeOpacityCopyWith(
          ShowcaseTypeOpacity value, $Res Function(ShowcaseTypeOpacity) then) =
      _$ShowcaseTypeOpacityCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowcaseTypeOpacityCopyWithImpl<$Res>
    extends _$ShowcaseTypeCopyWithImpl<$Res>
    implements $ShowcaseTypeOpacityCopyWith<$Res> {
  _$ShowcaseTypeOpacityCopyWithImpl(
      ShowcaseTypeOpacity _value, $Res Function(ShowcaseTypeOpacity) _then)
      : super(_value, (v) => _then(v as ShowcaseTypeOpacity));

  @override
  ShowcaseTypeOpacity get _value => super._value as ShowcaseTypeOpacity;
}

/// @nodoc
@JsonSerializable()
class _$ShowcaseTypeOpacity implements ShowcaseTypeOpacity {
  const _$ShowcaseTypeOpacity({String? $type}) : $type = $type ?? 'opacity';

  factory _$ShowcaseTypeOpacity.fromJson(Map<String, dynamic> json) =>
      _$$ShowcaseTypeOpacityFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowcaseType.opacity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowcaseTypeOpacity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opacity,
    required TResult Function() refImageBorder,
    required TResult Function() blinkComparison,
  }) {
    return opacity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? opacity,
    TResult Function()? refImageBorder,
    TResult Function()? blinkComparison,
  }) {
    return opacity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opacity,
    TResult Function()? refImageBorder,
    TResult Function()? blinkComparison,
    required TResult orElse(),
  }) {
    if (opacity != null) {
      return opacity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowcaseTypeOpacity value) opacity,
    required TResult Function(ShowcaseTypeRefImageBorder value) refImageBorder,
    required TResult Function(ShowcaseTypeBlinkComparison value)
        blinkComparison,
  }) {
    return opacity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowcaseTypeOpacity value)? opacity,
    TResult Function(ShowcaseTypeRefImageBorder value)? refImageBorder,
    TResult Function(ShowcaseTypeBlinkComparison value)? blinkComparison,
  }) {
    return opacity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowcaseTypeOpacity value)? opacity,
    TResult Function(ShowcaseTypeRefImageBorder value)? refImageBorder,
    TResult Function(ShowcaseTypeBlinkComparison value)? blinkComparison,
    required TResult orElse(),
  }) {
    if (opacity != null) {
      return opacity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowcaseTypeOpacityToJson(this);
  }
}

abstract class ShowcaseTypeOpacity implements ShowcaseType {
  const factory ShowcaseTypeOpacity() = _$ShowcaseTypeOpacity;

  factory ShowcaseTypeOpacity.fromJson(Map<String, dynamic> json) =
      _$ShowcaseTypeOpacity.fromJson;
}

/// @nodoc
abstract class $ShowcaseTypeRefImageBorderCopyWith<$Res> {
  factory $ShowcaseTypeRefImageBorderCopyWith(ShowcaseTypeRefImageBorder value,
          $Res Function(ShowcaseTypeRefImageBorder) then) =
      _$ShowcaseTypeRefImageBorderCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowcaseTypeRefImageBorderCopyWithImpl<$Res>
    extends _$ShowcaseTypeCopyWithImpl<$Res>
    implements $ShowcaseTypeRefImageBorderCopyWith<$Res> {
  _$ShowcaseTypeRefImageBorderCopyWithImpl(ShowcaseTypeRefImageBorder _value,
      $Res Function(ShowcaseTypeRefImageBorder) _then)
      : super(_value, (v) => _then(v as ShowcaseTypeRefImageBorder));

  @override
  ShowcaseTypeRefImageBorder get _value =>
      super._value as ShowcaseTypeRefImageBorder;
}

/// @nodoc
@JsonSerializable()
class _$ShowcaseTypeRefImageBorder implements ShowcaseTypeRefImageBorder {
  const _$ShowcaseTypeRefImageBorder({String? $type})
      : $type = $type ?? 'refImageBorder';

  factory _$ShowcaseTypeRefImageBorder.fromJson(Map<String, dynamic> json) =>
      _$$ShowcaseTypeRefImageBorderFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowcaseType.refImageBorder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowcaseTypeRefImageBorder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opacity,
    required TResult Function() refImageBorder,
    required TResult Function() blinkComparison,
  }) {
    return refImageBorder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? opacity,
    TResult Function()? refImageBorder,
    TResult Function()? blinkComparison,
  }) {
    return refImageBorder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opacity,
    TResult Function()? refImageBorder,
    TResult Function()? blinkComparison,
    required TResult orElse(),
  }) {
    if (refImageBorder != null) {
      return refImageBorder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowcaseTypeOpacity value) opacity,
    required TResult Function(ShowcaseTypeRefImageBorder value) refImageBorder,
    required TResult Function(ShowcaseTypeBlinkComparison value)
        blinkComparison,
  }) {
    return refImageBorder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowcaseTypeOpacity value)? opacity,
    TResult Function(ShowcaseTypeRefImageBorder value)? refImageBorder,
    TResult Function(ShowcaseTypeBlinkComparison value)? blinkComparison,
  }) {
    return refImageBorder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowcaseTypeOpacity value)? opacity,
    TResult Function(ShowcaseTypeRefImageBorder value)? refImageBorder,
    TResult Function(ShowcaseTypeBlinkComparison value)? blinkComparison,
    required TResult orElse(),
  }) {
    if (refImageBorder != null) {
      return refImageBorder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowcaseTypeRefImageBorderToJson(this);
  }
}

abstract class ShowcaseTypeRefImageBorder implements ShowcaseType {
  const factory ShowcaseTypeRefImageBorder() = _$ShowcaseTypeRefImageBorder;

  factory ShowcaseTypeRefImageBorder.fromJson(Map<String, dynamic> json) =
      _$ShowcaseTypeRefImageBorder.fromJson;
}

/// @nodoc
abstract class $ShowcaseTypeBlinkComparisonCopyWith<$Res> {
  factory $ShowcaseTypeBlinkComparisonCopyWith(
          ShowcaseTypeBlinkComparison value,
          $Res Function(ShowcaseTypeBlinkComparison) then) =
      _$ShowcaseTypeBlinkComparisonCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowcaseTypeBlinkComparisonCopyWithImpl<$Res>
    extends _$ShowcaseTypeCopyWithImpl<$Res>
    implements $ShowcaseTypeBlinkComparisonCopyWith<$Res> {
  _$ShowcaseTypeBlinkComparisonCopyWithImpl(ShowcaseTypeBlinkComparison _value,
      $Res Function(ShowcaseTypeBlinkComparison) _then)
      : super(_value, (v) => _then(v as ShowcaseTypeBlinkComparison));

  @override
  ShowcaseTypeBlinkComparison get _value =>
      super._value as ShowcaseTypeBlinkComparison;
}

/// @nodoc
@JsonSerializable()
class _$ShowcaseTypeBlinkComparison implements ShowcaseTypeBlinkComparison {
  const _$ShowcaseTypeBlinkComparison({String? $type})
      : $type = $type ?? 'blinkComparison';

  factory _$ShowcaseTypeBlinkComparison.fromJson(Map<String, dynamic> json) =>
      _$$ShowcaseTypeBlinkComparisonFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowcaseType.blinkComparison()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowcaseTypeBlinkComparison);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opacity,
    required TResult Function() refImageBorder,
    required TResult Function() blinkComparison,
  }) {
    return blinkComparison();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? opacity,
    TResult Function()? refImageBorder,
    TResult Function()? blinkComparison,
  }) {
    return blinkComparison?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opacity,
    TResult Function()? refImageBorder,
    TResult Function()? blinkComparison,
    required TResult orElse(),
  }) {
    if (blinkComparison != null) {
      return blinkComparison();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowcaseTypeOpacity value) opacity,
    required TResult Function(ShowcaseTypeRefImageBorder value) refImageBorder,
    required TResult Function(ShowcaseTypeBlinkComparison value)
        blinkComparison,
  }) {
    return blinkComparison(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowcaseTypeOpacity value)? opacity,
    TResult Function(ShowcaseTypeRefImageBorder value)? refImageBorder,
    TResult Function(ShowcaseTypeBlinkComparison value)? blinkComparison,
  }) {
    return blinkComparison?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowcaseTypeOpacity value)? opacity,
    TResult Function(ShowcaseTypeRefImageBorder value)? refImageBorder,
    TResult Function(ShowcaseTypeBlinkComparison value)? blinkComparison,
    required TResult orElse(),
  }) {
    if (blinkComparison != null) {
      return blinkComparison(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowcaseTypeBlinkComparisonToJson(this);
  }
}

abstract class ShowcaseTypeBlinkComparison implements ShowcaseType {
  const factory ShowcaseTypeBlinkComparison() = _$ShowcaseTypeBlinkComparison;

  factory ShowcaseTypeBlinkComparison.fromJson(Map<String, dynamic> json) =
      _$ShowcaseTypeBlinkComparison.fromJson;
}
