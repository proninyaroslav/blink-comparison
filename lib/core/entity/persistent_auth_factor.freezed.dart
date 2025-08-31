// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persistent_auth_factor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PersistentAuthFactor _$PersistentAuthFactorFromJson(
  Map<String, dynamic> json
) {
    return PersistentAuthFactorPassword.fromJson(
      json
    );
}

/// @nodoc
mixin _$PersistentAuthFactor {

 PersistentAuthFactorId get id;/// Currently used Argon2id hash
 String get hash;/// HEX-encoded salt.
 String get salt;
/// Create a copy of PersistentAuthFactor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersistentAuthFactorCopyWith<PersistentAuthFactor> get copyWith => _$PersistentAuthFactorCopyWithImpl<PersistentAuthFactor>(this as PersistentAuthFactor, _$identity);

  /// Serializes this PersistentAuthFactor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersistentAuthFactor&&(identical(other.id, id) || other.id == id)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.salt, salt) || other.salt == salt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,hash,salt);

@override
String toString() {
  return 'PersistentAuthFactor(id: $id, hash: $hash, salt: $salt)';
}


}

/// @nodoc
abstract mixin class $PersistentAuthFactorCopyWith<$Res>  {
  factory $PersistentAuthFactorCopyWith(PersistentAuthFactor value, $Res Function(PersistentAuthFactor) _then) = _$PersistentAuthFactorCopyWithImpl;
@useResult
$Res call({
 PersistentAuthFactorId id, String hash, String salt
});




}
/// @nodoc
class _$PersistentAuthFactorCopyWithImpl<$Res>
    implements $PersistentAuthFactorCopyWith<$Res> {
  _$PersistentAuthFactorCopyWithImpl(this._self, this._then);

  final PersistentAuthFactor _self;
  final $Res Function(PersistentAuthFactor) _then;

/// Create a copy of PersistentAuthFactor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? hash = null,Object? salt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as PersistentAuthFactorId,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,salt: null == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc
@JsonSerializable()

class PersistentAuthFactorPassword implements PersistentAuthFactor {
  const PersistentAuthFactorPassword({this.id = PersistentAuthFactorId.password, required this.hash, required this.salt});
  factory PersistentAuthFactorPassword.fromJson(Map<String, dynamic> json) => _$PersistentAuthFactorPasswordFromJson(json);

@override@JsonKey() final  PersistentAuthFactorId id;
/// Currently used Argon2id hash
@override final  String hash;
/// HEX-encoded salt.
@override final  String salt;

/// Create a copy of PersistentAuthFactor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersistentAuthFactorPasswordCopyWith<PersistentAuthFactorPassword> get copyWith => _$PersistentAuthFactorPasswordCopyWithImpl<PersistentAuthFactorPassword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersistentAuthFactorPasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersistentAuthFactorPassword&&(identical(other.id, id) || other.id == id)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.salt, salt) || other.salt == salt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,hash,salt);

@override
String toString() {
  return 'PersistentAuthFactor.password(id: $id, hash: $hash, salt: $salt)';
}


}

/// @nodoc
abstract mixin class $PersistentAuthFactorPasswordCopyWith<$Res> implements $PersistentAuthFactorCopyWith<$Res> {
  factory $PersistentAuthFactorPasswordCopyWith(PersistentAuthFactorPassword value, $Res Function(PersistentAuthFactorPassword) _then) = _$PersistentAuthFactorPasswordCopyWithImpl;
@override @useResult
$Res call({
 PersistentAuthFactorId id, String hash, String salt
});




}
/// @nodoc
class _$PersistentAuthFactorPasswordCopyWithImpl<$Res>
    implements $PersistentAuthFactorPasswordCopyWith<$Res> {
  _$PersistentAuthFactorPasswordCopyWithImpl(this._self, this._then);

  final PersistentAuthFactorPassword _self;
  final $Res Function(PersistentAuthFactorPassword) _then;

/// Create a copy of PersistentAuthFactor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? hash = null,Object? salt = null,}) {
  return _then(PersistentAuthFactorPassword(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as PersistentAuthFactorId,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,salt: null == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
