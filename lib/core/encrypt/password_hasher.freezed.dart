// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_hasher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SodiumHashInfo {
  SecureKey get password => throw _privateConstructorUsedError;
  Uint8List get salt => throw _privateConstructorUsedError;

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
  $Res call({SecureKey password, Uint8List salt});
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
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as SecureKey,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as Uint8List,
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
  $Res call({SecureKey password, Uint8List salt});
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
  }) {
    return _then(_$SodiumHashInfoDataImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as SecureKey,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$SodiumHashInfoDataImpl
    with DiagnosticableTreeMixin
    implements _SodiumHashInfoData {
  const _$SodiumHashInfoDataImpl({required this.password, required this.salt});

  @override
  final SecureKey password;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SodiumHashInfoDataImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.salt, salt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, password, const DeepCollectionEquality().hash(salt));

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
      {required final SecureKey password,
      required final Uint8List salt}) = _$SodiumHashInfoDataImpl;

  @override
  SecureKey get password;
  @override
  Uint8List get salt;

  /// Create a copy of _SodiumHashInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SodiumHashInfoDataImplCopyWith<_$SodiumHashInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
