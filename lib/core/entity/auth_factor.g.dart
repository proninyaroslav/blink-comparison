// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_factor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MutableAuthFactorPassword _$MutableAuthFactorPasswordFromJson(
  Map<String, dynamic> json,
) => MutableAuthFactorPassword(
  value: const SecureKeyConverter().fromJson(json['value'] as List),
);

Map<String, dynamic> _$MutableAuthFactorPasswordToJson(
  MutableAuthFactorPassword instance,
) => <String, dynamic>{
  'value': const SecureKeyConverter().toJson(instance.value),
};
