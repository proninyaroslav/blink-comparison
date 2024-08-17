// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_secure_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSecureKey _$AppSecureKeyFromJson(Map<String, dynamic> json) {
  return AppSecureKeyPassword.fromJson(json);
}

/// @nodoc
mixin _$AppSecureKey {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? password,
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
    required TResult Function(AppSecureKeyPassword value) password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppSecureKeyPassword value)? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppSecureKeyPassword value)? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AppSecureKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSecureKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSecureKeyCopyWith<AppSecureKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSecureKeyCopyWith<$Res> {
  factory $AppSecureKeyCopyWith(
          AppSecureKey value, $Res Function(AppSecureKey) then) =
      _$AppSecureKeyCopyWithImpl<$Res, AppSecureKey>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AppSecureKeyCopyWithImpl<$Res, $Val extends AppSecureKey>
    implements $AppSecureKeyCopyWith<$Res> {
  _$AppSecureKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSecureKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSecureKeyPasswordImplCopyWith<$Res>
    implements $AppSecureKeyCopyWith<$Res> {
  factory _$$AppSecureKeyPasswordImplCopyWith(_$AppSecureKeyPasswordImpl value,
          $Res Function(_$AppSecureKeyPasswordImpl) then) =
      __$$AppSecureKeyPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$AppSecureKeyPasswordImplCopyWithImpl<$Res>
    extends _$AppSecureKeyCopyWithImpl<$Res, _$AppSecureKeyPasswordImpl>
    implements _$$AppSecureKeyPasswordImplCopyWith<$Res> {
  __$$AppSecureKeyPasswordImplCopyWithImpl(_$AppSecureKeyPasswordImpl _value,
      $Res Function(_$AppSecureKeyPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSecureKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AppSecureKeyPasswordImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSecureKeyPasswordImpl
    with DiagnosticableTreeMixin
    implements AppSecureKeyPassword {
  const _$AppSecureKeyPasswordImpl(this.value);

  factory _$AppSecureKeyPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSecureKeyPasswordImplFromJson(json);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppSecureKey.password(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppSecureKey.password'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSecureKeyPasswordImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of AppSecureKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSecureKeyPasswordImplCopyWith<_$AppSecureKeyPasswordImpl>
      get copyWith =>
          __$$AppSecureKeyPasswordImplCopyWithImpl<_$AppSecureKeyPasswordImpl>(
              this, _$identity);

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
    TResult? Function(String value)? password,
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
    required TResult Function(AppSecureKeyPassword value) password,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppSecureKeyPassword value)? password,
  }) {
    return password?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppSecureKeyPassword value)? password,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSecureKeyPasswordImplToJson(
      this,
    );
  }
}

abstract class AppSecureKeyPassword implements AppSecureKey {
  const factory AppSecureKeyPassword(final String value) =
      _$AppSecureKeyPasswordImpl;

  factory AppSecureKeyPassword.fromJson(Map<String, dynamic> json) =
      _$AppSecureKeyPasswordImpl.fromJson;

  @override
  String get value;

  /// Create a copy of AppSecureKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSecureKeyPasswordImplCopyWith<_$AppSecureKeyPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
