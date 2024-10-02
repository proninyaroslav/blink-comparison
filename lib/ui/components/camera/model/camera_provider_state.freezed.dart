// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraProviderState {}

/// @nodoc
abstract class $CameraProviderStateCopyWith<$Res> {
  factory $CameraProviderStateCopyWith(
          CameraProviderState value, $Res Function(CameraProviderState) then) =
      _$CameraProviderStateCopyWithImpl<$Res, CameraProviderState>;
}

/// @nodoc
class _$CameraProviderStateCopyWithImpl<$Res, $Val extends CameraProviderState>
    implements $CameraProviderStateCopyWith<$Res> {
  _$CameraProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CameraProviderStateInitialImplCopyWith<$Res> {
  factory _$$CameraProviderStateInitialImplCopyWith(
          _$CameraProviderStateInitialImpl value,
          $Res Function(_$CameraProviderStateInitialImpl) then) =
      __$$CameraProviderStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraProviderStateInitialImplCopyWithImpl<$Res>
    extends _$CameraProviderStateCopyWithImpl<$Res,
        _$CameraProviderStateInitialImpl>
    implements _$$CameraProviderStateInitialImplCopyWith<$Res> {
  __$$CameraProviderStateInitialImplCopyWithImpl(
      _$CameraProviderStateInitialImpl _value,
      $Res Function(_$CameraProviderStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CameraProviderStateInitialImpl implements CameraProviderStateInitial {
  const _$CameraProviderStateInitialImpl();

  @override
  String toString() {
    return 'CameraProviderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraProviderStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class CameraProviderStateInitial implements CameraProviderState {
  const factory CameraProviderStateInitial() = _$CameraProviderStateInitialImpl;
}

/// @nodoc
abstract class _$$CameraProviderStateLoadingImplCopyWith<$Res> {
  factory _$$CameraProviderStateLoadingImplCopyWith(
          _$CameraProviderStateLoadingImpl value,
          $Res Function(_$CameraProviderStateLoadingImpl) then) =
      __$$CameraProviderStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraProviderStateLoadingImplCopyWithImpl<$Res>
    extends _$CameraProviderStateCopyWithImpl<$Res,
        _$CameraProviderStateLoadingImpl>
    implements _$$CameraProviderStateLoadingImplCopyWith<$Res> {
  __$$CameraProviderStateLoadingImplCopyWithImpl(
      _$CameraProviderStateLoadingImpl _value,
      $Res Function(_$CameraProviderStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CameraProviderStateLoadingImpl implements CameraProviderStateLoading {
  const _$CameraProviderStateLoadingImpl();

  @override
  String toString() {
    return 'CameraProviderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraProviderStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class CameraProviderStateLoading implements CameraProviderState {
  const factory CameraProviderStateLoading() = _$CameraProviderStateLoadingImpl;
}

/// @nodoc
abstract class _$$CameraProviderStateLoadedImplCopyWith<$Res> {
  factory _$$CameraProviderStateLoadedImplCopyWith(
          _$CameraProviderStateLoadedImpl value,
          $Res Function(_$CameraProviderStateLoadedImpl) then) =
      __$$CameraProviderStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CameraDescription primaryCamera,
      List<CameraDescription> otherCameras,
      bool enableFlashByDefault,
      bool autofocus});
}

/// @nodoc
class __$$CameraProviderStateLoadedImplCopyWithImpl<$Res>
    extends _$CameraProviderStateCopyWithImpl<$Res,
        _$CameraProviderStateLoadedImpl>
    implements _$$CameraProviderStateLoadedImplCopyWith<$Res> {
  __$$CameraProviderStateLoadedImplCopyWithImpl(
      _$CameraProviderStateLoadedImpl _value,
      $Res Function(_$CameraProviderStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryCamera = null,
    Object? otherCameras = null,
    Object? enableFlashByDefault = null,
    Object? autofocus = null,
  }) {
    return _then(_$CameraProviderStateLoadedImpl(
      primaryCamera: null == primaryCamera
          ? _value.primaryCamera
          : primaryCamera // ignore: cast_nullable_to_non_nullable
              as CameraDescription,
      otherCameras: null == otherCameras
          ? _value._otherCameras
          : otherCameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      enableFlashByDefault: null == enableFlashByDefault
          ? _value.enableFlashByDefault
          : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      autofocus: null == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CameraProviderStateLoadedImpl implements CameraProviderStateLoaded {
  const _$CameraProviderStateLoadedImpl(
      {required this.primaryCamera,
      required final List<CameraDescription> otherCameras,
      required this.enableFlashByDefault,
      required this.autofocus})
      : _otherCameras = otherCameras;

  @override
  final CameraDescription primaryCamera;
  final List<CameraDescription> _otherCameras;
  @override
  List<CameraDescription> get otherCameras {
    if (_otherCameras is EqualUnmodifiableListView) return _otherCameras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherCameras);
  }

  @override
  final bool enableFlashByDefault;
  @override
  final bool autofocus;

  @override
  String toString() {
    return 'CameraProviderState.loaded(primaryCamera: $primaryCamera, otherCameras: $otherCameras, enableFlashByDefault: $enableFlashByDefault, autofocus: $autofocus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraProviderStateLoadedImpl &&
            (identical(other.primaryCamera, primaryCamera) ||
                other.primaryCamera == primaryCamera) &&
            const DeepCollectionEquality()
                .equals(other._otherCameras, _otherCameras) &&
            (identical(other.enableFlashByDefault, enableFlashByDefault) ||
                other.enableFlashByDefault == enableFlashByDefault) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      primaryCamera,
      const DeepCollectionEquality().hash(_otherCameras),
      enableFlashByDefault,
      autofocus);

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraProviderStateLoadedImplCopyWith<_$CameraProviderStateLoadedImpl>
      get copyWith => __$$CameraProviderStateLoadedImplCopyWithImpl<
          _$CameraProviderStateLoadedImpl>(this, _$identity);
}

abstract class CameraProviderStateLoaded implements CameraProviderState {
  const factory CameraProviderStateLoaded(
      {required final CameraDescription primaryCamera,
      required final List<CameraDescription> otherCameras,
      required final bool enableFlashByDefault,
      required final bool autofocus}) = _$CameraProviderStateLoadedImpl;

  CameraDescription get primaryCamera;
  List<CameraDescription> get otherCameras;
  bool get enableFlashByDefault;
  bool get autofocus;

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraProviderStateLoadedImplCopyWith<_$CameraProviderStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraProviderStateLoadFailedImplCopyWith<$Res> {
  factory _$$CameraProviderStateLoadFailedImplCopyWith(
          _$CameraProviderStateLoadFailedImpl value,
          $Res Function(_$CameraProviderStateLoadFailedImpl) then) =
      __$$CameraProviderStateLoadFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraException error, StackTrace? stackTrace});
}

/// @nodoc
class __$$CameraProviderStateLoadFailedImplCopyWithImpl<$Res>
    extends _$CameraProviderStateCopyWithImpl<$Res,
        _$CameraProviderStateLoadFailedImpl>
    implements _$$CameraProviderStateLoadFailedImplCopyWith<$Res> {
  __$$CameraProviderStateLoadFailedImplCopyWithImpl(
      _$CameraProviderStateLoadFailedImpl _value,
      $Res Function(_$CameraProviderStateLoadFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$CameraProviderStateLoadFailedImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CameraException,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$CameraProviderStateLoadFailedImpl
    implements CameraProviderStateLoadFailed {
  const _$CameraProviderStateLoadFailedImpl(
      {required this.error, this.stackTrace});

  @override
  final CameraException error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'CameraProviderState.loadFailed(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraProviderStateLoadFailedImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, stackTrace);

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraProviderStateLoadFailedImplCopyWith<
          _$CameraProviderStateLoadFailedImpl>
      get copyWith => __$$CameraProviderStateLoadFailedImplCopyWithImpl<
          _$CameraProviderStateLoadFailedImpl>(this, _$identity);
}

abstract class CameraProviderStateLoadFailed implements CameraProviderState {
  const factory CameraProviderStateLoadFailed(
      {required final CameraException error,
      final StackTrace? stackTrace}) = _$CameraProviderStateLoadFailedImpl;

  CameraException get error;
  StackTrace? get stackTrace;

  /// Create a copy of CameraProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraProviderStateLoadFailedImplCopyWith<
          _$CameraProviderStateLoadFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
