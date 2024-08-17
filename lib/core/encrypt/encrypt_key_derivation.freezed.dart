// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypt_key_derivation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SodiumHashInfo {
  String get password => throw _privateConstructorUsedError;
  Uint8List get salt => throw _privateConstructorUsedError;
  int get keyLength => throw _privateConstructorUsedError;

  /// Create a copy of _SodiumHashInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$SodiumHashInfoCopyWith<_SodiumHashInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SodiumHashInfoCopyWith<$Res> {
  factory _$SodiumHashInfoCopyWith(
          _SodiumHashInfo value, $Res Function(_SodiumHashInfo) then) =
      __$SodiumHashInfoCopyWithImpl<$Res, _SodiumHashInfo>;
  @useResult
  $Res call({String password, Uint8List salt, int keyLength});
}

/// @nodoc
class __$SodiumHashInfoCopyWithImpl<$Res, $Val extends _SodiumHashInfo>
    implements _$SodiumHashInfoCopyWith<$Res> {
  __$SodiumHashInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _SodiumHashInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? salt = null,
    Object? keyLength = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      keyLength: null == keyLength
          ? _value.keyLength
          : keyLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SodiumHashInfoDataImplCopyWith<$Res>
    implements _$SodiumHashInfoCopyWith<$Res> {
  factory _$$SodiumHashInfoDataImplCopyWith(_$SodiumHashInfoDataImpl value,
          $Res Function(_$SodiumHashInfoDataImpl) then) =
      __$$SodiumHashInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, Uint8List salt, int keyLength});
}

/// @nodoc
class __$$SodiumHashInfoDataImplCopyWithImpl<$Res>
    extends __$SodiumHashInfoCopyWithImpl<$Res, _$SodiumHashInfoDataImpl>
    implements _$$SodiumHashInfoDataImplCopyWith<$Res> {
  __$$SodiumHashInfoDataImplCopyWithImpl(_$SodiumHashInfoDataImpl _value,
      $Res Function(_$SodiumHashInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of _SodiumHashInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? salt = null,
    Object? keyLength = null,
  }) {
    return _then(_$SodiumHashInfoDataImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      keyLength: null == keyLength
          ? _value.keyLength
          : keyLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SodiumHashInfoDataImpl
    with DiagnosticableTreeMixin
    implements _SodiumHashInfoData {
  const _$SodiumHashInfoDataImpl(
      {required this.password, required this.salt, required this.keyLength});

  @override
  final String password;
  @override
  final Uint8List salt;
  @override
  final int keyLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_SodiumHashInfo(password: $password, salt: $salt, keyLength: $keyLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_SodiumHashInfo'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('salt', salt))
      ..add(DiagnosticsProperty('keyLength', keyLength));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SodiumHashInfoDataImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.salt, salt) &&
            (identical(other.keyLength, keyLength) ||
                other.keyLength == keyLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password,
      const DeepCollectionEquality().hash(salt), keyLength);

  /// Create a copy of _SodiumHashInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SodiumHashInfoDataImplCopyWith<_$SodiumHashInfoDataImpl> get copyWith =>
      __$$SodiumHashInfoDataImplCopyWithImpl<_$SodiumHashInfoDataImpl>(
          this, _$identity);
}

abstract class _SodiumHashInfoData implements _SodiumHashInfo {
  const factory _SodiumHashInfoData(
      {required final String password,
      required final Uint8List salt,
      required final int keyLength}) = _$SodiumHashInfoDataImpl;

  @override
  String get password;
  @override
  Uint8List get salt;
  @override
  int get keyLength;

  /// Create a copy of _SodiumHashInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SodiumHashInfoDataImplCopyWith<_$SodiumHashInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
