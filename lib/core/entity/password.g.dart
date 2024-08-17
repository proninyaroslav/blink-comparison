// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordInfoImpl _$$PasswordInfoImplFromJson(Map<String, dynamic> json) =>
    _$PasswordInfoImpl(
      id: json['id'] as String,
      hash: json['hash'] as String,
      salt: json['salt'] as String,
    );

Map<String, dynamic> _$$PasswordInfoImplToJson(_$PasswordInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hash': instance.hash,
      'salt': instance.salt,
    };
