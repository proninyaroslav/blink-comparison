// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptErrorImpl _$$EncryptErrorImplFromJson(Map<String, dynamic> json) =>
    _$EncryptErrorImpl(
      error: const ExceptionConverter().fromJson(json['error'] as String?),
      stackTrace:
          const StackTraceConverter().fromJson(json['stackTrace'] as String?),
    );

Map<String, dynamic> _$$EncryptErrorImplToJson(_$EncryptErrorImpl instance) =>
    <String, dynamic>{
      'error': const ExceptionConverter().toJson(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
    };
