// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppThemeTypeLight _$AppThemeTypeLightFromJson(Map<String, dynamic> json) =>
    AppThemeTypeLight($type: json['runtimeType'] as String?);

Map<String, dynamic> _$AppThemeTypeLightToJson(AppThemeTypeLight instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

AppThemeTypeDark _$AppThemeTypeDarkFromJson(Map<String, dynamic> json) =>
    AppThemeTypeDark($type: json['runtimeType'] as String?);

Map<String, dynamic> _$AppThemeTypeDarkToJson(AppThemeTypeDark instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

AppThemeTypeSystem _$AppThemeTypeSystemFromJson(Map<String, dynamic> json) =>
    AppThemeTypeSystem($type: json['runtimeType'] as String?);

Map<String, dynamic> _$AppThemeTypeSystemToJson(AppThemeTypeSystem instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

AppLocaleTypeSystem _$AppLocaleTypeSystemFromJson(Map<String, dynamic> json) =>
    AppLocaleTypeSystem($type: json['runtimeType'] as String?);

Map<String, dynamic> _$AppLocaleTypeSystemToJson(
  AppLocaleTypeSystem instance,
) => <String, dynamic>{'runtimeType': instance.$type};

AppLocaleTypeInner _$AppLocaleTypeInnerFromJson(Map<String, dynamic> json) =>
    AppLocaleTypeInner(
      locale: const LocaleConverter().fromJson(json['locale'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AppLocaleTypeInnerToJson(AppLocaleTypeInner instance) =>
    <String, dynamic>{
      'locale': const LocaleConverter().toJson(instance.locale),
      'runtimeType': instance.$type,
    };

ShowcaseTypeOpacity _$ShowcaseTypeOpacityFromJson(Map<String, dynamic> json) =>
    ShowcaseTypeOpacity($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ShowcaseTypeOpacityToJson(
  ShowcaseTypeOpacity instance,
) => <String, dynamic>{'runtimeType': instance.$type};

ShowcaseTypeRefImageBorder _$ShowcaseTypeRefImageBorderFromJson(
  Map<String, dynamic> json,
) => ShowcaseTypeRefImageBorder($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ShowcaseTypeRefImageBorderToJson(
  ShowcaseTypeRefImageBorder instance,
) => <String, dynamic>{'runtimeType': instance.$type};

ShowcaseTypeBlinkComparison _$ShowcaseTypeBlinkComparisonFromJson(
  Map<String, dynamic> json,
) => ShowcaseTypeBlinkComparison($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ShowcaseTypeBlinkComparisonToJson(
  ShowcaseTypeBlinkComparison instance,
) => <String, dynamic>{'runtimeType': instance.$type};

EncryptionPreferenceNone _$EncryptionPreferenceNoneFromJson(
  Map<String, dynamic> json,
) => EncryptionPreferenceNone($type: json['runtimeType'] as String?);

Map<String, dynamic> _$EncryptionPreferenceNoneToJson(
  EncryptionPreferenceNone instance,
) => <String, dynamic>{'runtimeType': instance.$type};

EncryptionPreferencePassword _$EncryptionPreferencePasswordFromJson(
  Map<String, dynamic> json,
) => EncryptionPreferencePassword($type: json['runtimeType'] as String?);

Map<String, dynamic> _$EncryptionPreferencePasswordToJson(
  EncryptionPreferencePassword instance,
) => <String, dynamic>{'runtimeType': instance.$type};
