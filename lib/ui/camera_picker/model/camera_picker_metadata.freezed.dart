// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_picker_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraPickerMetadata {
  String? get label => throw _privateConstructorUsedError;

  /// Create a copy of CameraPickerMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CameraPickerMetadataCopyWith<CameraPickerMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraPickerMetadataCopyWith<$Res> {
  factory $CameraPickerMetadataCopyWith(CameraPickerMetadata value,
          $Res Function(CameraPickerMetadata) then) =
      _$CameraPickerMetadataCopyWithImpl<$Res, CameraPickerMetadata>;
  @useResult
  $Res call({String? label});
}

/// @nodoc
class _$CameraPickerMetadataCopyWithImpl<$Res,
        $Val extends CameraPickerMetadata>
    implements $CameraPickerMetadataCopyWith<$Res> {
  _$CameraPickerMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraPickerMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraPickerMetadataImplCopyWith<$Res>
    implements $CameraPickerMetadataCopyWith<$Res> {
  factory _$$CameraPickerMetadataImplCopyWith(_$CameraPickerMetadataImpl value,
          $Res Function(_$CameraPickerMetadataImpl) then) =
      __$$CameraPickerMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? label});
}

/// @nodoc
class __$$CameraPickerMetadataImplCopyWithImpl<$Res>
    extends _$CameraPickerMetadataCopyWithImpl<$Res, _$CameraPickerMetadataImpl>
    implements _$$CameraPickerMetadataImplCopyWith<$Res> {
  __$$CameraPickerMetadataImplCopyWithImpl(_$CameraPickerMetadataImpl _value,
      $Res Function(_$CameraPickerMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraPickerMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_$CameraPickerMetadataImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CameraPickerMetadataImpl implements _CameraPickerMetadata {
  _$CameraPickerMetadataImpl({this.label});

  @override
  final String? label;

  @override
  String toString() {
    return 'CameraPickerMetadata(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraPickerMetadataImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of CameraPickerMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraPickerMetadataImplCopyWith<_$CameraPickerMetadataImpl>
      get copyWith =>
          __$$CameraPickerMetadataImplCopyWithImpl<_$CameraPickerMetadataImpl>(
              this, _$identity);
}

abstract class _CameraPickerMetadata implements CameraPickerMetadata {
  factory _CameraPickerMetadata({final String? label}) =
      _$CameraPickerMetadataImpl;

  @override
  String? get label;

  /// Create a copy of CameraPickerMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraPickerMetadataImplCopyWith<_$CameraPickerMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
