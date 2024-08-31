import 'dart:async';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sodium/sodium.dart';

export 'package:sodium/sodium.dart' show SecureKey;

class ImmutableSecureKey with EquatableMixin implements SecureKey {
  final SecureKey _key;

  ImmutableSecureKey(this._key);

  @override
  @protected
  SecureKey copy() => throw UnimplementedError();

  @override
  @protected
  void dispose() => throw UnimplementedError();

  @override
  Uint8List extractBytes() => _key.extractBytes();

  @override
  int get length => _key.length;

  @override
  @protected
  FutureOr<T> runUnlockedAsync<T>(SecureCallbackFn<FutureOr<T>> callback,
          {bool writable = false}) =>
      _key.runUnlockedAsync(callback, writable: false);

  @override
  @protected
  T runUnlockedSync<T>(SecureCallbackFn<T> callback, {bool writable = false}) =>
      _key.runUnlockedSync(callback, writable: false);

  @override
  List<Object?> get props => [_key];
}

extension SecureKeyExtentsion on SecureKey {
  ImmutableSecureKey toImmutable() => ImmutableSecureKey(this);
}

@visibleForTesting
class TestSecureKey with EquatableMixin implements SecureKey {
  final Uint8List list;
  bool isDisposed = false;

  TestSecureKey(int length) : list = Uint8List(length);

  TestSecureKey.fromList(this.list);

  @override
  SecureKey copy() {
    if (isDisposed) {
      throw 'Disposed';
    }

    return TestSecureKey.fromList(Uint8List.fromList(list));
  }

  @override
  void dispose() {
    isDisposed = true;
  }

  @override
  Uint8List extractBytes() {
    if (isDisposed) {
      throw 'Disposed';
    }

    return Uint8List.fromList(list);
  }

  @override
  int get length => list.length;

  @override
  FutureOr<T> runUnlockedAsync<T>(SecureCallbackFn<FutureOr<T>> callback,
      {bool writable = false}) {
    throw UnimplementedError();
  }

  @override
  T runUnlockedSync<T>(SecureCallbackFn<T> callback, {bool writable = false}) {
    throw UnimplementedError();
  }

  @override
  List<Object?> get props => [list];
}
