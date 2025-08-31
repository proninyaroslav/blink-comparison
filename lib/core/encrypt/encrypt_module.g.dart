// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncryptErrorException _$EncryptErrorExceptionFromJson(
  Map<String, dynamic> json,
) => EncryptErrorException(
  error: const ExceptionConverter().fromJson(json['error'] as String?),
  stackTrace: const StackTraceConverter().fromJson(
    json['stackTrace'] as String?,
  ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$EncryptErrorExceptionToJson(
  EncryptErrorException instance,
) => <String, dynamic>{
  'error': const ExceptionConverter().toJson(instance.error),
  'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
  'runtimeType': instance.$type,
};

EncryptErrorNoSecureKey _$EncryptErrorNoSecureKeyFromJson(
  Map<String, dynamic> json,
) => EncryptErrorNoSecureKey($type: json['runtimeType'] as String?);

Map<String, dynamic> _$EncryptErrorNoSecureKeyToJson(
  EncryptErrorNoSecureKey instance,
) => <String, dynamic>{'runtimeType': instance.$type};
