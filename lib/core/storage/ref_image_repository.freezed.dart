// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefImageProps {
  XFile get file => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  /// Create a copy of RefImageProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefImagePropsCopyWith<RefImageProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImagePropsCopyWith<$Res> {
  factory $RefImagePropsCopyWith(
          RefImageProps value, $Res Function(RefImageProps) then) =
      _$RefImagePropsCopyWithImpl<$Res, RefImageProps>;
  @useResult
  $Res call({XFile file, String? label});
}

/// @nodoc
class _$RefImagePropsCopyWithImpl<$Res, $Val extends RefImageProps>
    implements $RefImagePropsCopyWith<$Res> {
  _$RefImagePropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImageProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefImagePropsImplCopyWith<$Res>
    implements $RefImagePropsCopyWith<$Res> {
  factory _$$RefImagePropsImplCopyWith(
          _$RefImagePropsImpl value, $Res Function(_$RefImagePropsImpl) then) =
      __$$RefImagePropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({XFile file, String? label});
}

/// @nodoc
class __$$RefImagePropsImplCopyWithImpl<$Res>
    extends _$RefImagePropsCopyWithImpl<$Res, _$RefImagePropsImpl>
    implements _$$RefImagePropsImplCopyWith<$Res> {
  __$$RefImagePropsImplCopyWithImpl(
      _$RefImagePropsImpl _value, $Res Function(_$RefImagePropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? label = freezed,
  }) {
    return _then(_$RefImagePropsImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RefImagePropsImpl implements _RefImageProps {
  const _$RefImagePropsImpl({required this.file, this.label});

  @override
  final XFile file;
  @override
  final String? label;

  @override
  String toString() {
    return 'RefImageProps(file: $file, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImagePropsImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, label);

  /// Create a copy of RefImageProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImagePropsImplCopyWith<_$RefImagePropsImpl> get copyWith =>
      __$$RefImagePropsImplCopyWithImpl<_$RefImagePropsImpl>(this, _$identity);
}

abstract class _RefImageProps implements RefImageProps {
  const factory _RefImageProps(
      {required final XFile file, final String? label}) = _$RefImagePropsImpl;

  @override
  XFile get file;
  @override
  String? get label;

  /// Create a copy of RefImageProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImagePropsImplCopyWith<_$RefImagePropsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
