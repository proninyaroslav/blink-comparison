// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FsErrorIO _$$FsErrorIOFromJson(Map<String, dynamic> json) => _$FsErrorIO(
      exception:
          const ExceptionConverter().fromJson(json['exception'] as String?),
      stackTrace:
          const StackTraceConverter().fromJson(json['stackTrace'] as String?),
    );

Map<String, dynamic> _$$FsErrorIOToJson(_$FsErrorIO instance) =>
    <String, dynamic>{
      'exception': const ExceptionConverter().toJson(instance.exception),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
    };
