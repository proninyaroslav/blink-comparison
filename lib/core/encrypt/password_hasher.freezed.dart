// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_hasher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$_SodiumHashInfoTearOff {
  const _$_SodiumHashInfoTearOff();

  _SodiumHashInfoData call(
      {required String password, required Uint8List salt}) {
    return _SodiumHashInfoData(
      password: password,
      salt: salt,
    );
  }
}

/// @nodoc
const _$SodiumHashInfo = _$_SodiumHashInfoTearOff();

/// @nodoc
mixin _$_SodiumHashInfo {
  String get password => throw _privateConstructorUsedError;
  Uint8List get salt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$SodiumHashInfoCopyWith<_SodiumHashInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SodiumHashInfoCopyWith<$Res> {
  factory _$SodiumHashInfoCopyWith(
          _SodiumHashInfo value, $Res Function(_SodiumHashInfo) then) =
      __$SodiumHashInfoCopyWithImpl<$Res>;
  $Res call({String password, Uint8List salt});
}

/// @nodoc
class __$SodiumHashInfoCopyWithImpl<$Res>
    implements _$SodiumHashInfoCopyWith<$Res> {
  __$SodiumHashInfoCopyWithImpl(this._value, this._then);

  final _SodiumHashInfo _value;
  // ignore: unused_field
  final $Res Function(_SodiumHashInfo) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? salt = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$SodiumHashInfoDataCopyWith<$Res>
    implements _$SodiumHashInfoCopyWith<$Res> {
  factory _$SodiumHashInfoDataCopyWith(
          _SodiumHashInfoData value, $Res Function(_SodiumHashInfoData) then) =
      __$SodiumHashInfoDataCopyWithImpl<$Res>;
  @override
  $Res call({String password, Uint8List salt});
}

/// @nodoc
class __$SodiumHashInfoDataCopyWithImpl<$Res>
    extends __$SodiumHashInfoCopyWithImpl<$Res>
    implements _$SodiumHashInfoDataCopyWith<$Res> {
  __$SodiumHashInfoDataCopyWithImpl(
      _SodiumHashInfoData _value, $Res Function(_SodiumHashInfoData) _then)
      : super(_value, (v) => _then(v as _SodiumHashInfoData));

  @override
  _SodiumHashInfoData get _value => super._value as _SodiumHashInfoData;

  @override
  $Res call({
    Object? password = freezed,
    Object? salt = freezed,
  }) {
    return _then(_SodiumHashInfoData(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_SodiumHashInfoData
    with DiagnosticableTreeMixin
    implements _SodiumHashInfoData {
  const _$_SodiumHashInfoData({required this.password, required this.salt});

  @override
  final String password;
  @override
  final Uint8List salt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_SodiumHashInfo(password: $password, salt: $salt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_SodiumHashInfo'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('salt', salt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SodiumHashInfoData &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.salt, salt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(salt));

  @JsonKey(ignore: true)
  @override
  _$SodiumHashInfoDataCopyWith<_SodiumHashInfoData> get copyWith =>
      __$SodiumHashInfoDataCopyWithImpl<_SodiumHashInfoData>(this, _$identity);
}

abstract class _SodiumHashInfoData implements _SodiumHashInfo {
  const factory _SodiumHashInfoData(
      {required String password,
      required Uint8List salt}) = _$_SodiumHashInfoData;

  @override
  String get password;
  @override
  Uint8List get salt;
  @override
  @JsonKey(ignore: true)
  _$SodiumHashInfoDataCopyWith<_SodiumHashInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}
