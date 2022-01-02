// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PasswordInfo _$$_PasswordInfoFromJson(Map<String, dynamic> json) =>
    _$_PasswordInfo(
      id: json['id'] as String,
      hash: json['hash'] as String,
      salt: json['salt'] as String,
    );

Map<String, dynamic> _$$_PasswordInfoToJson(_$_PasswordInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hash': instance.hash,
      'salt': instance.salt,
    };
