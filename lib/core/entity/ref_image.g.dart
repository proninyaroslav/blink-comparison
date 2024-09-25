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
      encryption: RefImageEncryption.fromJson(
          json['encryption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefImageInfoImplToJson(_$RefImageInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateAdded': const DateTimeEpochConverter().toJson(instance.dateAdded),
      'encryption': instance.encryption.toJson(),
    };

_$RefImageEncryptionNoneImpl _$$RefImageEncryptionNoneImplFromJson(
        Map<String, dynamic> json) =>
    _$RefImageEncryptionNoneImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RefImageEncryptionNoneImplToJson(
        _$RefImageEncryptionNoneImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$RefImageEncryptionPasswordImpl _$$RefImageEncryptionPasswordImplFromJson(
        Map<String, dynamic> json) =>
    _$RefImageEncryptionPasswordImpl(
      encryptSalt: json['encryptSalt'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RefImageEncryptionPasswordImplToJson(
        _$RefImageEncryptionPasswordImpl instance) =>
    <String, dynamic>{
      'encryptSalt': instance.encryptSalt,
      'runtimeType': instance.$type,
    };
