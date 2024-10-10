// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blink_comparison_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlinkComparisonState {}

/// @nodoc
abstract class $BlinkComparisonStateCopyWith<$Res> {
  factory $BlinkComparisonStateCopyWith(BlinkComparisonState value,
          $Res Function(BlinkComparisonState) then) =
      _$BlinkComparisonStateCopyWithImpl<$Res, BlinkComparisonState>;
}

/// @nodoc
class _$BlinkComparisonStateCopyWithImpl<$Res,
        $Val extends BlinkComparisonState>
    implements $BlinkComparisonStateCopyWith<$Res> {
  _$BlinkComparisonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BlinkComparisonStateInitialImplCopyWith<$Res> {
  factory _$$BlinkComparisonStateInitialImplCopyWith(
          _$BlinkComparisonStateInitialImpl value,
          $Res Function(_$BlinkComparisonStateInitialImpl) then) =
      __$$BlinkComparisonStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlinkComparisonStateInitialImplCopyWithImpl<$Res>
    extends _$BlinkComparisonStateCopyWithImpl<$Res,
        _$BlinkComparisonStateInitialImpl>
    implements _$$BlinkComparisonStateInitialImplCopyWith<$Res> {
  __$$BlinkComparisonStateInitialImplCopyWithImpl(
      _$BlinkComparisonStateInitialImpl _value,
      $Res Function(_$BlinkComparisonStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlinkComparisonStateInitialImpl implements BlinkComparisonStateInitial {
  const _$BlinkComparisonStateInitialImpl();

  @override
  String toString() {
    return 'BlinkComparisonState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlinkComparisonStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class BlinkComparisonStateInitial implements BlinkComparisonState {
  const factory BlinkComparisonStateInitial() =
      _$BlinkComparisonStateInitialImpl;
}

/// @nodoc
abstract class _$$BlinkComparisonStateLoadedImplCopyWith<$Res> {
  factory _$$BlinkComparisonStateLoadedImplCopyWith(
          _$BlinkComparisonStateLoadedImpl value,
          $Res Function(_$BlinkComparisonStateLoadedImpl) then) =
      __$$BlinkComparisonStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageProvider<Object> refImage, XFileImage takenPhoto});
}

/// @nodoc
class __$$BlinkComparisonStateLoadedImplCopyWithImpl<$Res>
    extends _$BlinkComparisonStateCopyWithImpl<$Res,
        _$BlinkComparisonStateLoadedImpl>
    implements _$$BlinkComparisonStateLoadedImplCopyWith<$Res> {
  __$$BlinkComparisonStateLoadedImplCopyWithImpl(
      _$BlinkComparisonStateLoadedImpl _value,
      $Res Function(_$BlinkComparisonStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refImage = null,
    Object? takenPhoto = null,
  }) {
    return _then(_$BlinkComparisonStateLoadedImpl(
      refImage: null == refImage
          ? _value.refImage
          : refImage // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
      takenPhoto: null == takenPhoto
          ? _value.takenPhoto
          : takenPhoto // ignore: cast_nullable_to_non_nullable
              as XFileImage,
    ));
  }
}

/// @nodoc

class _$BlinkComparisonStateLoadedImpl implements BlinkComparisonStateLoaded {
  const _$BlinkComparisonStateLoadedImpl(
      {required this.refImage, required this.takenPhoto});

  @override
  final ImageProvider<Object> refImage;
  @override
  final XFileImage takenPhoto;

  @override
  String toString() {
    return 'BlinkComparisonState.loaded(refImage: $refImage, takenPhoto: $takenPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlinkComparisonStateLoadedImpl &&
            (identical(other.refImage, refImage) ||
                other.refImage == refImage) &&
            (identical(other.takenPhoto, takenPhoto) ||
                other.takenPhoto == takenPhoto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refImage, takenPhoto);

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlinkComparisonStateLoadedImplCopyWith<_$BlinkComparisonStateLoadedImpl>
      get copyWith => __$$BlinkComparisonStateLoadedImplCopyWithImpl<
          _$BlinkComparisonStateLoadedImpl>(this, _$identity);
}

abstract class BlinkComparisonStateLoaded implements BlinkComparisonState {
  const factory BlinkComparisonStateLoaded(
      {required final ImageProvider<Object> refImage,
      required final XFileImage takenPhoto}) = _$BlinkComparisonStateLoadedImpl;

  ImageProvider<Object> get refImage;
  XFileImage get takenPhoto;

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlinkComparisonStateLoadedImplCopyWith<_$BlinkComparisonStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlinkComparisonStateShowRefImageImplCopyWith<$Res> {
  factory _$$BlinkComparisonStateShowRefImageImplCopyWith(
          _$BlinkComparisonStateShowRefImageImpl value,
          $Res Function(_$BlinkComparisonStateShowRefImageImpl) then) =
      __$$BlinkComparisonStateShowRefImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageProvider<Object> refImage, XFileImage takenPhoto});
}

/// @nodoc
class __$$BlinkComparisonStateShowRefImageImplCopyWithImpl<$Res>
    extends _$BlinkComparisonStateCopyWithImpl<$Res,
        _$BlinkComparisonStateShowRefImageImpl>
    implements _$$BlinkComparisonStateShowRefImageImplCopyWith<$Res> {
  __$$BlinkComparisonStateShowRefImageImplCopyWithImpl(
      _$BlinkComparisonStateShowRefImageImpl _value,
      $Res Function(_$BlinkComparisonStateShowRefImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refImage = null,
    Object? takenPhoto = null,
  }) {
    return _then(_$BlinkComparisonStateShowRefImageImpl(
      refImage: null == refImage
          ? _value.refImage
          : refImage // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
      takenPhoto: null == takenPhoto
          ? _value.takenPhoto
          : takenPhoto // ignore: cast_nullable_to_non_nullable
              as XFileImage,
    ));
  }
}

/// @nodoc

class _$BlinkComparisonStateShowRefImageImpl
    implements BlinkComparisonStateShowRefImage {
  const _$BlinkComparisonStateShowRefImageImpl(
      {required this.refImage, required this.takenPhoto});

  @override
  final ImageProvider<Object> refImage;
  @override
  final XFileImage takenPhoto;

  @override
  String toString() {
    return 'BlinkComparisonState.showRefImage(refImage: $refImage, takenPhoto: $takenPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlinkComparisonStateShowRefImageImpl &&
            (identical(other.refImage, refImage) ||
                other.refImage == refImage) &&
            (identical(other.takenPhoto, takenPhoto) ||
                other.takenPhoto == takenPhoto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refImage, takenPhoto);

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlinkComparisonStateShowRefImageImplCopyWith<
          _$BlinkComparisonStateShowRefImageImpl>
      get copyWith => __$$BlinkComparisonStateShowRefImageImplCopyWithImpl<
          _$BlinkComparisonStateShowRefImageImpl>(this, _$identity);
}

abstract class BlinkComparisonStateShowRefImage
    implements BlinkComparisonState {
  const factory BlinkComparisonStateShowRefImage(
          {required final ImageProvider<Object> refImage,
          required final XFileImage takenPhoto}) =
      _$BlinkComparisonStateShowRefImageImpl;

  ImageProvider<Object> get refImage;
  XFileImage get takenPhoto;

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlinkComparisonStateShowRefImageImplCopyWith<
          _$BlinkComparisonStateShowRefImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlinkComparisonStateShowTakenPhotoImplCopyWith<$Res> {
  factory _$$BlinkComparisonStateShowTakenPhotoImplCopyWith(
          _$BlinkComparisonStateShowTakenPhotoImpl value,
          $Res Function(_$BlinkComparisonStateShowTakenPhotoImpl) then) =
      __$$BlinkComparisonStateShowTakenPhotoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageProvider<Object> refImage, XFileImage takenPhoto});
}

/// @nodoc
class __$$BlinkComparisonStateShowTakenPhotoImplCopyWithImpl<$Res>
    extends _$BlinkComparisonStateCopyWithImpl<$Res,
        _$BlinkComparisonStateShowTakenPhotoImpl>
    implements _$$BlinkComparisonStateShowTakenPhotoImplCopyWith<$Res> {
  __$$BlinkComparisonStateShowTakenPhotoImplCopyWithImpl(
      _$BlinkComparisonStateShowTakenPhotoImpl _value,
      $Res Function(_$BlinkComparisonStateShowTakenPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refImage = null,
    Object? takenPhoto = null,
  }) {
    return _then(_$BlinkComparisonStateShowTakenPhotoImpl(
      refImage: null == refImage
          ? _value.refImage
          : refImage // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
      takenPhoto: null == takenPhoto
          ? _value.takenPhoto
          : takenPhoto // ignore: cast_nullable_to_non_nullable
              as XFileImage,
    ));
  }
}

/// @nodoc

class _$BlinkComparisonStateShowTakenPhotoImpl
    implements BlinkComparisonStateShowTakenPhoto {
  const _$BlinkComparisonStateShowTakenPhotoImpl(
      {required this.refImage, required this.takenPhoto});

  @override
  final ImageProvider<Object> refImage;
  @override
  final XFileImage takenPhoto;

  @override
  String toString() {
    return 'BlinkComparisonState.showTakenPhoto(refImage: $refImage, takenPhoto: $takenPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlinkComparisonStateShowTakenPhotoImpl &&
            (identical(other.refImage, refImage) ||
                other.refImage == refImage) &&
            (identical(other.takenPhoto, takenPhoto) ||
                other.takenPhoto == takenPhoto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refImage, takenPhoto);

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlinkComparisonStateShowTakenPhotoImplCopyWith<
          _$BlinkComparisonStateShowTakenPhotoImpl>
      get copyWith => __$$BlinkComparisonStateShowTakenPhotoImplCopyWithImpl<
          _$BlinkComparisonStateShowTakenPhotoImpl>(this, _$identity);
}

abstract class BlinkComparisonStateShowTakenPhoto
    implements BlinkComparisonState {
  const factory BlinkComparisonStateShowTakenPhoto(
          {required final ImageProvider<Object> refImage,
          required final XFileImage takenPhoto}) =
      _$BlinkComparisonStateShowTakenPhotoImpl;

  ImageProvider<Object> get refImage;
  XFileImage get takenPhoto;

  /// Create a copy of BlinkComparisonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlinkComparisonStateShowTakenPhotoImplCopyWith<
          _$BlinkComparisonStateShowTakenPhotoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
