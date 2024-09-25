// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persistent_auth_factor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersistentAuthFactor _$PersistentAuthFactorFromJson(Map<String, dynamic> json) {
  return PersistentAuthFactorPassword.fromJson(json);
}

/// @nodoc
mixin _$PersistentAuthFactor {
  PersistentAuthFactorId get id => throw _privateConstructorUsedError;

  /// Currently used Argon2id hash
  String get hash => throw _privateConstructorUsedError;

  /// HEX-encoded salt.
  String get salt => throw _privateConstructorUsedError;

  /// Serializes this PersistentAuthFactor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersistentAuthFactor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersistentAuthFactorCopyWith<PersistentAuthFactor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistentAuthFactorCopyWith<$Res> {
  factory $PersistentAuthFactorCopyWith(PersistentAuthFactor value,
          $Res Function(PersistentAuthFactor) then) =
      _$PersistentAuthFactorCopyWithImpl<$Res, PersistentAuthFactor>;
  @useResult
  $Res call({PersistentAuthFactorId id, String hash, String salt});
}

/// @nodoc
class _$PersistentAuthFactorCopyWithImpl<$Res,
        $Val extends PersistentAuthFactor>
    implements $PersistentAuthFactorCopyWith<$Res> {
  _$PersistentAuthFactorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersistentAuthFactor
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
              as PersistentAuthFactorId,
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
abstract class _$$PersistentAuthFactorPasswordImplCopyWith<$Res>
    implements $PersistentAuthFactorCopyWith<$Res> {
  factory _$$PersistentAuthFactorPasswordImplCopyWith(
          _$PersistentAuthFactorPasswordImpl value,
          $Res Function(_$PersistentAuthFactorPasswordImpl) then) =
      __$$PersistentAuthFactorPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PersistentAuthFactorId id, String hash, String salt});
}

/// @nodoc
class __$$PersistentAuthFactorPasswordImplCopyWithImpl<$Res>
    extends _$PersistentAuthFactorCopyWithImpl<$Res,
        _$PersistentAuthFactorPasswordImpl>
    implements _$$PersistentAuthFactorPasswordImplCopyWith<$Res> {
  __$$PersistentAuthFactorPasswordImplCopyWithImpl(
      _$PersistentAuthFactorPasswordImpl _value,
      $Res Function(_$PersistentAuthFactorPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersistentAuthFactor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hash = null,
    Object? salt = null,
  }) {
    return _then(_$PersistentAuthFactorPasswordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PersistentAuthFactorId,
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
class _$PersistentAuthFactorPasswordImpl
    implements PersistentAuthFactorPassword {
  const _$PersistentAuthFactorPasswordImpl(
      {this.id = PersistentAuthFactorId.password,
      required this.hash,
      required this.salt});

  factory _$PersistentAuthFactorPasswordImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PersistentAuthFactorPasswordImplFromJson(json);

  @override
  @JsonKey()
  final PersistentAuthFactorId id;

  /// Currently used Argon2id hash
  @override
  final String hash;

  /// HEX-encoded salt.
  @override
  final String salt;

  @override
  String toString() {
    return 'PersistentAuthFactor.password(id: $id, hash: $hash, salt: $salt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersistentAuthFactorPasswordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.salt, salt) || other.salt == salt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, hash, salt);

  /// Create a copy of PersistentAuthFactor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersistentAuthFactorPasswordImplCopyWith<
          _$PersistentAuthFactorPasswordImpl>
      get copyWith => __$$PersistentAuthFactorPasswordImplCopyWithImpl<
          _$PersistentAuthFactorPasswordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersistentAuthFactorPasswordImplToJson(
      this,
    );
  }
}

abstract class PersistentAuthFactorPassword implements PersistentAuthFactor {
  const factory PersistentAuthFactorPassword(
      {final PersistentAuthFactorId id,
      required final String hash,
      required final String salt}) = _$PersistentAuthFactorPasswordImpl;

  factory PersistentAuthFactorPassword.fromJson(Map<String, dynamic> json) =
      _$PersistentAuthFactorPasswordImpl.fromJson;

  @override
  PersistentAuthFactorId get id;

  /// Currently used Argon2id hash
  @override
  String get hash;

  /// HEX-encoded salt.
  @override
  String get salt;

  /// Create a copy of PersistentAuthFactor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersistentAuthFactorPasswordImplCopyWith<
          _$PersistentAuthFactorPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
