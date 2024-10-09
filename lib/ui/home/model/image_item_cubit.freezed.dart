// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BuildResult {}

/// @nodoc
abstract class _$BuildResultCopyWith<$Res> {
  factory _$BuildResultCopyWith(
          _BuildResult value, $Res Function(_BuildResult) then) =
      __$BuildResultCopyWithImpl<$Res, _BuildResult>;
}

/// @nodoc
class __$BuildResultCopyWithImpl<$Res, $Val extends _BuildResult>
    implements _$BuildResultCopyWith<$Res> {
  __$BuildResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BuildResulLoadedImplCopyWith<$Res> {
  factory _$$BuildResulLoadedImplCopyWith(_$BuildResulLoadedImpl value,
          $Res Function(_$BuildResulLoadedImpl) then) =
      __$$BuildResulLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RefImageEntry image, SaveRefImageStatus? status});

  $RefImageEntryCopyWith<$Res> get image;
  $SaveRefImageStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$BuildResulLoadedImplCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res, _$BuildResulLoadedImpl>
    implements _$$BuildResulLoadedImplCopyWith<$Res> {
  __$$BuildResulLoadedImplCopyWithImpl(_$BuildResulLoadedImpl _value,
      $Res Function(_$BuildResulLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? status = freezed,
  }) {
    return _then(_$BuildResulLoadedImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as RefImageEntry,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SaveRefImageStatus?,
    ));
  }

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageEntryCopyWith<$Res> get image {
    return $RefImageEntryCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaveRefImageStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $SaveRefImageStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$BuildResulLoadedImpl
    with DiagnosticableTreeMixin
    implements _BuildResulLoaded {
  const _$BuildResulLoadedImpl({required this.image, required this.status});

  @override
  final RefImageEntry image;
  @override
  final SaveRefImageStatus? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_BuildResult(image: $image, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_BuildResult'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildResulLoadedImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, status);

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildResulLoadedImplCopyWith<_$BuildResulLoadedImpl> get copyWith =>
      __$$BuildResulLoadedImplCopyWithImpl<_$BuildResulLoadedImpl>(
          this, _$identity);
}

abstract class _BuildResulLoaded implements _BuildResult {
  const factory _BuildResulLoaded(
      {required final RefImageEntry image,
      required final SaveRefImageStatus? status}) = _$BuildResulLoadedImpl;

  RefImageEntry get image;
  SaveRefImageStatus? get status;

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildResulLoadedImplCopyWith<_$BuildResulLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuildResultFailedImplCopyWith<$Res> {
  factory _$$BuildResultFailedImplCopyWith(_$BuildResultFailedImpl value,
          $Res Function(_$BuildResultFailedImpl) then) =
      __$$BuildResultFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$BuildResultFailedImplCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res, _$BuildResultFailedImpl>
    implements _$$BuildResultFailedImplCopyWith<$Res> {
  __$$BuildResultFailedImplCopyWithImpl(_$BuildResultFailedImpl _value,
      $Res Function(_$BuildResultFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BuildResultFailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$BuildResultFailedImpl
    with DiagnosticableTreeMixin
    implements _BuildResultFailed {
  const _$BuildResultFailedImpl({required this.error});

  @override
  final StorageError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_BuildResult.failed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', '_BuildResult.failed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildResultFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildResultFailedImplCopyWith<_$BuildResultFailedImpl> get copyWith =>
      __$$BuildResultFailedImplCopyWithImpl<_$BuildResultFailedImpl>(
          this, _$identity);
}

abstract class _BuildResultFailed implements _BuildResult {
  const factory _BuildResultFailed({required final StorageError error}) =
      _$BuildResultFailedImpl;

  StorageError get error;

  /// Create a copy of _BuildResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuildResultFailedImplCopyWith<_$BuildResultFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}