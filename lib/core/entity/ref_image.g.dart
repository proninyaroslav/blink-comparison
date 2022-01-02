// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ref_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefImageInfo _$$_RefImageInfoFromJson(Map<String, dynamic> json) =>
    _$_RefImageInfo(
      id: json['id'] as String,
      dateAdded:
          const DateTimeEpochConverter().fromJson(json['dateAdded'] as int),
      encryptSalt: json['encryptSalt'] as String,
    );

Map<String, dynamic> _$$_RefImageInfoToJson(_$_RefImageInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateAdded': const DateTimeEpochConverter().toJson(instance.dateAdded),
      'encryptSalt': instance.encryptSalt,
    };
