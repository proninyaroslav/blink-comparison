// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageItemState {}

/// @nodoc
abstract class $ImageItemStateCopyWith<$Res> {
  factory $ImageItemStateCopyWith(
          ImageItemState value, $Res Function(ImageItemState) then) =
      _$ImageItemStateCopyWithImpl<$Res, ImageItemState>;
}

/// @nodoc
class _$ImageItemStateCopyWithImpl<$Res, $Val extends ImageItemState>
    implements $ImageItemStateCopyWith<$Res> {
  _$ImageItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ImageItemStateInitialImplCopyWith<$Res> {
  factory _$$ImageItemStateInitialImplCopyWith(
          _$ImageItemStateInitialImpl value,
          $Res Function(_$ImageItemStateInitialImpl) then) =
      __$$ImageItemStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageItemStateInitialImplCopyWithImpl<$Res>
    extends _$ImageItemStateCopyWithImpl<$Res, _$ImageItemStateInitialImpl>
    implements _$$ImageItemStateInitialImplCopyWith<$Res> {
  __$$ImageItemStateInitialImplCopyWithImpl(_$ImageItemStateInitialImpl _value,
      $Res Function(_$ImageItemStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ImageItemStateInitialImpl implements ImageItemStateInitial {
  _$ImageItemStateInitialImpl();

  @override
  String toString() {
    return 'ImageItemState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageItemStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ImageItemStateInitial implements ImageItemState {
  factory ImageItemStateInitial() = _$ImageItemStateInitialImpl;
}

/// @nodoc
abstract class _$$ImageItemStateLoadedImplCopyWith<$Res> {
  factory _$$ImageItemStateLoadedImplCopyWith(_$ImageItemStateLoadedImpl value,
          $Res Function(_$ImageItemStateLoadedImpl) then) =
      __$$ImageItemStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RefImageEntry image});

  $RefImageEntryCopyWith<$Res> get image;
}

/// @nodoc
class __$$ImageItemStateLoadedImplCopyWithImpl<$Res>
    extends _$ImageItemStateCopyWithImpl<$Res, _$ImageItemStateLoadedImpl>
    implements _$$ImageItemStateLoadedImplCopyWith<$Res> {
  __$$ImageItemStateLoadedImplCopyWithImpl(_$ImageItemStateLoadedImpl _value,
      $Res Function(_$ImageItemStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImageItemStateLoadedImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as RefImageEntry,
    ));
  }

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageEntryCopyWith<$Res> get image {
    return $RefImageEntryCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$ImageItemStateLoadedImpl implements ImageItemStateLoaded {
  _$ImageItemStateLoadedImpl({required this.image});

  @override
  final RefImageEntry image;

  @override
  String toString() {
    return 'ImageItemState.loaded(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageItemStateLoadedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageItemStateLoadedImplCopyWith<_$ImageItemStateLoadedImpl>
      get copyWith =>
          __$$ImageItemStateLoadedImplCopyWithImpl<_$ImageItemStateLoadedImpl>(
              this, _$identity);
}

abstract class ImageItemStateLoaded implements ImageItemState {
  factory ImageItemStateLoaded({required final RefImageEntry image}) =
      _$ImageItemStateLoadedImpl;

  RefImageEntry get image;

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageItemStateLoadedImplCopyWith<_$ImageItemStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageItemStateSavingImplCopyWith<$Res> {
  factory _$$ImageItemStateSavingImplCopyWith(_$ImageItemStateSavingImpl value,
          $Res Function(_$ImageItemStateSavingImpl) then) =
      __$$ImageItemStateSavingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RefImageEntry image});

  $RefImageEntryCopyWith<$Res> get image;
}

/// @nodoc
class __$$ImageItemStateSavingImplCopyWithImpl<$Res>
    extends _$ImageItemStateCopyWithImpl<$Res, _$ImageItemStateSavingImpl>
    implements _$$ImageItemStateSavingImplCopyWith<$Res> {
  __$$ImageItemStateSavingImplCopyWithImpl(_$ImageItemStateSavingImpl _value,
      $Res Function(_$ImageItemStateSavingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImageItemStateSavingImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as RefImageEntry,
    ));
  }

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageEntryCopyWith<$Res> get image {
    return $RefImageEntryCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$ImageItemStateSavingImpl implements ImageItemStateSaving {
  _$ImageItemStateSavingImpl({required this.image});

  @override
  final RefImageEntry image;

  @override
  String toString() {
    return 'ImageItemState.saving(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageItemStateSavingImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageItemStateSavingImplCopyWith<_$ImageItemStateSavingImpl>
      get copyWith =>
          __$$ImageItemStateSavingImplCopyWithImpl<_$ImageItemStateSavingImpl>(
              this, _$identity);
}

abstract class ImageItemStateSaving implements ImageItemState {
  factory ImageItemStateSaving({required final RefImageEntry image}) =
      _$ImageItemStateSavingImpl;

  RefImageEntry get image;

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageItemStateSavingImplCopyWith<_$ImageItemStateSavingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageItemStateSavedImplCopyWith<$Res> {
  factory _$$ImageItemStateSavedImplCopyWith(_$ImageItemStateSavedImpl value,
          $Res Function(_$ImageItemStateSavedImpl) then) =
      __$$ImageItemStateSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RefImageEntry image, SaveRefImageStatusError? error});

  $RefImageEntryCopyWith<$Res> get image;
  $SaveRefImageStatusErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ImageItemStateSavedImplCopyWithImpl<$Res>
    extends _$ImageItemStateCopyWithImpl<$Res, _$ImageItemStateSavedImpl>
    implements _$$ImageItemStateSavedImplCopyWith<$Res> {
  __$$ImageItemStateSavedImplCopyWithImpl(_$ImageItemStateSavedImpl _value,
      $Res Function(_$ImageItemStateSavedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? error = freezed,
  }) {
    return _then(_$ImageItemStateSavedImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as RefImageEntry,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveRefImageStatusError?,
    ));
  }

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageEntryCopyWith<$Res> get image {
    return $RefImageEntryCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaveRefImageStatusErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $SaveRefImageStatusErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ImageItemStateSavedImpl implements ImageItemStateSaved {
  _$ImageItemStateSavedImpl({required this.image, this.error});

  @override
  final RefImageEntry image;
  @override
  final SaveRefImageStatusError? error;

  @override
  String toString() {
    return 'ImageItemState.saved(image: $image, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageItemStateSavedImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, error);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageItemStateSavedImplCopyWith<_$ImageItemStateSavedImpl> get copyWith =>
      __$$ImageItemStateSavedImplCopyWithImpl<_$ImageItemStateSavedImpl>(
          this, _$identity);
}

abstract class ImageItemStateSaved implements ImageItemState {
  factory ImageItemStateSaved(
      {required final RefImageEntry image,
      final SaveRefImageStatusError? error}) = _$ImageItemStateSavedImpl;

  RefImageEntry get image;
  SaveRefImageStatusError? get error;

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageItemStateSavedImplCopyWith<_$ImageItemStateSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageItemStateLoadingFailedImplCopyWith<$Res> {
  factory _$$ImageItemStateLoadingFailedImplCopyWith(
          _$ImageItemStateLoadingFailedImpl value,
          $Res Function(_$ImageItemStateLoadingFailedImpl) then) =
      __$$ImageItemStateLoadingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ImageItemStateLoadingFailedImplCopyWithImpl<$Res>
    extends _$ImageItemStateCopyWithImpl<$Res,
        _$ImageItemStateLoadingFailedImpl>
    implements _$$ImageItemStateLoadingFailedImplCopyWith<$Res> {
  __$$ImageItemStateLoadingFailedImplCopyWithImpl(
      _$ImageItemStateLoadingFailedImpl _value,
      $Res Function(_$ImageItemStateLoadingFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ImageItemStateLoadingFailedImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError?,
    ));
  }

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $StorageErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ImageItemStateLoadingFailedImpl implements ImageItemStateLoadingFailed {
  const _$ImageItemStateLoadingFailedImpl({this.error});

  @override
  final StorageError? error;

  @override
  String toString() {
    return 'ImageItemState.loadingFailed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageItemStateLoadingFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageItemStateLoadingFailedImplCopyWith<_$ImageItemStateLoadingFailedImpl>
      get copyWith => __$$ImageItemStateLoadingFailedImplCopyWithImpl<
          _$ImageItemStateLoadingFailedImpl>(this, _$identity);
}

abstract class ImageItemStateLoadingFailed implements ImageItemState {
  const factory ImageItemStateLoadingFailed({final StorageError? error}) =
      _$ImageItemStateLoadingFailedImpl;

  StorageError? get error;

  /// Create a copy of ImageItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageItemStateLoadingFailedImplCopyWith<_$ImageItemStateLoadingFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
