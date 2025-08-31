// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_factor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
MutableAuthFactor _$MutableAuthFactorFromJson(
  Map<String, dynamic> json
) {
    return MutableAuthFactorPassword.fromJson(
      json
    );
}

/// @nodoc
mixin _$MutableAuthFactor {

@SecureKeyConverter() SecureKey get value;@SecureKeyConverter() set value(SecureKey value);@JsonKeyIgnore()@protected bool get isDisposed;@JsonKeyIgnore()@protected set isDisposed(bool value);

  /// Serializes this MutableAuthFactor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MutableAuthFactor&&(identical(other.value, value) || other.value == value)&&(identical(other.isDisposed, isDisposed) || other.isDisposed == isDisposed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,isDisposed);



}





/// @nodoc
@JsonSerializable()

class MutableAuthFactorPassword extends MutableAuthFactor {
   MutableAuthFactorPassword({@SecureKeyConverter() required this.value, @JsonKeyIgnore()@protected this.isDisposed = false}): super._();
  factory MutableAuthFactorPassword.fromJson(Map<String, dynamic> json) => _$MutableAuthFactorPasswordFromJson(json);

@override@SecureKeyConverter()  SecureKey value;
@override@JsonKeyIgnore()@protected  bool isDisposed;


@override
Map<String, dynamic> toJson() {
  return _$MutableAuthFactorPasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MutableAuthFactorPassword&&(identical(other.value, value) || other.value == value)&&(identical(other.isDisposed, isDisposed) || other.isDisposed == isDisposed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,isDisposed);



}




// dart format on
