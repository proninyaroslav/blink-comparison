// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AppThemeType _$AppThemeTypeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'light':
          return AppThemeTypeLight.fromJson(
            json
          );
                case 'dark':
          return AppThemeTypeDark.fromJson(
            json
          );
                case 'system':
          return AppThemeTypeSystem.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'AppThemeType',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$AppThemeType {



  /// Serializes this AppThemeType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeType);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeType()';
}


}

/// @nodoc
class $AppThemeTypeCopyWith<$Res>  {
$AppThemeTypeCopyWith(AppThemeType _, $Res Function(AppThemeType) __);
}



/// @nodoc
@JsonSerializable()

class AppThemeTypeLight implements AppThemeType {
  const AppThemeTypeLight({final  String? $type}): $type = $type ?? 'light';
  factory AppThemeTypeLight.fromJson(Map<String, dynamic> json) => _$AppThemeTypeLightFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AppThemeTypeLightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeTypeLight);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeType.light()';
}


}




/// @nodoc
@JsonSerializable()

class AppThemeTypeDark implements AppThemeType {
  const AppThemeTypeDark({final  String? $type}): $type = $type ?? 'dark';
  factory AppThemeTypeDark.fromJson(Map<String, dynamic> json) => _$AppThemeTypeDarkFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AppThemeTypeDarkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeTypeDark);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeType.dark()';
}


}




/// @nodoc
@JsonSerializable()

class AppThemeTypeSystem implements AppThemeType {
  const AppThemeTypeSystem({final  String? $type}): $type = $type ?? 'system';
  factory AppThemeTypeSystem.fromJson(Map<String, dynamic> json) => _$AppThemeTypeSystemFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AppThemeTypeSystemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeTypeSystem);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeType.system()';
}


}




AppLocaleType _$AppLocaleTypeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'system':
          return AppLocaleTypeSystem.fromJson(
            json
          );
                case 'inner':
          return AppLocaleTypeInner.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'AppLocaleType',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$AppLocaleType {



  /// Serializes this AppLocaleType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLocaleType);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLocaleType()';
}


}

/// @nodoc
class $AppLocaleTypeCopyWith<$Res>  {
$AppLocaleTypeCopyWith(AppLocaleType _, $Res Function(AppLocaleType) __);
}



/// @nodoc
@JsonSerializable()

class AppLocaleTypeSystem implements AppLocaleType {
  const AppLocaleTypeSystem({final  String? $type}): $type = $type ?? 'system';
  factory AppLocaleTypeSystem.fromJson(Map<String, dynamic> json) => _$AppLocaleTypeSystemFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AppLocaleTypeSystemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLocaleTypeSystem);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLocaleType.system()';
}


}




/// @nodoc
@JsonSerializable()

class AppLocaleTypeInner implements AppLocaleType {
  const AppLocaleTypeInner({@LocaleConverter() required this.locale, final  String? $type}): $type = $type ?? 'inner';
  factory AppLocaleTypeInner.fromJson(Map<String, dynamic> json) => _$AppLocaleTypeInnerFromJson(json);

@LocaleConverter() final  Locale locale;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AppLocaleType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppLocaleTypeInnerCopyWith<AppLocaleTypeInner> get copyWith => _$AppLocaleTypeInnerCopyWithImpl<AppLocaleTypeInner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppLocaleTypeInnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLocaleTypeInner&&(identical(other.locale, locale) || other.locale == locale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'AppLocaleType.inner(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $AppLocaleTypeInnerCopyWith<$Res> implements $AppLocaleTypeCopyWith<$Res> {
  factory $AppLocaleTypeInnerCopyWith(AppLocaleTypeInner value, $Res Function(AppLocaleTypeInner) _then) = _$AppLocaleTypeInnerCopyWithImpl;
@useResult
$Res call({
@LocaleConverter() Locale locale
});




}
/// @nodoc
class _$AppLocaleTypeInnerCopyWithImpl<$Res>
    implements $AppLocaleTypeInnerCopyWith<$Res> {
  _$AppLocaleTypeInnerCopyWithImpl(this._self, this._then);

  final AppLocaleTypeInner _self;
  final $Res Function(AppLocaleTypeInner) _then;

/// Create a copy of AppLocaleType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(AppLocaleTypeInner(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}


}

ShowcaseType _$ShowcaseTypeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'opacity':
          return ShowcaseTypeOpacity.fromJson(
            json
          );
                case 'refImageBorder':
          return ShowcaseTypeRefImageBorder.fromJson(
            json
          );
                case 'blinkComparison':
          return ShowcaseTypeBlinkComparison.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ShowcaseType',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ShowcaseType {



  /// Serializes this ShowcaseType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseType);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShowcaseType()';
}


}

/// @nodoc
class $ShowcaseTypeCopyWith<$Res>  {
$ShowcaseTypeCopyWith(ShowcaseType _, $Res Function(ShowcaseType) __);
}



/// @nodoc
@JsonSerializable()

class ShowcaseTypeOpacity implements ShowcaseType {
  const ShowcaseTypeOpacity({final  String? $type}): $type = $type ?? 'opacity';
  factory ShowcaseTypeOpacity.fromJson(Map<String, dynamic> json) => _$ShowcaseTypeOpacityFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ShowcaseTypeOpacityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseTypeOpacity);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShowcaseType.opacity()';
}


}




/// @nodoc
@JsonSerializable()

class ShowcaseTypeRefImageBorder implements ShowcaseType {
  const ShowcaseTypeRefImageBorder({final  String? $type}): $type = $type ?? 'refImageBorder';
  factory ShowcaseTypeRefImageBorder.fromJson(Map<String, dynamic> json) => _$ShowcaseTypeRefImageBorderFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ShowcaseTypeRefImageBorderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseTypeRefImageBorder);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShowcaseType.refImageBorder()';
}


}




/// @nodoc
@JsonSerializable()

class ShowcaseTypeBlinkComparison implements ShowcaseType {
  const ShowcaseTypeBlinkComparison({final  String? $type}): $type = $type ?? 'blinkComparison';
  factory ShowcaseTypeBlinkComparison.fromJson(Map<String, dynamic> json) => _$ShowcaseTypeBlinkComparisonFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ShowcaseTypeBlinkComparisonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcaseTypeBlinkComparison);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShowcaseType.blinkComparison()';
}


}




EncryptionPreference _$EncryptionPreferenceFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'none':
          return EncryptionPreferenceNone.fromJson(
            json
          );
                case 'password':
          return EncryptionPreferencePassword.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'EncryptionPreference',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$EncryptionPreference {



  /// Serializes this EncryptionPreference to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionPreference);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionPreference()';
}


}

/// @nodoc
class $EncryptionPreferenceCopyWith<$Res>  {
$EncryptionPreferenceCopyWith(EncryptionPreference _, $Res Function(EncryptionPreference) __);
}



/// @nodoc
@JsonSerializable()

class EncryptionPreferenceNone implements EncryptionPreference {
  const EncryptionPreferenceNone({final  String? $type}): $type = $type ?? 'none';
  factory EncryptionPreferenceNone.fromJson(Map<String, dynamic> json) => _$EncryptionPreferenceNoneFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$EncryptionPreferenceNoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionPreferenceNone);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionPreference.none()';
}


}




/// @nodoc
@JsonSerializable()

class EncryptionPreferencePassword implements EncryptionPreference {
  const EncryptionPreferencePassword({final  String? $type}): $type = $type ?? 'password';
  factory EncryptionPreferencePassword.fromJson(Map<String, dynamic> json) => _$EncryptionPreferencePasswordFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$EncryptionPreferencePasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionPreferencePassword);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionPreference.password()';
}


}




// dart format on
