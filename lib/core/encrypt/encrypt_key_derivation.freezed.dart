// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypt_key_derivation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SodiumHashInfo implements DiagnosticableTreeMixin {

 SecureKey get password; Uint8List get salt; int get keyLength;
/// Create a copy of _SodiumHashInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumHashInfoCopyWith<_SodiumHashInfo> get copyWith => __$SodiumHashInfoCopyWithImpl<_SodiumHashInfo>(this as _SodiumHashInfo, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', '_SodiumHashInfo'))
    ..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('salt', salt))..add(DiagnosticsProperty('keyLength', keyLength));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumHashInfo&&(identical(other.password, password) || other.password == password)&&const DeepCollectionEquality().equals(other.salt, salt)&&(identical(other.keyLength, keyLength) || other.keyLength == keyLength));
}


@override
int get hashCode => Object.hash(runtimeType,password,const DeepCollectionEquality().hash(salt),keyLength);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return '_SodiumHashInfo(password: $password, salt: $salt, keyLength: $keyLength)';
}


}

/// @nodoc
abstract mixin class _$SodiumHashInfoCopyWith<$Res>  {
  factory _$SodiumHashInfoCopyWith(_SodiumHashInfo value, $Res Function(_SodiumHashInfo) _then) = __$SodiumHashInfoCopyWithImpl;
@useResult
$Res call({
 SecureKey password, Uint8List salt, int keyLength
});




}
/// @nodoc
class __$SodiumHashInfoCopyWithImpl<$Res>
    implements _$SodiumHashInfoCopyWith<$Res> {
  __$SodiumHashInfoCopyWithImpl(this._self, this._then);

  final _SodiumHashInfo _self;
  final $Res Function(_SodiumHashInfo) _then;

/// Create a copy of _SodiumHashInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = null,Object? salt = null,Object? keyLength = null,}) {
  return _then(_self.copyWith(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as SecureKey,salt: null == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as Uint8List,keyLength: null == keyLength ? _self.keyLength : keyLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}



/// @nodoc


class _SodiumHashInfoData with DiagnosticableTreeMixin implements _SodiumHashInfo {
  const _SodiumHashInfoData({required this.password, required this.salt, required this.keyLength});
  

@override final  SecureKey password;
@override final  Uint8List salt;
@override final  int keyLength;

/// Create a copy of _SodiumHashInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SodiumHashInfoDataCopyWith<_SodiumHashInfoData> get copyWith => __$SodiumHashInfoDataCopyWithImpl<_SodiumHashInfoData>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', '_SodiumHashInfo'))
    ..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('salt', salt))..add(DiagnosticsProperty('keyLength', keyLength));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SodiumHashInfoData&&(identical(other.password, password) || other.password == password)&&const DeepCollectionEquality().equals(other.salt, salt)&&(identical(other.keyLength, keyLength) || other.keyLength == keyLength));
}


@override
int get hashCode => Object.hash(runtimeType,password,const DeepCollectionEquality().hash(salt),keyLength);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return '_SodiumHashInfo(password: $password, salt: $salt, keyLength: $keyLength)';
}


}

/// @nodoc
abstract mixin class _$SodiumHashInfoDataCopyWith<$Res> implements _$SodiumHashInfoCopyWith<$Res> {
  factory _$SodiumHashInfoDataCopyWith(_SodiumHashInfoData value, $Res Function(_SodiumHashInfoData) _then) = __$SodiumHashInfoDataCopyWithImpl;
@override @useResult
$Res call({
 SecureKey password, Uint8List salt, int keyLength
});




}
/// @nodoc
class __$SodiumHashInfoDataCopyWithImpl<$Res>
    implements _$SodiumHashInfoDataCopyWith<$Res> {
  __$SodiumHashInfoDataCopyWithImpl(this._self, this._then);

  final _SodiumHashInfoData _self;
  final $Res Function(_SodiumHashInfoData) _then;

/// Create a copy of _SodiumHashInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = null,Object? salt = null,Object? keyLength = null,}) {
  return _then(_SodiumHashInfoData(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as SecureKey,salt: null == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as Uint8List,keyLength: null == keyLength ? _self.keyLength : keyLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
