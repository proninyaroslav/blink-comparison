// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefImageInfo {

 String get id;@DateTimeEpochConverter() DateTime get dateAdded; RefImageEncryption get encryption; String? get label;
/// Create a copy of RefImageInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageInfoCopyWith<RefImageInfo> get copyWith => _$RefImageInfoCopyWithImpl<RefImageInfo>(this as RefImageInfo, _$identity);

  /// Serializes this RefImageInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.dateAdded, dateAdded) || other.dateAdded == dateAdded)&&(identical(other.encryption, encryption) || other.encryption == encryption)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dateAdded,encryption,label);

@override
String toString() {
  return 'RefImageInfo(id: $id, dateAdded: $dateAdded, encryption: $encryption, label: $label)';
}


}

/// @nodoc
abstract mixin class $RefImageInfoCopyWith<$Res>  {
  factory $RefImageInfoCopyWith(RefImageInfo value, $Res Function(RefImageInfo) _then) = _$RefImageInfoCopyWithImpl;
@useResult
$Res call({
 String id,@DateTimeEpochConverter() DateTime dateAdded, RefImageEncryption encryption, String? label
});


$RefImageEncryptionCopyWith<$Res> get encryption;

}
/// @nodoc
class _$RefImageInfoCopyWithImpl<$Res>
    implements $RefImageInfoCopyWith<$Res> {
  _$RefImageInfoCopyWithImpl(this._self, this._then);

  final RefImageInfo _self;
  final $Res Function(RefImageInfo) _then;

/// Create a copy of RefImageInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dateAdded = null,Object? encryption = null,Object? label = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dateAdded: null == dateAdded ? _self.dateAdded : dateAdded // ignore: cast_nullable_to_non_nullable
as DateTime,encryption: null == encryption ? _self.encryption : encryption // ignore: cast_nullable_to_non_nullable
as RefImageEncryption,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RefImageInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageEncryptionCopyWith<$Res> get encryption {
  
  return $RefImageEncryptionCopyWith<$Res>(_self.encryption, (value) {
    return _then(_self.copyWith(encryption: value));
  });
}
}



/// @nodoc
@JsonSerializable()

class _RefImageInfo implements RefImageInfo {
  const _RefImageInfo({required this.id, @DateTimeEpochConverter() required this.dateAdded, required this.encryption, this.label});
  factory _RefImageInfo.fromJson(Map<String, dynamic> json) => _$RefImageInfoFromJson(json);

@override final  String id;
@override@DateTimeEpochConverter() final  DateTime dateAdded;
@override final  RefImageEncryption encryption;
@override final  String? label;

/// Create a copy of RefImageInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefImageInfoCopyWith<_RefImageInfo> get copyWith => __$RefImageInfoCopyWithImpl<_RefImageInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefImageInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefImageInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.dateAdded, dateAdded) || other.dateAdded == dateAdded)&&(identical(other.encryption, encryption) || other.encryption == encryption)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dateAdded,encryption,label);

@override
String toString() {
  return 'RefImageInfo(id: $id, dateAdded: $dateAdded, encryption: $encryption, label: $label)';
}


}

/// @nodoc
abstract mixin class _$RefImageInfoCopyWith<$Res> implements $RefImageInfoCopyWith<$Res> {
  factory _$RefImageInfoCopyWith(_RefImageInfo value, $Res Function(_RefImageInfo) _then) = __$RefImageInfoCopyWithImpl;
@override @useResult
$Res call({
 String id,@DateTimeEpochConverter() DateTime dateAdded, RefImageEncryption encryption, String? label
});


@override $RefImageEncryptionCopyWith<$Res> get encryption;

}
/// @nodoc
class __$RefImageInfoCopyWithImpl<$Res>
    implements _$RefImageInfoCopyWith<$Res> {
  __$RefImageInfoCopyWithImpl(this._self, this._then);

  final _RefImageInfo _self;
  final $Res Function(_RefImageInfo) _then;

/// Create a copy of RefImageInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dateAdded = null,Object? encryption = null,Object? label = freezed,}) {
  return _then(_RefImageInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dateAdded: null == dateAdded ? _self.dateAdded : dateAdded // ignore: cast_nullable_to_non_nullable
as DateTime,encryption: null == encryption ? _self.encryption : encryption // ignore: cast_nullable_to_non_nullable
as RefImageEncryption,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RefImageInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageEncryptionCopyWith<$Res> get encryption {
  
  return $RefImageEncryptionCopyWith<$Res>(_self.encryption, (value) {
    return _then(_self.copyWith(encryption: value));
  });
}
}

/// @nodoc
mixin _$RefImage {

 RefImageInfo get info; Uint8List get bytes;
/// Create a copy of RefImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageCopyWith<RefImage> get copyWith => _$RefImageCopyWithImpl<RefImage>(this as RefImage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImage&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'RefImage(info: $info, bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $RefImageCopyWith<$Res>  {
  factory $RefImageCopyWith(RefImage value, $Res Function(RefImage) _then) = _$RefImageCopyWithImpl;
@useResult
$Res call({
 RefImageInfo info, Uint8List bytes
});


$RefImageInfoCopyWith<$Res> get info;

}
/// @nodoc
class _$RefImageCopyWithImpl<$Res>
    implements $RefImageCopyWith<$Res> {
  _$RefImageCopyWithImpl(this._self, this._then);

  final RefImage _self;
  final $Res Function(RefImage) _then;

/// Create a copy of RefImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? bytes = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RefImageInfo,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}
/// Create a copy of RefImage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageInfoCopyWith<$Res> get info {
  
  return $RefImageInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}



/// @nodoc


class _RefImage implements RefImage {
  const _RefImage({required this.info, required this.bytes});
  

@override final  RefImageInfo info;
@override final  Uint8List bytes;

/// Create a copy of RefImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefImageCopyWith<_RefImage> get copyWith => __$RefImageCopyWithImpl<_RefImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefImage&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(bytes));

@override
String toString() {
  return 'RefImage(info: $info, bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class _$RefImageCopyWith<$Res> implements $RefImageCopyWith<$Res> {
  factory _$RefImageCopyWith(_RefImage value, $Res Function(_RefImage) _then) = __$RefImageCopyWithImpl;
@override @useResult
$Res call({
 RefImageInfo info, Uint8List bytes
});


@override $RefImageInfoCopyWith<$Res> get info;

}
/// @nodoc
class __$RefImageCopyWithImpl<$Res>
    implements _$RefImageCopyWith<$Res> {
  __$RefImageCopyWithImpl(this._self, this._then);

  final _RefImage _self;
  final $Res Function(_RefImage) _then;

/// Create a copy of RefImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? bytes = null,}) {
  return _then(_RefImage(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as RefImageInfo,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}

/// Create a copy of RefImage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageInfoCopyWith<$Res> get info {
  
  return $RefImageInfoCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

RefImageEncryption _$RefImageEncryptionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'none':
          return RefImageEncryptionNone.fromJson(
            json
          );
                case 'password':
          return RefImageEncryptionPassword.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'RefImageEncryption',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$RefImageEncryption {



  /// Serializes this RefImageEncryption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageEncryption);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefImageEncryption()';
}


}

/// @nodoc
class $RefImageEncryptionCopyWith<$Res>  {
$RefImageEncryptionCopyWith(RefImageEncryption _, $Res Function(RefImageEncryption) __);
}



/// @nodoc
@JsonSerializable()

class RefImageEncryptionNone implements RefImageEncryption {
  const RefImageEncryptionNone({final  String? $type}): $type = $type ?? 'none';
  factory RefImageEncryptionNone.fromJson(Map<String, dynamic> json) => _$RefImageEncryptionNoneFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$RefImageEncryptionNoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageEncryptionNone);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RefImageEncryption.none()';
}


}




/// @nodoc
@JsonSerializable()

class RefImageEncryptionPassword implements RefImageEncryption {
  const RefImageEncryptionPassword({required this.encryptSalt, final  String? $type}): $type = $type ?? 'password';
  factory RefImageEncryptionPassword.fromJson(Map<String, dynamic> json) => _$RefImageEncryptionPasswordFromJson(json);

/// HEX-encoded salt.
 final  String encryptSalt;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of RefImageEncryption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageEncryptionPasswordCopyWith<RefImageEncryptionPassword> get copyWith => _$RefImageEncryptionPasswordCopyWithImpl<RefImageEncryptionPassword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefImageEncryptionPasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageEncryptionPassword&&(identical(other.encryptSalt, encryptSalt) || other.encryptSalt == encryptSalt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptSalt);

@override
String toString() {
  return 'RefImageEncryption.password(encryptSalt: $encryptSalt)';
}


}

/// @nodoc
abstract mixin class $RefImageEncryptionPasswordCopyWith<$Res> implements $RefImageEncryptionCopyWith<$Res> {
  factory $RefImageEncryptionPasswordCopyWith(RefImageEncryptionPassword value, $Res Function(RefImageEncryptionPassword) _then) = _$RefImageEncryptionPasswordCopyWithImpl;
@useResult
$Res call({
 String encryptSalt
});




}
/// @nodoc
class _$RefImageEncryptionPasswordCopyWithImpl<$Res>
    implements $RefImageEncryptionPasswordCopyWith<$Res> {
  _$RefImageEncryptionPasswordCopyWithImpl(this._self, this._then);

  final RefImageEncryptionPassword _self;
  final $Res Function(RefImageEncryptionPassword) _then;

/// Create a copy of RefImageEncryption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? encryptSalt = null,}) {
  return _then(RefImageEncryptionPassword(
encryptSalt: null == encryptSalt ? _self.encryptSalt : encryptSalt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
