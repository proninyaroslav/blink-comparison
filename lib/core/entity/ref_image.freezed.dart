// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ref_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefImageInfo _$RefImageInfoFromJson(Map<String, dynamic> json) {
  return _RefImageInfo.fromJson(json);
}

/// @nodoc
class _$RefImageInfoTearOff {
  const _$RefImageInfoTearOff();

  _RefImageInfo call(
      {required String id,
      @DateTimeEpochConverter() required DateTime dateAdded,
      required String encryptSalt}) {
    return _RefImageInfo(
      id: id,
      dateAdded: dateAdded,
      encryptSalt: encryptSalt,
    );
  }

  RefImageInfo fromJson(Map<String, Object?> json) {
    return RefImageInfo.fromJson(json);
  }
}

/// @nodoc
const $RefImageInfo = _$RefImageInfoTearOff();

/// @nodoc
mixin _$RefImageInfo {
  String get id => throw _privateConstructorUsedError;
  @DateTimeEpochConverter()
  DateTime get dateAdded =>
      throw _privateConstructorUsedError; // /// HEX-encoded salt.
  String get encryptSalt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefImageInfoCopyWith<RefImageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageInfoCopyWith<$Res> {
  factory $RefImageInfoCopyWith(
          RefImageInfo value, $Res Function(RefImageInfo) then) =
      _$RefImageInfoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @DateTimeEpochConverter() DateTime dateAdded,
      String encryptSalt});
}

/// @nodoc
class _$RefImageInfoCopyWithImpl<$Res> implements $RefImageInfoCopyWith<$Res> {
  _$RefImageInfoCopyWithImpl(this._value, this._then);

  final RefImageInfo _value;
  // ignore: unused_field
  final $Res Function(RefImageInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateAdded = freezed,
    Object? encryptSalt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      encryptSalt: encryptSalt == freezed
          ? _value.encryptSalt
          : encryptSalt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RefImageInfoCopyWith<$Res>
    implements $RefImageInfoCopyWith<$Res> {
  factory _$RefImageInfoCopyWith(
          _RefImageInfo value, $Res Function(_RefImageInfo) then) =
      __$RefImageInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @DateTimeEpochConverter() DateTime dateAdded,
      String encryptSalt});
}

/// @nodoc
class __$RefImageInfoCopyWithImpl<$Res> extends _$RefImageInfoCopyWithImpl<$Res>
    implements _$RefImageInfoCopyWith<$Res> {
  __$RefImageInfoCopyWithImpl(
      _RefImageInfo _value, $Res Function(_RefImageInfo) _then)
      : super(_value, (v) => _then(v as _RefImageInfo));

  @override
  _RefImageInfo get _value => super._value as _RefImageInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateAdded = freezed,
    Object? encryptSalt = freezed,
  }) {
    return _then(_RefImageInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: dateAdded == freezed
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      encryptSalt: encryptSalt == freezed
          ? _value.encryptSalt
          : encryptSalt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefImageInfo implements _RefImageInfo {
  const _$_RefImageInfo(
      {required this.id,
      @DateTimeEpochConverter() required this.dateAdded,
      required this.encryptSalt});

  factory _$_RefImageInfo.fromJson(Map<String, dynamic> json) =>
      _$$_RefImageInfoFromJson(json);

  @override
  final String id;
  @override
  @DateTimeEpochConverter()
  final DateTime dateAdded;
  @override // /// HEX-encoded salt.
  final String encryptSalt;

  @override
  String toString() {
    return 'RefImageInfo(id: $id, dateAdded: $dateAdded, encryptSalt: $encryptSalt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefImageInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.dateAdded, dateAdded) &&
            const DeepCollectionEquality()
                .equals(other.encryptSalt, encryptSalt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(dateAdded),
      const DeepCollectionEquality().hash(encryptSalt));

  @JsonKey(ignore: true)
  @override
  _$RefImageInfoCopyWith<_RefImageInfo> get copyWith =>
      __$RefImageInfoCopyWithImpl<_RefImageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefImageInfoToJson(this);
  }
}

abstract class _RefImageInfo implements RefImageInfo {
  const factory _RefImageInfo(
      {required String id,
      @DateTimeEpochConverter() required DateTime dateAdded,
      required String encryptSalt}) = _$_RefImageInfo;

  factory _RefImageInfo.fromJson(Map<String, dynamic> json) =
      _$_RefImageInfo.fromJson;

  @override
  String get id;
  @override
  @DateTimeEpochConverter()
  DateTime get dateAdded;
  @override // /// HEX-encoded salt.
  String get encryptSalt;
  @override
  @JsonKey(ignore: true)
  _$RefImageInfoCopyWith<_RefImageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RefImageTearOff {
  const _$RefImageTearOff();

  _RefImage call({required RefImageInfo info, required Uint8List bytes}) {
    return _RefImage(
      info: info,
      bytes: bytes,
    );
  }
}

/// @nodoc
const $RefImage = _$RefImageTearOff();

/// @nodoc
mixin _$RefImage {
  RefImageInfo get info => throw _privateConstructorUsedError;
  Uint8List get bytes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefImageCopyWith<RefImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageCopyWith<$Res> {
  factory $RefImageCopyWith(RefImage value, $Res Function(RefImage) then) =
      _$RefImageCopyWithImpl<$Res>;
  $Res call({RefImageInfo info, Uint8List bytes});

  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$RefImageCopyWithImpl<$Res> implements $RefImageCopyWith<$Res> {
  _$RefImageCopyWithImpl(this._value, this._then);

  final RefImage _value;
  // ignore: unused_field
  final $Res Function(RefImage) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  @override
  $RefImageInfoCopyWith<$Res> get info {
    return $RefImageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$RefImageCopyWith<$Res> implements $RefImageCopyWith<$Res> {
  factory _$RefImageCopyWith(_RefImage value, $Res Function(_RefImage) then) =
      __$RefImageCopyWithImpl<$Res>;
  @override
  $Res call({RefImageInfo info, Uint8List bytes});

  @override
  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$RefImageCopyWithImpl<$Res> extends _$RefImageCopyWithImpl<$Res>
    implements _$RefImageCopyWith<$Res> {
  __$RefImageCopyWithImpl(_RefImage _value, $Res Function(_RefImage) _then)
      : super(_value, (v) => _then(v as _RefImage));

  @override
  _RefImage get _value => super._value as _RefImage;

  @override
  $Res call({
    Object? info = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_RefImage(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_RefImage implements _RefImage {
  const _$_RefImage({required this.info, required this.bytes});

  @override
  final RefImageInfo info;
  @override
  final Uint8List bytes;

  @override
  String toString() {
    return 'RefImage(info: $info, bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefImage &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  _$RefImageCopyWith<_RefImage> get copyWith =>
      __$RefImageCopyWithImpl<_RefImage>(this, _$identity);
}

abstract class _RefImage implements RefImage {
  const factory _RefImage(
      {required RefImageInfo info, required Uint8List bytes}) = _$_RefImage;

  @override
  RefImageInfo get info;
  @override
  Uint8List get bytes;
  @override
  @JsonKey(ignore: true)
  _$RefImageCopyWith<_RefImage> get copyWith =>
      throw _privateConstructorUsedError;
}
