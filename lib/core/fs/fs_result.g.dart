// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FsErrorIO _$FsErrorIOFromJson(Map<String, dynamic> json) => FsErrorIO(
  exception: const ExceptionConverter().fromJson(json['exception'] as String?),
  stackTrace: const StackTraceConverter().fromJson(
    json['stackTrace'] as String?,
  ),
);

Map<String, dynamic> _$FsErrorIOToJson(FsErrorIO instance) => <String, dynamic>{
  'exception': const ExceptionConverter().toJson(instance.exception),
  'stackTrace': const StackTraceConverter().toJson(instance.stackTrace),
};
