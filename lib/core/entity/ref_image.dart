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

import 'dart:typed_data';

import 'package:blink_comparison/core/entity/converter/converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ref_image.freezed.dart';
part 'ref_image.g.dart';

@freezed
class RefImageInfo with _$RefImageInfo {
  const factory RefImageInfo({
    required String id,
    @DateTimeEpochConverter() required DateTime dateAdded,
    required RefImageEncryption encryption,
    String? label,
  }) = _RefImageInfo;

  factory RefImageInfo.fromJson(Map<String, dynamic> json) =>
      _$RefImageInfoFromJson(json);
}

@freezed
class RefImage with _$RefImage {
  const factory RefImage({
    required RefImageInfo info,
    required Uint8List bytes,
  }) = _RefImage;
}

@freezed
sealed class RefImageEncryption with _$RefImageEncryption {
  const factory RefImageEncryption.none() = RefImageEncryptionNone;

  const factory RefImageEncryption.password({
    /// HEX-encoded salt.
    required String encryptSalt,
  }) = RefImageEncryptionPassword;

  factory RefImageEncryption.fromJson(Map<String, dynamic> json) =>
      _$RefImageEncryptionFromJson(json);
}
