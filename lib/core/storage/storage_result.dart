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

import 'dart:async';

import 'package:blink_comparison/core/encrypt/encrypt.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_result.freezed.dart';

@freezed
sealed class StorageResult<T> with _$StorageResult<T> {
  const factory StorageResult(T value) = StorageResultValue;

  const factory StorageResult.error(
    StorageError error,
  ) = StorageResultError;

  // ignore: void_checks
  static StorageResult<void> get empty => const StorageResult({});
}

@freezed
sealed class SecStorageResult<T> with _$SecStorageResult<T> {
  const factory SecStorageResult(T value) = SecStorageResultSuccess;

  const factory SecStorageResult.error(
    SecStorageError error,
  ) = SecStorageResultError;

  // ignore: void_checks
  static SecStorageResult<void> get empty => const SecStorageResult({});
}

@freezed
sealed class StorageError with _$StorageError {
  const factory StorageError.database({
    Exception? exception,
    StackTrace? stackTrace,
  }) = StorageErrorDatabase;

  const factory StorageError.fs({
    required FsError error,
  }) = StorageErrorFs;
}

@freezed
sealed class SecStorageError with _$SecStorageError {
  const factory SecStorageError.database({
    Exception? exception,
    StackTrace? stackTrace,
  }) = SecStorageErrorDatabase;

  const factory SecStorageError.fs({
    required FsError error,
  }) = SecStorageErrorFs;

  const factory SecStorageError.noKey() = SecStorageErrorNoKey;

  const factory SecStorageError.encrypt({
    required EncryptError error,
  }) = SecStorageErrorEncrypt;

  const factory SecStorageError.decrypt({
    required DecryptError error,
  }) = SecStorageErrorDecrypt;
}

typedef StorageResultTransformer<T> = StreamTransformer<T, StorageResult<T>>;

typedef StorageResultOnException<T> = StorageResult<T> Function(
  Exception,
  StackTrace,
);

StorageResultTransformer<T> storageResultTransformer<T>({
  required StorageResultOnException<T> onException,
}) =>
    StorageResultTransformer<T>.fromHandlers(
      handleData: (data, sink) {
        sink.add(StorageResult(data));
      },
      handleError: (e, stackTrace, sink) {
        if (e is Exception) {
          sink.add(onException(e, stackTrace));
        } else {
          sink.addError(e);
        }
      },
    );
