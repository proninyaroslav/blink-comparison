// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordInfo _$PasswordInfoFromJson(Map<String, dynamic> json) {
  return _PasswordInfo.fromJson(json);
}

/// @nodoc
mixin _$PasswordInfo {
  String get id => throw _privateConstructorUsedError;

  /// Currently used Argon2id hash
  String get hash => throw _privateConstructorUsedError;

  /// HEX-encoded salt.
  String get salt => throw _privateConstructorUsedError;

  /// Serializes this PasswordInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordInfoCopyWith<PasswordInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordInfoCopyWith<$Res> {
  factory $PasswordInfoCopyWith(
          PasswordInfo value, $Res Function(PasswordInfo) then) =
      _$PasswordInfoCopyWithImpl<$Res, PasswordInfo>;
  @useResult
  $Res call({String id, String hash, String salt});
}

/// @nodoc
class _$PasswordInfoCopyWithImpl<$Res, $Val extends PasswordInfo>
    implements $PasswordInfoCopyWith<$Res> {
  _$PasswordInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hash = null,
    Object? salt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordInfoImplCopyWith<$Res>
    implements $PasswordInfoCopyWith<$Res> {
  factory _$$PasswordInfoImplCopyWith(
          _$PasswordInfoImpl value, $Res Function(_$PasswordInfoImpl) then) =
      __$$PasswordInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String hash, String salt});
}

/// @nodoc
class __$$PasswordInfoImplCopyWithImpl<$Res>
    extends _$PasswordInfoCopyWithImpl<$Res, _$PasswordInfoImpl>
    implements _$$PasswordInfoImplCopyWith<$Res> {
  __$$PasswordInfoImplCopyWithImpl(
      _$PasswordInfoImpl _value, $Res Function(_$PasswordInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hash = null,
    Object? salt = null,
  }) {
    return _then(_$PasswordInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordInfoImpl with DiagnosticableTreeMixin implements _PasswordInfo {
  const _$PasswordInfoImpl(
      {required this.id, required this.hash, required this.salt});

  factory _$PasswordInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordInfoImplFromJson(json);

  @override
  final String id;

  /// Currently used Argon2id hash
  @override
  final String hash;

  /// HEX-encoded salt.
  @override
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.salt, salt) || other.salt == salt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, hash, salt);

  /// Create a copy of PasswordInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordInfoImplCopyWith<_$PasswordInfoImpl> get copyWith =>
      __$$PasswordInfoImplCopyWithImpl<_$PasswordInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordInfoImplToJson(
      this,
    );
  }
}

abstract class _PasswordInfo implements PasswordInfo {
  const factory _PasswordInfo(
      {required final String id,
      required final String hash,
      required final String salt}) = _$PasswordInfoImpl;

  factory _PasswordInfo.fromJson(Map<String, dynamic> json) =
      _$PasswordInfoImpl.fromJson;

  @override
  String get id;

  /// Currently used Argon2id hash
  @override
  String get hash;

  /// HEX-encoded salt.
  @override
  String get salt;

  /// Create a copy of PasswordInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordInfoImplCopyWith<_$PasswordInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasswordType {}

/// @nodoc
abstract class $PasswordTypeCopyWith<$Res> {
  factory $PasswordTypeCopyWith(
          PasswordType value, $Res Function(PasswordType) then) =
      _$PasswordTypeCopyWithImpl<$Res, PasswordType>;
}

/// @nodoc
class _$PasswordTypeCopyWithImpl<$Res, $Val extends PasswordType>
    implements $PasswordTypeCopyWith<$Res> {
  _$PasswordTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PasswordTypeEncryptKeyImplCopyWith<$Res> {
  factory _$$PasswordTypeEncryptKeyImplCopyWith(
          _$PasswordTypeEncryptKeyImpl value,
          $Res Function(_$PasswordTypeEncryptKeyImpl) then) =
      __$$PasswordTypeEncryptKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordTypeEncryptKeyImplCopyWithImpl<$Res>
    extends _$PasswordTypeCopyWithImpl<$Res, _$PasswordTypeEncryptKeyImpl>
    implements _$$PasswordTypeEncryptKeyImplCopyWith<$Res> {
  __$$PasswordTypeEncryptKeyImplCopyWithImpl(
      _$PasswordTypeEncryptKeyImpl _value,
      $Res Function(_$PasswordTypeEncryptKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PasswordTypeEncryptKeyImpl
    with DiagnosticableTreeMixin
    implements PasswordTypeEncryptKey {
  const _$PasswordTypeEncryptKeyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordType.encryptKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PasswordType.encryptKey'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordTypeEncryptKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class PasswordTypeEncryptKey implements PasswordType {
  const factory PasswordTypeEncryptKey() = _$PasswordTypeEncryptKeyImpl;
}
