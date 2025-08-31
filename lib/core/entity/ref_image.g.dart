// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ref_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefImageInfo _$RefImageInfoFromJson(Map<String, dynamic> json) =>
    _RefImageInfo(
      id: json['id'] as String,
      dateAdded: const DateTimeEpochConverter().fromJson(
        (json['dateAdded'] as num).toInt(),
      ),
      encryption: RefImageEncryption.fromJson(
        json['encryption'] as Map<String, dynamic>,
      ),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$RefImageInfoToJson(_RefImageInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateAdded': const DateTimeEpochConverter().toJson(instance.dateAdded),
      'encryption': instance.encryption.toJson(),
      'label': instance.label,
    };

RefImageEncryptionNone _$RefImageEncryptionNoneFromJson(
  Map<String, dynamic> json,
) => RefImageEncryptionNone($type: json['runtimeType'] as String?);

Map<String, dynamic> _$RefImageEncryptionNoneToJson(
  RefImageEncryptionNone instance,
) => <String, dynamic>{'runtimeType': instance.$type};

RefImageEncryptionPassword _$RefImageEncryptionPasswordFromJson(
  Map<String, dynamic> json,
) => RefImageEncryptionPassword(
  encryptSalt: json['encryptSalt'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$RefImageEncryptionPasswordToJson(
  RefImageEncryptionPassword instance,
) => <String, dynamic>{
  'encryptSalt': instance.encryptSalt,
  'runtimeType': instance.$type,
};
