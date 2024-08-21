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

import 'package:blink_comparison/core/encrypt/encrypt_module.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ref_image_state.freezed.dart';

@freezed
class RefImageState with _$RefImageState {
  const factory RefImageState.initial() = RefImageStateInitial;

  const factory RefImageState.loading() = RefImageStateLoading;

  const factory RefImageState.loaded(RefImage image) = RefImageStateLoaded;

  const factory RefImageState.loadFailed(
    LoadRefImageError error,
  ) = RefImageStateLoadFailed;
}

@freezed
class LoadRefImageError with _$LoadRefImageError {
  const factory LoadRefImageError.notFound() = LoadRefImageErrorNotFound;

  const factory LoadRefImageError.database({
    Exception? exception,
    StackTrace? stackTrace,
  }) = LoadRefImageErrorStorage;

  const factory LoadRefImageError.fs(FsError error) = LoadRefImageErrorFs;

  const factory LoadRefImageError.noSecureKey() = LoadRefImageErrorNoSecureKey;

  const factory LoadRefImageError.decrypt(
    DecryptError error,
  ) = LoadRefImageErrorDecrypt;
}
