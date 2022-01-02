// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:freezed_annotation/freezed_annotation.dart';

class ErrorConverter implements JsonConverter<Object, String> {
  const ErrorConverter();

  @override
  Object fromJson(String json) {
    try {
      return jsonDecode(json);
    } catch (e) {
      return json;
    }
  }

  @override
  String toJson(Object object) => object.toString();
}

class ExceptionConverter implements JsonConverter<Exception?, String?> {
  const ExceptionConverter();

  @override
  Exception? fromJson(String? json) {
    try {
      return json == null ? null : jsonDecode(json);
    } catch (e) {
      return _Exception(json);
    }
  }

  @override
  String? toJson(Object? object) => object?.toString();
}

class _Exception implements Exception {
  final dynamic message;

  _Exception(this.message);

  @override
  String toString() => "$message";
}
