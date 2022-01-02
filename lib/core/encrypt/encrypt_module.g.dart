// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EncryptError _$$_EncryptErrorFromJson(Map<String, dynamic> json) =>
    _$_EncryptError(
      error: const ExceptionConverter().fromJson(json['error'] as String?),
      stackTrace:
          const StackTraceConverter().fromJson(json['stackTrace'] as String?),
    );

Map<String, dynamic> _$$_EncryptErrorToJson(_$_EncryptError instance) =>
    <String, dynamic>{
      'error': const ExceptionConverter().toJson(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
    };
