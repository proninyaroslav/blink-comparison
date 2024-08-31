// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptErrorExceptionImpl _$$EncryptErrorExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptErrorExceptionImpl(
      error: const ExceptionConverter().fromJson(json['error'] as String?),
      stackTrace:
          const StackTraceConverter().fromJson(json['stackTrace'] as String?),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EncryptErrorExceptionImplToJson(
        _$EncryptErrorExceptionImpl instance) =>
    <String, dynamic>{
      'error': const ExceptionConverter().toJson(instance.error),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
      'runtimeType': instance.$type,
    };

_$EncryptErrorNoSecureKeyImpl _$$EncryptErrorNoSecureKeyImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptErrorNoSecureKeyImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EncryptErrorNoSecureKeyImplToJson(
        _$EncryptErrorNoSecureKeyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
