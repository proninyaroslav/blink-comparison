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

import 'package:blink_comparison/core/encrypt/encrypt_key_derivation.dart';
import 'package:blink_comparison/core/entity/converter/converter.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:convert/convert.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sodium_libs/sodium_libs_sumo.dart';
import 'package:typed_data/typed_data.dart';

part 'encrypt_module.freezed.dart';
part 'encrypt_module.g.dart';

abstract class EncryptModule {
  Future<EncryptResult> encrypt({
    required Uint8List src,
    required RefImageInfo info,
  });

  Future<DecryptResult> decrypt({
    required Uint8List src,
    required RefImageInfo info,
  });
}

@freezed
class EncryptResult with _$EncryptResult {
  const factory EncryptResult.success({
    required Uint8List bytes,
  }) = _EncryptResultSuccess;

  const factory EncryptResult.fail(
    EncryptError error,
  ) = _EncryptResultFail;
}

@freezed
class EncryptError with _$EncryptError {
  const factory EncryptError({
    @ExceptionConverter() Exception? error,
    @StackTraceConverter() StackTrace? stackTrace,
  }) = _EncryptError;

  factory EncryptError.fromJson(Map<String, dynamic> json) =>
      _$EncryptErrorFromJson(json);
}

@freezed
class DecryptResult with _$DecryptResult {
  const factory DecryptResult.success({
    required Uint8List bytes,
  }) = _DecryptResulttSuccess;

  const factory DecryptResult.fail(
    DecryptError error,
  ) = _DecryptResultFail;
}

@freezed
class DecryptError with _$DecryptError {
  const factory DecryptError({
    Exception? error,
    StackTrace? stackTrace,
  }) = DecryptErrorValue;

  const factory DecryptError.invalidKey() = DecryptErrorInvalidKey;
}

/// Uses XChaCha20Poly1305 to encrypt bytes
class PBEModule implements EncryptModule {
  final SodiumSumo _sodium;
  final String _password;
  final EncryptKeyDerivation _derivation;

  PBEModule(this._sodium, this._password, this._derivation);

  @override
  Future<DecryptResult> decrypt({
    required Uint8List src,
    required RefImageInfo info,
  }) async {
    final derivedKey = await _deriveKey(
      derivation: _derivation,
      password: _password,
      salt: info.encryptSalt,
    );
    try {
      final decryptBytes = await _decrypt(_PBEInfo(src: src, key: derivedKey));
      return DecryptResult.success(bytes: decryptBytes);
    } on Exception catch (e, stackTrace) {
      return DecryptResult.fail(
        DecryptError(
          error: e,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  @override
  Future<EncryptResult> encrypt({
    required Uint8List src,
    required RefImageInfo info,
  }) async {
    final derivedKey = await _deriveKey(
      derivation: _derivation,
      password: _password,
      salt: info.encryptSalt,
    );
    try {
      final encryptBytes = await _encrypt(_PBEInfo(src: src, key: derivedKey));

      return EncryptResult.success(bytes: encryptBytes);
    } on Exception catch (e, stackTrace) {
      return EncryptResult.fail(
        EncryptError(
          error: e,
          stackTrace: stackTrace,
        ),
      );
    }
  }

  Future<Uint8List> _encrypt(_PBEInfo info) async {
    final secretStream = _sodium.crypto.secretStream;

    final ouStream = secretStream.pushEx(
      messageStream: _buildMessageStream(info.src),
      key: SecureKey.fromList(_sodium, info.key),
    );

    final outputBytes = Uint8Buffer();
    for (final msg in await ouStream.toList()) {
      outputBytes.addAll(msg.message);
    }

    return Uint8List.view(outputBytes.buffer, 0, outputBytes.length);
  }

  Stream<SecretStreamPlainMessage> _buildMessageStream(Uint8List src) async* {
    final srcLen = src.length;
    int offset = 0;
    while (offset < srcLen) {
      final endOffset = offset + _readBufSize;
      final notEof = endOffset < srcLen;
      final message = src.sublist(
        offset,
        notEof ? endOffset : null,
      );
      offset += message.length;

      final tag = notEof
          ? SecretStreamMessageTag.message
          : SecretStreamMessageTag.finalPush;

      yield SecretStreamPlainMessage(message, tag: tag);
    }
  }

  Future<Uint8List> _decrypt(_PBEInfo info) async {
    final secretStream = _sodium.crypto.secretStream;

    final ouStream = secretStream.pullEx(
      cipherStream: _buildChiperStream(info.src),
      key: SecureKey.fromList(_sodium, info.key),
    );

    final outputBytes = Uint8Buffer();
    for (final msg in await ouStream.toList()) {
      outputBytes.addAll(msg.message);
    }

    return Uint8List.view(outputBytes.buffer, 0, outputBytes.length);
  }

  Stream<SecretStreamCipherMessage> _buildChiperStream(Uint8List src) async* {
    final secretStream = _sodium.crypto.secretStream;

    final header = src.sublist(0, secretStream.headerBytes);
    yield SecretStreamCipherMessage(header);

    final srcLen = src.length;
    int offset = header.length;
    while (offset < srcLen) {
      final endOffset = offset + _readBufSize + secretStream.aBytes;
      final notEof = endOffset < srcLen;
      final message = src.sublist(offset, notEof ? endOffset : null);

      yield SecretStreamCipherMessage(message);
      offset += message.length;
    }
  }

  Uint8List _decodeHex(String hexStr) => Uint8List.fromList(hex.decode(hexStr));

  Future<Uint8List> _deriveKey({
    required EncryptKeyDerivation derivation,
    required String password,
    required String salt,
  }) {
    return derivation.derive(
      password: password,
      salt: _decodeHex(salt),
      keyLength: _sodium.crypto.secretStream.keyBytes,
    );
  }
}

const _readBufSize = 4096;

@freezed
class _PBEInfo with _$PBEInfo {
  const factory _PBEInfo({
    required Uint8List src,
    required Uint8List key,
  }) = _PBEInfoData;
}
