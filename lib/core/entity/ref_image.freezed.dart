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

  /// HEX-encoded salt.
  String get encryptSalt => throw _privateConstructorUsedError;

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
      String encryptSalt});
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
    Object? encryptSalt = null,
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
      encryptSalt: null == encryptSalt
          ? _value.encryptSalt
          : encryptSalt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      String encryptSalt});
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
    Object? encryptSalt = null,
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
      encryptSalt: null == encryptSalt
          ? _value.encryptSalt
          : encryptSalt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefImageInfoImpl implements _RefImageInfo {
  const _$RefImageInfoImpl(
      {required this.id,
      @DateTimeEpochConverter() required this.dateAdded,
      required this.encryptSalt});

  factory _$RefImageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefImageInfoImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeEpochConverter()
  final DateTime dateAdded;

  /// HEX-encoded salt.
  @override
  final String encryptSalt;

  @override
  String toString() {
    return 'RefImageInfo(id: $id, dateAdded: $dateAdded, encryptSalt: $encryptSalt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.encryptSalt, encryptSalt) ||
                other.encryptSalt == encryptSalt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateAdded, encryptSalt);

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
      required final String encryptSalt}) = _$RefImageInfoImpl;

  factory _RefImageInfo.fromJson(Map<String, dynamic> json) =
      _$RefImageInfoImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeEpochConverter()
  DateTime get dateAdded;

  /// HEX-encoded salt.
  @override
  String get encryptSalt;

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
