// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraPickerState {}

/// @nodoc
abstract class $CameraPickerStateCopyWith<$Res> {
  factory $CameraPickerStateCopyWith(
          CameraPickerState value, $Res Function(CameraPickerState) then) =
      _$CameraPickerStateCopyWithImpl<$Res, CameraPickerState>;
}

/// @nodoc
class _$CameraPickerStateCopyWithImpl<$Res, $Val extends CameraPickerState>
    implements $CameraPickerStateCopyWith<$Res> {
  _$CameraPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CameraPickerStateInitialImplCopyWith<$Res> {
  factory _$$CameraPickerStateInitialImplCopyWith(
          _$CameraPickerStateInitialImpl value,
          $Res Function(_$CameraPickerStateInitialImpl) then) =
      __$$CameraPickerStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraPickerStateInitialImplCopyWithImpl<$Res>
    extends _$CameraPickerStateCopyWithImpl<$Res,
        _$CameraPickerStateInitialImpl>
    implements _$$CameraPickerStateInitialImplCopyWith<$Res> {
  __$$CameraPickerStateInitialImplCopyWithImpl(
      _$CameraPickerStateInitialImpl _value,
      $Res Function(_$CameraPickerStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CameraPickerStateInitialImpl implements CameraPickerStateInitial {
  _$CameraPickerStateInitialImpl();

  @override
  String toString() {
    return 'CameraPickerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraPickerStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class CameraPickerStateInitial implements CameraPickerState {
  factory CameraPickerStateInitial() = _$CameraPickerStateInitialImpl;
}

/// @nodoc
abstract class _$$CameraPickerStateLoadedImplCopyWith<$Res> {
  factory _$$CameraPickerStateLoadedImplCopyWith(
          _$CameraPickerStateLoadedImpl value,
          $Res Function(_$CameraPickerStateLoadedImpl) then) =
      __$$CameraPickerStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFileImage image});
}

/// @nodoc
class __$$CameraPickerStateLoadedImplCopyWithImpl<$Res>
    extends _$CameraPickerStateCopyWithImpl<$Res, _$CameraPickerStateLoadedImpl>
    implements _$$CameraPickerStateLoadedImplCopyWith<$Res> {
  __$$CameraPickerStateLoadedImplCopyWithImpl(
      _$CameraPickerStateLoadedImpl _value,
      $Res Function(_$CameraPickerStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$CameraPickerStateLoadedImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFileImage,
    ));
  }
}

/// @nodoc

class _$CameraPickerStateLoadedImpl implements CameraPickerStateLoaded {
  _$CameraPickerStateLoadedImpl({required this.image});

  @override
  final XFileImage image;

  @override
  String toString() {
    return 'CameraPickerState.loaded(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraPickerStateLoadedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraPickerStateLoadedImplCopyWith<_$CameraPickerStateLoadedImpl>
      get copyWith => __$$CameraPickerStateLoadedImplCopyWithImpl<
          _$CameraPickerStateLoadedImpl>(this, _$identity);
}

abstract class CameraPickerStateLoaded implements CameraPickerState {
  factory CameraPickerStateLoaded({required final XFileImage image}) =
      _$CameraPickerStateLoadedImpl;

  XFileImage get image;

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraPickerStateLoadedImplCopyWith<_$CameraPickerStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraPickerStateAcceptedImplCopyWith<$Res> {
  factory _$$CameraPickerStateAcceptedImplCopyWith(
          _$CameraPickerStateAcceptedImpl value,
          $Res Function(_$CameraPickerStateAcceptedImpl) then) =
      __$$CameraPickerStateAcceptedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFileImage image, CameraPickerMetadata metadata});

  $CameraPickerMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$CameraPickerStateAcceptedImplCopyWithImpl<$Res>
    extends _$CameraPickerStateCopyWithImpl<$Res,
        _$CameraPickerStateAcceptedImpl>
    implements _$$CameraPickerStateAcceptedImplCopyWith<$Res> {
  __$$CameraPickerStateAcceptedImplCopyWithImpl(
      _$CameraPickerStateAcceptedImpl _value,
      $Res Function(_$CameraPickerStateAcceptedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? metadata = null,
  }) {
    return _then(_$CameraPickerStateAcceptedImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFileImage,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as CameraPickerMetadata,
    ));
  }

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CameraPickerMetadataCopyWith<$Res> get metadata {
    return $CameraPickerMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value));
    });
  }
}

/// @nodoc

class _$CameraPickerStateAcceptedImpl implements CameraPickerStateAccepted {
  _$CameraPickerStateAcceptedImpl(
      {required this.image, required this.metadata});

  @override
  final XFileImage image;
  @override
  final CameraPickerMetadata metadata;

  @override
  String toString() {
    return 'CameraPickerState.accepted(image: $image, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraPickerStateAcceptedImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, metadata);

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraPickerStateAcceptedImplCopyWith<_$CameraPickerStateAcceptedImpl>
      get copyWith => __$$CameraPickerStateAcceptedImplCopyWithImpl<
          _$CameraPickerStateAcceptedImpl>(this, _$identity);
}

abstract class CameraPickerStateAccepted implements CameraPickerState {
  factory CameraPickerStateAccepted(
          {required final XFileImage image,
          required final CameraPickerMetadata metadata}) =
      _$CameraPickerStateAcceptedImpl;

  XFileImage get image;
  CameraPickerMetadata get metadata;

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraPickerStateAcceptedImplCopyWith<_$CameraPickerStateAcceptedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraPickerStateRejectedImplCopyWith<$Res> {
  factory _$$CameraPickerStateRejectedImplCopyWith(
          _$CameraPickerStateRejectedImpl value,
          $Res Function(_$CameraPickerStateRejectedImpl) then) =
      __$$CameraPickerStateRejectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFileImage image});
}

/// @nodoc
class __$$CameraPickerStateRejectedImplCopyWithImpl<$Res>
    extends _$CameraPickerStateCopyWithImpl<$Res,
        _$CameraPickerStateRejectedImpl>
    implements _$$CameraPickerStateRejectedImplCopyWith<$Res> {
  __$$CameraPickerStateRejectedImplCopyWithImpl(
      _$CameraPickerStateRejectedImpl _value,
      $Res Function(_$CameraPickerStateRejectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$CameraPickerStateRejectedImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFileImage,
    ));
  }
}

/// @nodoc

class _$CameraPickerStateRejectedImpl implements CameraPickerStateRejected {
  _$CameraPickerStateRejectedImpl({required this.image});

  @override
  final XFileImage image;

  @override
  String toString() {
    return 'CameraPickerState.rejected(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraPickerStateRejectedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraPickerStateRejectedImplCopyWith<_$CameraPickerStateRejectedImpl>
      get copyWith => __$$CameraPickerStateRejectedImplCopyWithImpl<
          _$CameraPickerStateRejectedImpl>(this, _$identity);
}

abstract class CameraPickerStateRejected implements CameraPickerState {
  factory CameraPickerStateRejected({required final XFileImage image}) =
      _$CameraPickerStateRejectedImpl;

  XFileImage get image;

  /// Create a copy of CameraPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraPickerStateRejectedImplCopyWith<_$CameraPickerStateRejectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
