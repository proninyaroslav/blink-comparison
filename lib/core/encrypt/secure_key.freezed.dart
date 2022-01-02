// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'secure_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecureKey _$SecureKeyFromJson(Map<String, dynamic> json) {
  return SecureKeyPassword.fromJson(json);
}

/// @nodoc
class _$SecureKeyTearOff {
  const _$SecureKeyTearOff();

  SecureKeyPassword password(String value) {
    return SecureKeyPassword(
      value,
    );
  }

  SecureKey fromJson(Map<String, Object?> json) {
    return SecureKey.fromJson(json);
  }
}

/// @nodoc
const $SecureKey = _$SecureKeyTearOff();

/// @nodoc
mixin _$SecureKey {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecureKeyPassword value) password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureKeyPassword value)? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureKeyPassword value)? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecureKeyCopyWith<SecureKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureKeyCopyWith<$Res> {
  factory $SecureKeyCopyWith(SecureKey value, $Res Function(SecureKey) then) =
      _$SecureKeyCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SecureKeyCopyWithImpl<$Res> implements $SecureKeyCopyWith<$Res> {
  _$SecureKeyCopyWithImpl(this._value, this._then);

  final SecureKey _value;
  // ignore: unused_field
  final $Res Function(SecureKey) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SecureKeyPasswordCopyWith<$Res>
    implements $SecureKeyCopyWith<$Res> {
  factory $SecureKeyPasswordCopyWith(
          SecureKeyPassword value, $Res Function(SecureKeyPassword) then) =
      _$SecureKeyPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class _$SecureKeyPasswordCopyWithImpl<$Res>
    extends _$SecureKeyCopyWithImpl<$Res>
    implements $SecureKeyPasswordCopyWith<$Res> {
  _$SecureKeyPasswordCopyWithImpl(
      SecureKeyPassword _value, $Res Function(SecureKeyPassword) _then)
      : super(_value, (v) => _then(v as SecureKeyPassword));

  @override
  SecureKeyPassword get _value => super._value as SecureKeyPassword;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SecureKeyPassword(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecureKeyPassword
    with DiagnosticableTreeMixin
    implements SecureKeyPassword {
  const _$SecureKeyPassword(this.value);

  factory _$SecureKeyPassword.fromJson(Map<String, dynamic> json) =>
      _$$SecureKeyPasswordFromJson(json);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SecureKey.password(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SecureKey.password'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecureKeyPassword &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $SecureKeyPasswordCopyWith<SecureKeyPassword> get copyWith =>
      _$SecureKeyPasswordCopyWithImpl<SecureKeyPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) password,
  }) {
    return password(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? password,
  }) {
    return password?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? password,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecureKeyPassword value) password,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureKeyPassword value)? password,
  }) {
    return password?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureKeyPassword value)? password,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SecureKeyPasswordToJson(this);
  }
}

abstract class SecureKeyPassword implements SecureKey {
  const factory SecureKeyPassword(String value) = _$SecureKeyPassword;

  factory SecureKeyPassword.fromJson(Map<String, dynamic> json) =
      _$SecureKeyPassword.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  $SecureKeyPasswordCopyWith<SecureKeyPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
