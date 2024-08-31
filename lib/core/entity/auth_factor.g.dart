// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_factor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MutableAuthFactorPasswordImpl _$$MutableAuthFactorPasswordImplFromJson(
        Map<String, dynamic> json) =>
    _$MutableAuthFactorPasswordImpl(
      value: const SecureKeyConverter().fromJson(json['value'] as List),
    );

Map<String, dynamic> _$$MutableAuthFactorPasswordImplToJson(
        _$MutableAuthFactorPasswordImpl instance) =>
    <String, dynamic>{
      'value': const SecureKeyConverter().toJson(instance.value),
    };
