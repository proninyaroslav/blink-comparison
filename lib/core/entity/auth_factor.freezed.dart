// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_factor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MutableAuthFactor _$MutableAuthFactorFromJson(Map<String, dynamic> json) {
  return MutableAuthFactorPassword.fromJson(json);
}

/// @nodoc
mixin _$MutableAuthFactor {
  @SecureKeyConverter()
  SecureKey get value => throw _privateConstructorUsedError;
  @SecureKeyConverter()
  set value(SecureKey value) => throw _privateConstructorUsedError;
  @JsonKeyIgnore()
  @protected
  bool get isDisposed => throw _privateConstructorUsedError;
  @JsonKeyIgnore()
  @protected
  set isDisposed(bool value) => throw _privateConstructorUsedError;

  /// Serializes this MutableAuthFactor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$MutableAuthFactorPasswordImpl extends MutableAuthFactorPassword {
  _$MutableAuthFactorPasswordImpl(
      {@SecureKeyConverter() required this.value,
      @JsonKeyIgnore() @protected this.isDisposed = false})
      : super._();

  factory _$MutableAuthFactorPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$MutableAuthFactorPasswordImplFromJson(json);

  @override
  @SecureKeyConverter()
  SecureKey value;
  @override
  @JsonKeyIgnore()
  @protected
  bool isDisposed;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutableAuthFactorPasswordImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isDisposed, isDisposed) ||
                other.isDisposed == isDisposed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, isDisposed);

  @override
  Map<String, dynamic> toJson() {
    return _$$MutableAuthFactorPasswordImplToJson(
      this,
    );
  }
}

abstract class MutableAuthFactorPassword extends MutableAuthFactor {
  factory MutableAuthFactorPassword(
          {@SecureKeyConverter() required SecureKey value,
          @JsonKeyIgnore() @protected bool isDisposed}) =
      _$MutableAuthFactorPasswordImpl;
  MutableAuthFactorPassword._() : super._();

  factory MutableAuthFactorPassword.fromJson(Map<String, dynamic> json) =
      _$MutableAuthFactorPasswordImpl.fromJson;

  @override
  @SecureKeyConverter()
  SecureKey get value;
  @SecureKeyConverter()
  set value(SecureKey value);
  @override
  @JsonKeyIgnore()
  @protected
  bool get isDisposed;
  @JsonKeyIgnore()
  @protected
  set isDisposed(bool value);
}
