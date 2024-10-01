// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefImageInfo _$RefImageInfoFromJson(Map<String, dynamic> json) {
  return _RefImageInfo.fromJson(json);
}

/// @nodoc
mixin _$RefImageInfo {
  String get id => throw _privateConstructorUsedError;
  @DateTimeEpochConverter()
  DateTime get dateAdded => throw _privateConstructorUsedError;
  RefImageEncryption get encryption => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this RefImageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefImageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefImageInfoCopyWith<RefImageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageInfoCopyWith<$Res> {
  factory $RefImageInfoCopyWith(
          RefImageInfo value, $Res Function(RefImageInfo) then) =
      _$RefImageInfoCopyWithImpl<$Res, RefImageInfo>;
  @useResult
  $Res call(
      {String id,
      @DateTimeEpochConverter() DateTime dateAdded,
      RefImageEncryption encryption,
      String? label});

  $RefImageEncryptionCopyWith<$Res> get encryption;
}

/// @nodoc
class _$RefImageInfoCopyWithImpl<$Res, $Val extends RefImageInfo>
    implements $RefImageInfoCopyWith<$Res> {
  _$RefImageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateAdded = null,
    Object? encryption = null,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      encryption: null == encryption
          ? _value.encryption
          : encryption // ignore: cast_nullable_to_non_nullable
              as RefImageEncryption,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RefImageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageEncryptionCopyWith<$Res> get encryption {
    return $RefImageEncryptionCopyWith<$Res>(_value.encryption, (value) {
      return _then(_value.copyWith(encryption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefImageInfoImplCopyWith<$Res>
    implements $RefImageInfoCopyWith<$Res> {
  factory _$$RefImageInfoImplCopyWith(
          _$RefImageInfoImpl value, $Res Function(_$RefImageInfoImpl) then) =
      __$$RefImageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeEpochConverter() DateTime dateAdded,
      RefImageEncryption encryption,
      String? label});

  @override
  $RefImageEncryptionCopyWith<$Res> get encryption;
}

/// @nodoc
class __$$RefImageInfoImplCopyWithImpl<$Res>
    extends _$RefImageInfoCopyWithImpl<$Res, _$RefImageInfoImpl>
    implements _$$RefImageInfoImplCopyWith<$Res> {
  __$$RefImageInfoImplCopyWithImpl(
      _$RefImageInfoImpl _value, $Res Function(_$RefImageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateAdded = null,
    Object? encryption = null,
    Object? label = freezed,
  }) {
    return _then(_$RefImageInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      encryption: null == encryption
          ? _value.encryption
          : encryption // ignore: cast_nullable_to_non_nullable
              as RefImageEncryption,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefImageInfoImpl implements _RefImageInfo {
  const _$RefImageInfoImpl(
      {required this.id,
      @DateTimeEpochConverter() required this.dateAdded,
      required this.encryption,
      this.label});

  factory _$RefImageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefImageInfoImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeEpochConverter()
  final DateTime dateAdded;
  @override
  final RefImageEncryption encryption;
  @override
  final String? label;

  @override
  String toString() {
    return 'RefImageInfo(id: $id, dateAdded: $dateAdded, encryption: $encryption, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.encryption, encryption) ||
                other.encryption == encryption) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dateAdded, encryption, label);

  /// Create a copy of RefImageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageInfoImplCopyWith<_$RefImageInfoImpl> get copyWith =>
      __$$RefImageInfoImplCopyWithImpl<_$RefImageInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefImageInfoImplToJson(
      this,
    );
  }
}

abstract class _RefImageInfo implements RefImageInfo {
  const factory _RefImageInfo(
      {required final String id,
      @DateTimeEpochConverter() required final DateTime dateAdded,
      required final RefImageEncryption encryption,
      final String? label}) = _$RefImageInfoImpl;

  factory _RefImageInfo.fromJson(Map<String, dynamic> json) =
      _$RefImageInfoImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeEpochConverter()
  DateTime get dateAdded;
  @override
  RefImageEncryption get encryption;
  @override
  String? get label;

  /// Create a copy of RefImageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageInfoImplCopyWith<_$RefImageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RefImage {
  RefImageInfo get info => throw _privateConstructorUsedError;
  Uint8List get bytes => throw _privateConstructorUsedError;

  /// Create a copy of RefImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefImageCopyWith<RefImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageCopyWith<$Res> {
  factory $RefImageCopyWith(RefImage value, $Res Function(RefImage) then) =
      _$RefImageCopyWithImpl<$Res, RefImage>;
  @useResult
  $Res call({RefImageInfo info, Uint8List bytes});

  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$RefImageCopyWithImpl<$Res, $Val extends RefImage>
    implements $RefImageCopyWith<$Res> {
  _$RefImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? bytes = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }

  /// Create a copy of RefImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageInfoCopyWith<$Res> get info {
    return $RefImageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefImageImplCopyWith<$Res>
    implements $RefImageCopyWith<$Res> {
  factory _$$RefImageImplCopyWith(
          _$RefImageImpl value, $Res Function(_$RefImageImpl) then) =
      __$$RefImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RefImageInfo info, Uint8List bytes});

  @override
  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$RefImageImplCopyWithImpl<$Res>
    extends _$RefImageCopyWithImpl<$Res, _$RefImageImpl>
    implements _$$RefImageImplCopyWith<$Res> {
  __$$RefImageImplCopyWithImpl(
      _$RefImageImpl _value, $Res Function(_$RefImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? bytes = null,
  }) {
    return _then(_$RefImageImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$RefImageImpl implements _RefImage {
  const _$RefImageImpl({required this.info, required this.bytes});

  @override
  final RefImageInfo info;
  @override
  final Uint8List bytes;

  @override
  String toString() {
    return 'RefImage(info: $info, bytes: $bytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(bytes));

  /// Create a copy of RefImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageImplCopyWith<_$RefImageImpl> get copyWith =>
      __$$RefImageImplCopyWithImpl<_$RefImageImpl>(this, _$identity);
}

abstract class _RefImage implements RefImage {
  const factory _RefImage(
      {required final RefImageInfo info,
      required final Uint8List bytes}) = _$RefImageImpl;

  @override
  RefImageInfo get info;
  @override
  Uint8List get bytes;

  /// Create a copy of RefImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageImplCopyWith<_$RefImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefImageEncryption _$RefImageEncryptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'none':
      return RefImageEncryptionNone.fromJson(json);
    case 'password':
      return RefImageEncryptionPassword.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RefImageEncryption',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RefImageEncryption {
  /// Serializes this RefImageEncryption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageEncryptionCopyWith<$Res> {
  factory $RefImageEncryptionCopyWith(
          RefImageEncryption value, $Res Function(RefImageEncryption) then) =
      _$RefImageEncryptionCopyWithImpl<$Res, RefImageEncryption>;
}

/// @nodoc
class _$RefImageEncryptionCopyWithImpl<$Res, $Val extends RefImageEncryption>
    implements $RefImageEncryptionCopyWith<$Res> {
  _$RefImageEncryptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImageEncryption
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RefImageEncryptionNoneImplCopyWith<$Res> {
  factory _$$RefImageEncryptionNoneImplCopyWith(
          _$RefImageEncryptionNoneImpl value,
          $Res Function(_$RefImageEncryptionNoneImpl) then) =
      __$$RefImageEncryptionNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefImageEncryptionNoneImplCopyWithImpl<$Res>
    extends _$RefImageEncryptionCopyWithImpl<$Res, _$RefImageEncryptionNoneImpl>
    implements _$$RefImageEncryptionNoneImplCopyWith<$Res> {
  __$$RefImageEncryptionNoneImplCopyWithImpl(
      _$RefImageEncryptionNoneImpl _value,
      $Res Function(_$RefImageEncryptionNoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageEncryption
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$RefImageEncryptionNoneImpl implements RefImageEncryptionNone {
  const _$RefImageEncryptionNoneImpl({final String? $type})
      : $type = $type ?? 'none';

  factory _$RefImageEncryptionNoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefImageEncryptionNoneImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RefImageEncryption.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageEncryptionNoneImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$RefImageEncryptionNoneImplToJson(
      this,
    );
  }
}

abstract class RefImageEncryptionNone implements RefImageEncryption {
  const factory RefImageEncryptionNone() = _$RefImageEncryptionNoneImpl;

  factory RefImageEncryptionNone.fromJson(Map<String, dynamic> json) =
      _$RefImageEncryptionNoneImpl.fromJson;
}

/// @nodoc
abstract class _$$RefImageEncryptionPasswordImplCopyWith<$Res> {
  factory _$$RefImageEncryptionPasswordImplCopyWith(
          _$RefImageEncryptionPasswordImpl value,
          $Res Function(_$RefImageEncryptionPasswordImpl) then) =
      __$$RefImageEncryptionPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String encryptSalt});
}

/// @nodoc
class __$$RefImageEncryptionPasswordImplCopyWithImpl<$Res>
    extends _$RefImageEncryptionCopyWithImpl<$Res,
        _$RefImageEncryptionPasswordImpl>
    implements _$$RefImageEncryptionPasswordImplCopyWith<$Res> {
  __$$RefImageEncryptionPasswordImplCopyWithImpl(
      _$RefImageEncryptionPasswordImpl _value,
      $Res Function(_$RefImageEncryptionPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageEncryption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptSalt = null,
  }) {
    return _then(_$RefImageEncryptionPasswordImpl(
      encryptSalt: null == encryptSalt
          ? _value.encryptSalt
          : encryptSalt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefImageEncryptionPasswordImpl implements RefImageEncryptionPassword {
  const _$RefImageEncryptionPasswordImpl(
      {required this.encryptSalt, final String? $type})
      : $type = $type ?? 'password';

  factory _$RefImageEncryptionPasswordImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RefImageEncryptionPasswordImplFromJson(json);

  /// HEX-encoded salt.
  @override
  final String encryptSalt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RefImageEncryption.password(encryptSalt: $encryptSalt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageEncryptionPasswordImpl &&
            (identical(other.encryptSalt, encryptSalt) ||
                other.encryptSalt == encryptSalt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, encryptSalt);

  /// Create a copy of RefImageEncryption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageEncryptionPasswordImplCopyWith<_$RefImageEncryptionPasswordImpl>
      get copyWith => __$$RefImageEncryptionPasswordImplCopyWithImpl<
          _$RefImageEncryptionPasswordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefImageEncryptionPasswordImplToJson(
      this,
    );
  }
}

abstract class RefImageEncryptionPassword implements RefImageEncryption {
  const factory RefImageEncryptionPassword(
      {required final String encryptSalt}) = _$RefImageEncryptionPasswordImpl;

  factory RefImageEncryptionPassword.fromJson(Map<String, dynamic> json) =
      _$RefImageEncryptionPasswordImpl.fromJson;

  /// HEX-encoded salt.
  String get encryptSalt;

  /// Create a copy of RefImageEncryption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageEncryptionPasswordImplCopyWith<_$RefImageEncryptionPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
