// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_provider_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CameraProviderStateTearOff {
  const _$CameraProviderStateTearOff();

  CameraProviderStateInitial initial() {
    return const CameraProviderStateInitial();
  }

  CameraProviderStateLoading loading() {
    return const CameraProviderStateLoading();
  }

  CameraProviderStateLoaded loaded(
      {required CameraDescription primaryCamera,
      required List<CameraDescription> otherCameras,
      required bool enableFlashByDefault}) {
    return CameraProviderStateLoaded(
      primaryCamera: primaryCamera,
      otherCameras: otherCameras,
      enableFlashByDefault: enableFlashByDefault,
    );
  }

  CameraProviderStateLoadFailed loadFailed(
      {required CameraException error, StackTrace? stackTrace}) {
    return CameraProviderStateLoadFailed(
      error: error,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $CameraProviderState = _$CameraProviderStateTearOff();

/// @nodoc
mixin _$CameraProviderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)
        loaded,
    required TResult Function(CameraException error, StackTrace? stackTrace)
        loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraProviderStateInitial value) initial,
    required TResult Function(CameraProviderStateLoading value) loading,
    required TResult Function(CameraProviderStateLoaded value) loaded,
    required TResult Function(CameraProviderStateLoadFailed value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraProviderStateCopyWith<$Res> {
  factory $CameraProviderStateCopyWith(
          CameraProviderState value, $Res Function(CameraProviderState) then) =
      _$CameraProviderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraProviderStateCopyWithImpl<$Res>
    implements $CameraProviderStateCopyWith<$Res> {
  _$CameraProviderStateCopyWithImpl(this._value, this._then);

  final CameraProviderState _value;
  // ignore: unused_field
  final $Res Function(CameraProviderState) _then;
}

/// @nodoc
abstract class $CameraProviderStateInitialCopyWith<$Res> {
  factory $CameraProviderStateInitialCopyWith(CameraProviderStateInitial value,
          $Res Function(CameraProviderStateInitial) then) =
      _$CameraProviderStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraProviderStateInitialCopyWithImpl<$Res>
    extends _$CameraProviderStateCopyWithImpl<$Res>
    implements $CameraProviderStateInitialCopyWith<$Res> {
  _$CameraProviderStateInitialCopyWithImpl(CameraProviderStateInitial _value,
      $Res Function(CameraProviderStateInitial) _then)
      : super(_value, (v) => _then(v as CameraProviderStateInitial));

  @override
  CameraProviderStateInitial get _value =>
      super._value as CameraProviderStateInitial;
}

/// @nodoc

class _$CameraProviderStateInitial implements CameraProviderStateInitial {
  const _$CameraProviderStateInitial();

  @override
  String toString() {
    return 'CameraProviderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraProviderStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)
        loaded,
    required TResult Function(CameraException error, StackTrace? stackTrace)
        loadFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraProviderStateInitial value) initial,
    required TResult Function(CameraProviderStateLoading value) loading,
    required TResult Function(CameraProviderStateLoaded value) loaded,
    required TResult Function(CameraProviderStateLoadFailed value) loadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CameraProviderStateInitial implements CameraProviderState {
  const factory CameraProviderStateInitial() = _$CameraProviderStateInitial;
}

/// @nodoc
abstract class $CameraProviderStateLoadingCopyWith<$Res> {
  factory $CameraProviderStateLoadingCopyWith(CameraProviderStateLoading value,
          $Res Function(CameraProviderStateLoading) then) =
      _$CameraProviderStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraProviderStateLoadingCopyWithImpl<$Res>
    extends _$CameraProviderStateCopyWithImpl<$Res>
    implements $CameraProviderStateLoadingCopyWith<$Res> {
  _$CameraProviderStateLoadingCopyWithImpl(CameraProviderStateLoading _value,
      $Res Function(CameraProviderStateLoading) _then)
      : super(_value, (v) => _then(v as CameraProviderStateLoading));

  @override
  CameraProviderStateLoading get _value =>
      super._value as CameraProviderStateLoading;
}

/// @nodoc

class _$CameraProviderStateLoading implements CameraProviderStateLoading {
  const _$CameraProviderStateLoading();

  @override
  String toString() {
    return 'CameraProviderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraProviderStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)
        loaded,
    required TResult Function(CameraException error, StackTrace? stackTrace)
        loadFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraProviderStateInitial value) initial,
    required TResult Function(CameraProviderStateLoading value) loading,
    required TResult Function(CameraProviderStateLoaded value) loaded,
    required TResult Function(CameraProviderStateLoadFailed value) loadFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CameraProviderStateLoading implements CameraProviderState {
  const factory CameraProviderStateLoading() = _$CameraProviderStateLoading;
}

/// @nodoc
abstract class $CameraProviderStateLoadedCopyWith<$Res> {
  factory $CameraProviderStateLoadedCopyWith(CameraProviderStateLoaded value,
          $Res Function(CameraProviderStateLoaded) then) =
      _$CameraProviderStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {CameraDescription primaryCamera,
      List<CameraDescription> otherCameras,
      bool enableFlashByDefault});
}

/// @nodoc
class _$CameraProviderStateLoadedCopyWithImpl<$Res>
    extends _$CameraProviderStateCopyWithImpl<$Res>
    implements $CameraProviderStateLoadedCopyWith<$Res> {
  _$CameraProviderStateLoadedCopyWithImpl(CameraProviderStateLoaded _value,
      $Res Function(CameraProviderStateLoaded) _then)
      : super(_value, (v) => _then(v as CameraProviderStateLoaded));

  @override
  CameraProviderStateLoaded get _value =>
      super._value as CameraProviderStateLoaded;

  @override
  $Res call({
    Object? primaryCamera = freezed,
    Object? otherCameras = freezed,
    Object? enableFlashByDefault = freezed,
  }) {
    return _then(CameraProviderStateLoaded(
      primaryCamera: primaryCamera == freezed
          ? _value.primaryCamera
          : primaryCamera // ignore: cast_nullable_to_non_nullable
              as CameraDescription,
      otherCameras: otherCameras == freezed
          ? _value.otherCameras
          : otherCameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
      enableFlashByDefault: enableFlashByDefault == freezed
          ? _value.enableFlashByDefault
          : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CameraProviderStateLoaded implements CameraProviderStateLoaded {
  const _$CameraProviderStateLoaded(
      {required this.primaryCamera,
      required this.otherCameras,
      required this.enableFlashByDefault});

  @override
  final CameraDescription primaryCamera;
  @override
  final List<CameraDescription> otherCameras;
  @override
  final bool enableFlashByDefault;

  @override
  String toString() {
    return 'CameraProviderState.loaded(primaryCamera: $primaryCamera, otherCameras: $otherCameras, enableFlashByDefault: $enableFlashByDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraProviderStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.primaryCamera, primaryCamera) &&
            const DeepCollectionEquality()
                .equals(other.otherCameras, otherCameras) &&
            const DeepCollectionEquality()
                .equals(other.enableFlashByDefault, enableFlashByDefault));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(primaryCamera),
      const DeepCollectionEquality().hash(otherCameras),
      const DeepCollectionEquality().hash(enableFlashByDefault));

  @JsonKey(ignore: true)
  @override
  $CameraProviderStateLoadedCopyWith<CameraProviderStateLoaded> get copyWith =>
      _$CameraProviderStateLoadedCopyWithImpl<CameraProviderStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)
        loaded,
    required TResult Function(CameraException error, StackTrace? stackTrace)
        loadFailed,
  }) {
    return loaded(primaryCamera, otherCameras, enableFlashByDefault);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
  }) {
    return loaded?.call(primaryCamera, otherCameras, enableFlashByDefault);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(primaryCamera, otherCameras, enableFlashByDefault);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraProviderStateInitial value) initial,
    required TResult Function(CameraProviderStateLoading value) loading,
    required TResult Function(CameraProviderStateLoaded value) loaded,
    required TResult Function(CameraProviderStateLoadFailed value) loadFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CameraProviderStateLoaded implements CameraProviderState {
  const factory CameraProviderStateLoaded(
      {required CameraDescription primaryCamera,
      required List<CameraDescription> otherCameras,
      required bool enableFlashByDefault}) = _$CameraProviderStateLoaded;

  CameraDescription get primaryCamera;
  List<CameraDescription> get otherCameras;
  bool get enableFlashByDefault;
  @JsonKey(ignore: true)
  $CameraProviderStateLoadedCopyWith<CameraProviderStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraProviderStateLoadFailedCopyWith<$Res> {
  factory $CameraProviderStateLoadFailedCopyWith(
          CameraProviderStateLoadFailed value,
          $Res Function(CameraProviderStateLoadFailed) then) =
      _$CameraProviderStateLoadFailedCopyWithImpl<$Res>;
  $Res call({CameraException error, StackTrace? stackTrace});
}

/// @nodoc
class _$CameraProviderStateLoadFailedCopyWithImpl<$Res>
    extends _$CameraProviderStateCopyWithImpl<$Res>
    implements $CameraProviderStateLoadFailedCopyWith<$Res> {
  _$CameraProviderStateLoadFailedCopyWithImpl(
      CameraProviderStateLoadFailed _value,
      $Res Function(CameraProviderStateLoadFailed) _then)
      : super(_value, (v) => _then(v as CameraProviderStateLoadFailed));

  @override
  CameraProviderStateLoadFailed get _value =>
      super._value as CameraProviderStateLoadFailed;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(CameraProviderStateLoadFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CameraException,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$CameraProviderStateLoadFailed implements CameraProviderStateLoadFailed {
  const _$CameraProviderStateLoadFailed({required this.error, this.stackTrace});

  @override
  final CameraException error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'CameraProviderState.loadFailed(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraProviderStateLoadFailed &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $CameraProviderStateLoadFailedCopyWith<CameraProviderStateLoadFailed>
      get copyWith => _$CameraProviderStateLoadFailedCopyWithImpl<
          CameraProviderStateLoadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)
        loaded,
    required TResult Function(CameraException error, StackTrace? stackTrace)
        loadFailed,
  }) {
    return loadFailed(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
  }) {
    return loadFailed?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CameraDescription primaryCamera,
            List<CameraDescription> otherCameras, bool enableFlashByDefault)?
        loaded,
    TResult Function(CameraException error, StackTrace? stackTrace)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraProviderStateInitial value) initial,
    required TResult Function(CameraProviderStateLoading value) loading,
    required TResult Function(CameraProviderStateLoaded value) loaded,
    required TResult Function(CameraProviderStateLoadFailed value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraProviderStateInitial value)? initial,
    TResult Function(CameraProviderStateLoading value)? loading,
    TResult Function(CameraProviderStateLoaded value)? loaded,
    TResult Function(CameraProviderStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class CameraProviderStateLoadFailed implements CameraProviderState {
  const factory CameraProviderStateLoadFailed(
      {required CameraException error,
      StackTrace? stackTrace}) = _$CameraProviderStateLoadFailed;

  CameraException get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $CameraProviderStateLoadFailedCopyWith<CameraProviderStateLoadFailed>
      get copyWith => throw _privateConstructorUsedError;
}
