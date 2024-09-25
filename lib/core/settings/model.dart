// Copyright (C) 2022-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
//
// This file is part of Blink Comparison.
//
// Blink Comparison is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Blink Comparison is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Blink Comparison.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:convert';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
sealed class AppThemeType with _$AppThemeType {
  const factory AppThemeType.light() = AppThemeTypeLight;
  const factory AppThemeType.dark() = AppThemeTypeDark;
  const factory AppThemeType.system() = AppThemeTypeSystem;

  factory AppThemeType.fromJson(Map<String, dynamic> json) =>
      _$AppThemeTypeFromJson(json);
}

@freezed
sealed class AppLocaleType with _$AppLocaleType {
  const factory AppLocaleType.system() = AppLocaleTypeSystem;
  const factory AppLocaleType.inner({
    @LocaleConverter() required Locale locale,
  }) = AppLocaleTypeInner;

  factory AppLocaleType.fromJson(Map<String, dynamic> json) =>
      _$AppLocaleTypeFromJson(json);
}

class LocaleConverter implements JsonConverter<Locale, String> {
  const LocaleConverter();

  @override
  Locale fromJson(String json) {
    final map = jsonDecode(json) as Map<String, dynamic>;
    return Locale(
      map['languageCode'] as String,
      map['countryCode'] as String?,
    );
  }

  @override
  String toJson(Locale object) {
    return jsonEncode({
      'languageCode': object.languageCode,
      'countryCode': object.countryCode,
    });
  }
}

@freezed
sealed class ShowcaseType with _$ShowcaseType {
  const factory ShowcaseType.opacity() = ShowcaseTypeOpacity;
  const factory ShowcaseType.refImageBorder() = ShowcaseTypeRefImageBorder;
  const factory ShowcaseType.blinkComparison() = ShowcaseTypeBlinkComparison;

  factory ShowcaseType.fromJson(Map<String, dynamic> json) =>
      _$ShowcaseTypeFromJson(json);
}

@freezed
sealed class EncryptionPreference with _$EncryptionPreference {
  const factory EncryptionPreference.none() = EncryptionPreferenceNone;
  const factory EncryptionPreference.password() = EncryptionPreferencePassword;

  factory EncryptionPreference.fromJson(Map<String, dynamic> json) =>
      _$EncryptionPreferenceFromJson(json);
}
