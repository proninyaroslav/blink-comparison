// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FsErrorIOImpl _$$FsErrorIOImplFromJson(Map<String, dynamic> json) =>
    _$FsErrorIOImpl(
      exception:
          const ExceptionConverter().fromJson(json['exception'] as String?),
      stackTrace:
          const StackTraceConverter().fromJson(json['stackTrace'] as String?),
    );

Map<String, dynamic> _$$FsErrorIOImplToJson(_$FsErrorIOImpl instance) =>
    <String, dynamic>{
      'exception': const ExceptionConverter().toJson(instance.exception),
      'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
    };
