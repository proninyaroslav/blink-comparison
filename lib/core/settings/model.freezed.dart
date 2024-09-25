// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
mixin _$AppThemeType {
  /// Serializes this AppThemeType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeTypeCopyWith<$Res> {
  factory $AppThemeTypeCopyWith(
          AppThemeType value, $Res Function(AppThemeType) then) =
      _$AppThemeTypeCopyWithImpl<$Res, AppThemeType>;
}

/// @nodoc
class _$AppThemeTypeCopyWithImpl<$Res, $Val extends AppThemeType>
    implements $AppThemeTypeCopyWith<$Res> {
  _$AppThemeTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppThemeType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppThemeTypeLightImplCopyWith<$Res> {
  factory _$$AppThemeTypeLightImplCopyWith(_$AppThemeTypeLightImpl value,
          $Res Function(_$AppThemeTypeLightImpl) then) =
      __$$AppThemeTypeLightImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeTypeLightImplCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res, _$AppThemeTypeLightImpl>
    implements _$$AppThemeTypeLightImplCopyWith<$Res> {
  __$$AppThemeTypeLightImplCopyWithImpl(_$AppThemeTypeLightImpl _value,
      $Res Function(_$AppThemeTypeLightImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppThemeType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeLightImpl implements AppThemeTypeLight {
  const _$AppThemeTypeLightImpl({final String? $type})
      : $type = $type ?? 'light';

  factory _$AppThemeTypeLightImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeLightImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.light()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppThemeTypeLightImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeLightImplToJson(
      this,
    );
  }
}

abstract class AppThemeTypeLight implements AppThemeType {
  const factory AppThemeTypeLight() = _$AppThemeTypeLightImpl;

  factory AppThemeTypeLight.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeLightImpl.fromJson;
}

/// @nodoc
abstract class _$$AppThemeTypeDarkImplCopyWith<$Res> {
  factory _$$AppThemeTypeDarkImplCopyWith(_$AppThemeTypeDarkImpl value,
          $Res Function(_$AppThemeTypeDarkImpl) then) =
      __$$AppThemeTypeDarkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeTypeDarkImplCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res, _$AppThemeTypeDarkImpl>
    implements _$$AppThemeTypeDarkImplCopyWith<$Res> {
  __$$AppThemeTypeDarkImplCopyWithImpl(_$AppThemeTypeDarkImpl _value,
      $Res Function(_$AppThemeTypeDarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppThemeType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeDarkImpl implements AppThemeTypeDark {
  const _$AppThemeTypeDarkImpl({final String? $type}) : $type = $type ?? 'dark';

  factory _$AppThemeTypeDarkImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeDarkImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.dark()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppThemeTypeDarkImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeDarkImplToJson(
      this,
    );
  }
}

abstract class AppThemeTypeDark implements AppThemeType {
  const factory AppThemeTypeDark() = _$AppThemeTypeDarkImpl;

  factory AppThemeTypeDark.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeDarkImpl.fromJson;
}

/// @nodoc
abstract class _$$AppThemeTypeSystemImplCopyWith<$Res> {
  factory _$$AppThemeTypeSystemImplCopyWith(_$AppThemeTypeSystemImpl value,
          $Res Function(_$AppThemeTypeSystemImpl) then) =
      __$$AppThemeTypeSystemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeTypeSystemImplCopyWithImpl<$Res>
    extends _$AppThemeTypeCopyWithImpl<$Res, _$AppThemeTypeSystemImpl>
    implements _$$AppThemeTypeSystemImplCopyWith<$Res> {
  __$$AppThemeTypeSystemImplCopyWithImpl(_$AppThemeTypeSystemImpl _value,
      $Res Function(_$AppThemeTypeSystemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppThemeType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AppThemeTypeSystemImpl implements AppThemeTypeSystem {
  const _$AppThemeTypeSystemImpl({final String? $type})
      : $type = $type ?? 'system';

  factory _$AppThemeTypeSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeTypeSystemImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppThemeType.system()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppThemeTypeSystemImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeTypeSystemImplToJson(
      this,
    );
  }
}

abstract class AppThemeTypeSystem implements AppThemeType {
  const factory AppThemeTypeSystem() = _$AppThemeTypeSystemImpl;

  factory AppThemeTypeSystem.fromJson(Map<String, dynamic> json) =
      _$AppThemeTypeSystemImpl.fromJson;
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
mixin _$AppLocaleType {
  /// Serializes this AppLocaleType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocaleTypeCopyWith<$Res> {
  factory $AppLocaleTypeCopyWith(
          AppLocaleType value, $Res Function(AppLocaleType) then) =
      _$AppLocaleTypeCopyWithImpl<$Res, AppLocaleType>;
}

/// @nodoc
class _$AppLocaleTypeCopyWithImpl<$Res, $Val extends AppLocaleType>
    implements $AppLocaleTypeCopyWith<$Res> {
  _$AppLocaleTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLocaleType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppLocaleTypeSystemImplCopyWith<$Res> {
  factory _$$AppLocaleTypeSystemImplCopyWith(_$AppLocaleTypeSystemImpl value,
          $Res Function(_$AppLocaleTypeSystemImpl) then) =
      __$$AppLocaleTypeSystemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLocaleTypeSystemImplCopyWithImpl<$Res>
    extends _$AppLocaleTypeCopyWithImpl<$Res, _$AppLocaleTypeSystemImpl>
    implements _$$AppLocaleTypeSystemImplCopyWith<$Res> {
  __$$AppLocaleTypeSystemImplCopyWithImpl(_$AppLocaleTypeSystemImpl _value,
      $Res Function(_$AppLocaleTypeSystemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLocaleType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AppLocaleTypeSystemImpl implements AppLocaleTypeSystem {
  const _$AppLocaleTypeSystemImpl({final String? $type})
      : $type = $type ?? 'system';

  factory _$AppLocaleTypeSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLocaleTypeSystemImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppLocaleType.system()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocaleTypeSystemImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLocaleTypeSystemImplToJson(
      this,
    );
  }
}

abstract class AppLocaleTypeSystem implements AppLocaleType {
  const factory AppLocaleTypeSystem() = _$AppLocaleTypeSystemImpl;

  factory AppLocaleTypeSystem.fromJson(Map<String, dynamic> json) =
      _$AppLocaleTypeSystemImpl.fromJson;
}

/// @nodoc
abstract class _$$AppLocaleTypeInnerImplCopyWith<$Res> {
  factory _$$AppLocaleTypeInnerImplCopyWith(_$AppLocaleTypeInnerImpl value,
          $Res Function(_$AppLocaleTypeInnerImpl) then) =
      __$$AppLocaleTypeInnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@LocaleConverter() Locale locale});
}

/// @nodoc
class __$$AppLocaleTypeInnerImplCopyWithImpl<$Res>
    extends _$AppLocaleTypeCopyWithImpl<$Res, _$AppLocaleTypeInnerImpl>
    implements _$$AppLocaleTypeInnerImplCopyWith<$Res> {
  __$$AppLocaleTypeInnerImplCopyWithImpl(_$AppLocaleTypeInnerImpl _value,
      $Res Function(_$AppLocaleTypeInnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLocaleType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$AppLocaleTypeInnerImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppLocaleTypeInnerImpl implements AppLocaleTypeInner {
  const _$AppLocaleTypeInnerImpl(
      {@LocaleConverter() required this.locale, final String? $type})
      : $type = $type ?? 'inner';

  factory _$AppLocaleTypeInnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLocaleTypeInnerImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocaleTypeInnerImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of AppLocaleType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLocaleTypeInnerImplCopyWith<_$AppLocaleTypeInnerImpl> get copyWith =>
      __$$AppLocaleTypeInnerImplCopyWithImpl<_$AppLocaleTypeInnerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLocaleTypeInnerImplToJson(
      this,
    );
  }
}

abstract class AppLocaleTypeInner implements AppLocaleType {
  const factory AppLocaleTypeInner(
          {@LocaleConverter() required final Locale locale}) =
      _$AppLocaleTypeInnerImpl;

  factory AppLocaleTypeInner.fromJson(Map<String, dynamic> json) =
      _$AppLocaleTypeInnerImpl.fromJson;

  @LocaleConverter()
  Locale get locale;

  /// Create a copy of AppLocaleType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLocaleTypeInnerImplCopyWith<_$AppLocaleTypeInnerImpl> get copyWith =>
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
mixin _$ShowcaseType {
  /// Serializes this ShowcaseType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowcaseTypeCopyWith<$Res> {
  factory $ShowcaseTypeCopyWith(
          ShowcaseType value, $Res Function(ShowcaseType) then) =
      _$ShowcaseTypeCopyWithImpl<$Res, ShowcaseType>;
}

/// @nodoc
class _$ShowcaseTypeCopyWithImpl<$Res, $Val extends ShowcaseType>
    implements $ShowcaseTypeCopyWith<$Res> {
  _$ShowcaseTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowcaseType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowcaseTypeOpacityImplCopyWith<$Res> {
  factory _$$ShowcaseTypeOpacityImplCopyWith(_$ShowcaseTypeOpacityImpl value,
          $Res Function(_$ShowcaseTypeOpacityImpl) then) =
      __$$ShowcaseTypeOpacityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowcaseTypeOpacityImplCopyWithImpl<$Res>
    extends _$ShowcaseTypeCopyWithImpl<$Res, _$ShowcaseTypeOpacityImpl>
    implements _$$ShowcaseTypeOpacityImplCopyWith<$Res> {
  __$$ShowcaseTypeOpacityImplCopyWithImpl(_$ShowcaseTypeOpacityImpl _value,
      $Res Function(_$ShowcaseTypeOpacityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowcaseType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ShowcaseTypeOpacityImpl implements ShowcaseTypeOpacity {
  const _$ShowcaseTypeOpacityImpl({final String? $type})
      : $type = $type ?? 'opacity';

  factory _$ShowcaseTypeOpacityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowcaseTypeOpacityImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowcaseType.opacity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowcaseTypeOpacityImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowcaseTypeOpacityImplToJson(
      this,
    );
  }
}

abstract class ShowcaseTypeOpacity implements ShowcaseType {
  const factory ShowcaseTypeOpacity() = _$ShowcaseTypeOpacityImpl;

  factory ShowcaseTypeOpacity.fromJson(Map<String, dynamic> json) =
      _$ShowcaseTypeOpacityImpl.fromJson;
}

/// @nodoc
abstract class _$$ShowcaseTypeRefImageBorderImplCopyWith<$Res> {
  factory _$$ShowcaseTypeRefImageBorderImplCopyWith(
          _$ShowcaseTypeRefImageBorderImpl value,
          $Res Function(_$ShowcaseTypeRefImageBorderImpl) then) =
      __$$ShowcaseTypeRefImageBorderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowcaseTypeRefImageBorderImplCopyWithImpl<$Res>
    extends _$ShowcaseTypeCopyWithImpl<$Res, _$ShowcaseTypeRefImageBorderImpl>
    implements _$$ShowcaseTypeRefImageBorderImplCopyWith<$Res> {
  __$$ShowcaseTypeRefImageBorderImplCopyWithImpl(
      _$ShowcaseTypeRefImageBorderImpl _value,
      $Res Function(_$ShowcaseTypeRefImageBorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowcaseType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ShowcaseTypeRefImageBorderImpl implements ShowcaseTypeRefImageBorder {
  const _$ShowcaseTypeRefImageBorderImpl({final String? $type})
      : $type = $type ?? 'refImageBorder';

  factory _$ShowcaseTypeRefImageBorderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ShowcaseTypeRefImageBorderImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowcaseType.refImageBorder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowcaseTypeRefImageBorderImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowcaseTypeRefImageBorderImplToJson(
      this,
    );
  }
}

abstract class ShowcaseTypeRefImageBorder implements ShowcaseType {
  const factory ShowcaseTypeRefImageBorder() = _$ShowcaseTypeRefImageBorderImpl;

  factory ShowcaseTypeRefImageBorder.fromJson(Map<String, dynamic> json) =
      _$ShowcaseTypeRefImageBorderImpl.fromJson;
}

/// @nodoc
abstract class _$$ShowcaseTypeBlinkComparisonImplCopyWith<$Res> {
  factory _$$ShowcaseTypeBlinkComparisonImplCopyWith(
          _$ShowcaseTypeBlinkComparisonImpl value,
          $Res Function(_$ShowcaseTypeBlinkComparisonImpl) then) =
      __$$ShowcaseTypeBlinkComparisonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowcaseTypeBlinkComparisonImplCopyWithImpl<$Res>
    extends _$ShowcaseTypeCopyWithImpl<$Res, _$ShowcaseTypeBlinkComparisonImpl>
    implements _$$ShowcaseTypeBlinkComparisonImplCopyWith<$Res> {
  __$$ShowcaseTypeBlinkComparisonImplCopyWithImpl(
      _$ShowcaseTypeBlinkComparisonImpl _value,
      $Res Function(_$ShowcaseTypeBlinkComparisonImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowcaseType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ShowcaseTypeBlinkComparisonImpl implements ShowcaseTypeBlinkComparison {
  const _$ShowcaseTypeBlinkComparisonImpl({final String? $type})
      : $type = $type ?? 'blinkComparison';

  factory _$ShowcaseTypeBlinkComparisonImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ShowcaseTypeBlinkComparisonImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowcaseType.blinkComparison()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowcaseTypeBlinkComparisonImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowcaseTypeBlinkComparisonImplToJson(
      this,
    );
  }
}

abstract class ShowcaseTypeBlinkComparison implements ShowcaseType {
  const factory ShowcaseTypeBlinkComparison() =
      _$ShowcaseTypeBlinkComparisonImpl;

  factory ShowcaseTypeBlinkComparison.fromJson(Map<String, dynamic> json) =
      _$ShowcaseTypeBlinkComparisonImpl.fromJson;
}

EncryptionPreference _$EncryptionPreferenceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'none':
      return EncryptionPreferenceNone.fromJson(json);
    case 'password':
      return EncryptionPreferencePassword.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'EncryptionPreference',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$EncryptionPreference {
  /// Serializes this EncryptionPreference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptionPreferenceCopyWith<$Res> {
  factory $EncryptionPreferenceCopyWith(EncryptionPreference value,
          $Res Function(EncryptionPreference) then) =
      _$EncryptionPreferenceCopyWithImpl<$Res, EncryptionPreference>;
}

/// @nodoc
class _$EncryptionPreferenceCopyWithImpl<$Res,
        $Val extends EncryptionPreference>
    implements $EncryptionPreferenceCopyWith<$Res> {
  _$EncryptionPreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptionPreference
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EncryptionPreferenceNoneImplCopyWith<$Res> {
  factory _$$EncryptionPreferenceNoneImplCopyWith(
          _$EncryptionPreferenceNoneImpl value,
          $Res Function(_$EncryptionPreferenceNoneImpl) then) =
      __$$EncryptionPreferenceNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EncryptionPreferenceNoneImplCopyWithImpl<$Res>
    extends _$EncryptionPreferenceCopyWithImpl<$Res,
        _$EncryptionPreferenceNoneImpl>
    implements _$$EncryptionPreferenceNoneImplCopyWith<$Res> {
  __$$EncryptionPreferenceNoneImplCopyWithImpl(
      _$EncryptionPreferenceNoneImpl _value,
      $Res Function(_$EncryptionPreferenceNoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptionPreference
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EncryptionPreferenceNoneImpl implements EncryptionPreferenceNone {
  const _$EncryptionPreferenceNoneImpl({final String? $type})
      : $type = $type ?? 'none';

  factory _$EncryptionPreferenceNoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptionPreferenceNoneImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EncryptionPreference.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptionPreferenceNoneImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptionPreferenceNoneImplToJson(
      this,
    );
  }
}

abstract class EncryptionPreferenceNone implements EncryptionPreference {
  const factory EncryptionPreferenceNone() = _$EncryptionPreferenceNoneImpl;

  factory EncryptionPreferenceNone.fromJson(Map<String, dynamic> json) =
      _$EncryptionPreferenceNoneImpl.fromJson;
}

/// @nodoc
abstract class _$$EncryptionPreferencePasswordImplCopyWith<$Res> {
  factory _$$EncryptionPreferencePasswordImplCopyWith(
          _$EncryptionPreferencePasswordImpl value,
          $Res Function(_$EncryptionPreferencePasswordImpl) then) =
      __$$EncryptionPreferencePasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EncryptionPreferencePasswordImplCopyWithImpl<$Res>
    extends _$EncryptionPreferenceCopyWithImpl<$Res,
        _$EncryptionPreferencePasswordImpl>
    implements _$$EncryptionPreferencePasswordImplCopyWith<$Res> {
  __$$EncryptionPreferencePasswordImplCopyWithImpl(
      _$EncryptionPreferencePasswordImpl _value,
      $Res Function(_$EncryptionPreferencePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptionPreference
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EncryptionPreferencePasswordImpl
    implements EncryptionPreferencePassword {
  const _$EncryptionPreferencePasswordImpl({final String? $type})
      : $type = $type ?? 'password';

  factory _$EncryptionPreferencePasswordImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EncryptionPreferencePasswordImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EncryptionPreference.password()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptionPreferencePasswordImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptionPreferencePasswordImplToJson(
      this,
    );
  }
}

abstract class EncryptionPreferencePassword implements EncryptionPreference {
  const factory EncryptionPreferencePassword() =
      _$EncryptionPreferencePasswordImpl;

  factory EncryptionPreferencePassword.fromJson(Map<String, dynamic> json) =
      _$EncryptionPreferencePasswordImpl.fromJson;
}
