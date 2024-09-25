// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistent_auth_factor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersistentAuthFactorPasswordImpl _$$PersistentAuthFactorPasswordImplFromJson(
        Map<String, dynamic> json) =>
    _$PersistentAuthFactorPasswordImpl(
      id: $enumDecodeNullable(_$PersistentAuthFactorIdEnumMap, json['id']) ??
          PersistentAuthFactorId.password,
      hash: json['hash'] as String,
      salt: json['salt'] as String,
    );

Map<String, dynamic> _$$PersistentAuthFactorPasswordImplToJson(
        _$PersistentAuthFactorPasswordImpl instance) =>
    <String, dynamic>{
      'id': _$PersistentAuthFactorIdEnumMap[instance.id]!,
      'hash': instance.hash,
      'salt': instance.salt,
    };

const _$PersistentAuthFactorIdEnumMap = {
  PersistentAuthFactorId.password: 'encrypt_key',
};
