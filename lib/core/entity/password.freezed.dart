// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordInfo _$PasswordInfoFromJson(Map<String, dynamic> json) {
  return _PasswordInfo.fromJson(json);
}

/// @nodoc
class _$PasswordInfoTearOff {
  const _$PasswordInfoTearOff();

  _PasswordInfo call(
      {required String id, required String hash, required String salt}) {
    return _PasswordInfo(
      id: id,
      hash: hash,
      salt: salt,
    );
  }

  PasswordInfo fromJson(Map<String, Object?> json) {
    return PasswordInfo.fromJson(json);
  }
}

/// @nodoc
const $PasswordInfo = _$PasswordInfoTearOff();

/// @nodoc
mixin _$PasswordInfo {
  String get id => throw _privateConstructorUsedError;

  /// Currently used Argon2id hash
  String get hash => throw _privateConstructorUsedError;

  /// HEX-encoded salt.
  String get salt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordInfoCopyWith<PasswordInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordInfoCopyWith<$Res> {
  factory $PasswordInfoCopyWith(
          PasswordInfo value, $Res Function(PasswordInfo) then) =
      _$PasswordInfoCopyWithImpl<$Res>;
  $Res call({String id, String hash, String salt});
}

/// @nodoc
class _$PasswordInfoCopyWithImpl<$Res> implements $PasswordInfoCopyWith<$Res> {
  _$PasswordInfoCopyWithImpl(this._value, this._then);

  final PasswordInfo _value;
  // ignore: unused_field
  final $Res Function(PasswordInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? hash = freezed,
    Object? salt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PasswordInfoCopyWith<$Res>
    implements $PasswordInfoCopyWith<$Res> {
  factory _$PasswordInfoCopyWith(
          _PasswordInfo value, $Res Function(_PasswordInfo) then) =
      __$PasswordInfoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String hash, String salt});
}

/// @nodoc
class __$PasswordInfoCopyWithImpl<$Res> extends _$PasswordInfoCopyWithImpl<$Res>
    implements _$PasswordInfoCopyWith<$Res> {
  __$PasswordInfoCopyWithImpl(
      _PasswordInfo _value, $Res Function(_PasswordInfo) _then)
      : super(_value, (v) => _then(v as _PasswordInfo));

  @override
  _PasswordInfo get _value => super._value as _PasswordInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? hash = freezed,
    Object? salt = freezed,
  }) {
    return _then(_PasswordInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PasswordInfo with DiagnosticableTreeMixin implements _PasswordInfo {
  const _$_PasswordInfo(
      {required this.id, required this.hash, required this.salt});

  factory _$_PasswordInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordInfoFromJson(json);

  @override
  final String id;
  @override

  /// Currently used Argon2id hash
  final String hash;
  @override

  /// HEX-encoded salt.
  final String salt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordInfo(id: $id, hash: $hash, salt: $salt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('hash', hash))
      ..add(DiagnosticsProperty('salt', salt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.hash, hash) &&
            const DeepCollectionEquality().equals(other.salt, salt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(hash),
      const DeepCollectionEquality().hash(salt));

  @JsonKey(ignore: true)
  @override
  _$PasswordInfoCopyWith<_PasswordInfo> get copyWith =>
      __$PasswordInfoCopyWithImpl<_PasswordInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordInfoToJson(this);
  }
}

abstract class _PasswordInfo implements PasswordInfo {
  const factory _PasswordInfo(
      {required String id,
      required String hash,
      required String salt}) = _$_PasswordInfo;

  factory _PasswordInfo.fromJson(Map<String, dynamic> json) =
      _$_PasswordInfo.fromJson;

  @override
  String get id;
  @override

  /// Currently used Argon2id hash
  String get hash;
  @override

  /// HEX-encoded salt.
  String get salt;
  @override
  @JsonKey(ignore: true)
  _$PasswordInfoCopyWith<_PasswordInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PasswordTypeTearOff {
  const _$PasswordTypeTearOff();

  PasswordTypeEncryptKey encryptKey() {
    return const PasswordTypeEncryptKey();
  }
}

/// @nodoc
const $PasswordType = _$PasswordTypeTearOff();

/// @nodoc
mixin _$PasswordType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() encryptKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? encryptKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? encryptKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordTypeEncryptKey value) encryptKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordTypeEncryptKey value)? encryptKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordTypeEncryptKey value)? encryptKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordTypeCopyWith<$Res> {
  factory $PasswordTypeCopyWith(
          PasswordType value, $Res Function(PasswordType) then) =
      _$PasswordTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordTypeCopyWithImpl<$Res> implements $PasswordTypeCopyWith<$Res> {
  _$PasswordTypeCopyWithImpl(this._value, this._then);

  final PasswordType _value;
  // ignore: unused_field
  final $Res Function(PasswordType) _then;
}

/// @nodoc
abstract class $PasswordTypeEncryptKeyCopyWith<$Res> {
  factory $PasswordTypeEncryptKeyCopyWith(PasswordTypeEncryptKey value,
          $Res Function(PasswordTypeEncryptKey) then) =
      _$PasswordTypeEncryptKeyCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordTypeEncryptKeyCopyWithImpl<$Res>
    extends _$PasswordTypeCopyWithImpl<$Res>
    implements $PasswordTypeEncryptKeyCopyWith<$Res> {
  _$PasswordTypeEncryptKeyCopyWithImpl(PasswordTypeEncryptKey _value,
      $Res Function(PasswordTypeEncryptKey) _then)
      : super(_value, (v) => _then(v as PasswordTypeEncryptKey));

  @override
  PasswordTypeEncryptKey get _value => super._value as PasswordTypeEncryptKey;
}

/// @nodoc

class _$PasswordTypeEncryptKey
    with DiagnosticableTreeMixin
    implements PasswordTypeEncryptKey {
  const _$PasswordTypeEncryptKey();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordType.encryptKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PasswordType.encryptKey'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordTypeEncryptKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() encryptKey,
  }) {
    return encryptKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? encryptKey,
  }) {
    return encryptKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? encryptKey,
    required TResult orElse(),
  }) {
    if (encryptKey != null) {
      return encryptKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordTypeEncryptKey value) encryptKey,
  }) {
    return encryptKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PasswordTypeEncryptKey value)? encryptKey,
  }) {
    return encryptKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordTypeEncryptKey value)? encryptKey,
    required TResult orElse(),
  }) {
    if (encryptKey != null) {
      return encryptKey(this);
    }
    return orElse();
  }
}

abstract class PasswordTypeEncryptKey implements PasswordType {
  const factory PasswordTypeEncryptKey() = _$PasswordTypeEncryptKey;
}
