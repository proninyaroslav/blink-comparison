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

import 'dart:async';
import 'dart:typed_data';

import 'package:blink_comparison/core/encrypt/encrypt_key_derivation.dart';
import 'package:blink_comparison/core/entity/converter/converter.dart';
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:convert/convert.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sodium/flutter_sodium.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  EncryptResult encryptSync({
    required Uint8List src,
    required RefImageInfo info,
  });

  DecryptResult decryptSync({
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

const _readBufSize = 4096;

/// Uses XChaCha20Poly1305 to encrypt bytes
class PBEModule implements EncryptModule {
  final String _password;
  final EncryptKeyDerivation _derivation;

  PBEModule(this._password, this._derivation);

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
      final decryptBytes = await compute(
        _decrypt,
        _PBEInfo(src: src, key: derivedKey),
      );
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
      final encryptBytes = await compute(
        _encrypt,
        _PBEInfo(src: src, key: derivedKey),
      );
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

  @override
  DecryptResult decryptSync({
    required Uint8List src,
    required RefImageInfo info,
  }) {
    final derivedKey = _deriveKeySync(
      derivation: _derivation,
      password: _password,
      salt: info.encryptSalt,
    );
    try {
      final decryptBytes = _decrypt(_PBEInfo(src: src, key: derivedKey));
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
  EncryptResult encryptSync({
    required Uint8List src,
    required RefImageInfo info,
  }) {
    final derivedKey = _deriveKeySync(
      derivation: _derivation,
      password: _password,
      salt: info.encryptSalt,
    );
    try {
      final encryptBytes = _encrypt(_PBEInfo(src: src, key: derivedKey));
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
}

Uint8List _encrypt(_PBEInfo info) {
  final outBytes = <int>[];
  final initRes = Sodium.cryptoSecretstreamXchacha20poly1305InitPush(info.key);

  outBytes.addAll(initRes.header);

  final srcLen = info.src.length;
  int offset = 0;
  while (offset < srcLen) {
    final endOffset = offset + _readBufSize;
    final notEof = endOffset < srcLen;
    final inputBuf = info.src.sublist(
      offset,
      notEof ? endOffset : null,
    );
    offset += inputBuf.length;

    final tag = notEof ? 0 : Sodium.cryptoSecretstreamXchacha20poly1305TagFinal;
    final outputBuf = Sodium.cryptoSecretstreamXchacha20poly1305Push(
        initRes.state, inputBuf, null, tag);
    outBytes.addAll(outputBuf);
  }

  return Uint8List.fromList(outBytes);
}

Uint8List _decrypt(_PBEInfo info) {
  final outBytes = <int>[];
  final header = info.src.sublist(
    0,
    Sodium.cryptoSecretstreamXchacha20poly1305Headerbytes,
  );
  final state = Sodium.cryptoSecretstreamXchacha20poly1305InitPull(
    header,
    info.key,
  );

  final srcLen = info.src.length;
  int offset = header.length;
  while (offset < srcLen) {
    final endOffset = offset +
        _readBufSize +
        Sodium.cryptoSecretstreamXchacha20poly1305Abytes;
    final notEof = endOffset < srcLen;
    final inputBuf = info.src.sublist(offset, notEof ? endOffset : null);
    offset += inputBuf.length;

    final res =
        Sodium.cryptoSecretstreamXchacha20poly1305Pull(state, inputBuf, null);
    if (res.tag == Sodium.cryptoSecretstreamXchacha20poly1305TagFinal &&
        notEof) {
      throw SodiumException(
        'Premature end (end of bytes to decrypt reached before the end of the stream)',
      );
    } else {
      outBytes.addAll(res.m);
    }
  }

  return Uint8List.fromList(outBytes);
}

@freezed
class _PBEInfo with _$_PBEInfo {
  const factory _PBEInfo({
    required Uint8List src,
    required Uint8List key,
  }) = _PBEInfoData;
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
    keyLength: Sodium.cryptoSecretstreamXchacha20poly1305Keybytes,
  );
}

Uint8List _deriveKeySync({
  required EncryptKeyDerivation derivation,
  required String password,
  required String salt,
}) {
  return derivation.deriveSync(
    password: password,
    salt: _decodeHex(salt),
    keyLength: Sodium.cryptoSecretstreamXchacha20poly1305Keybytes,
  );
}
