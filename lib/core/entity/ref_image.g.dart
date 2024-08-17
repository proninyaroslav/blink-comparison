// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ref_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefImageInfoImpl _$$RefImageInfoImplFromJson(Map<String, dynamic> json) =>
    _$RefImageInfoImpl(
      id: json['id'] as String,
      dateAdded: const DateTimeEpochConverter()
          .fromJson((json['dateAdded'] as num).toInt()),
      encryptSalt: json['encryptSalt'] as String,
    );

Map<String, dynamic> _$$RefImageInfoImplToJson(_$RefImageInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateAdded': const DateTimeEpochConverter().toJson(instance.dateAdded),
      'encryptSalt': instance.encryptSalt,
    };
