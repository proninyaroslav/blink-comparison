// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RefImage image) loaded,
    required TResult Function(LoadRefImageError error) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RefImage image)? loaded,
    TResult? Function(LoadRefImageError error)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImageStateInitial value) initial,
    required TResult Function(RefImageStateLoading value) loading,
    required TResult Function(RefImageStateLoaded value) loaded,
    required TResult Function(RefImageStateLoadFailed value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageStateInitial value)? initial,
    TResult? Function(RefImageStateLoading value)? loading,
    TResult? Function(RefImageStateLoaded value)? loaded,
    TResult? Function(RefImageStateLoadFailed value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageStateCopyWith<$Res> {
  factory $RefImageStateCopyWith(
          RefImageState value, $Res Function(RefImageState) then) =
      _$RefImageStateCopyWithImpl<$Res, RefImageState>;
}

/// @nodoc
class _$RefImageStateCopyWithImpl<$Res, $Val extends RefImageState>
    implements $RefImageStateCopyWith<$Res> {
  _$RefImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RefImageStateInitialImplCopyWith<$Res> {
  factory _$$RefImageStateInitialImplCopyWith(_$RefImageStateInitialImpl value,
          $Res Function(_$RefImageStateInitialImpl) then) =
      __$$RefImageStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefImageStateInitialImplCopyWithImpl<$Res>
    extends _$RefImageStateCopyWithImpl<$Res, _$RefImageStateInitialImpl>
    implements _$$RefImageStateInitialImplCopyWith<$Res> {
  __$$RefImageStateInitialImplCopyWithImpl(_$RefImageStateInitialImpl _value,
      $Res Function(_$RefImageStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefImageStateInitialImpl
    with DiagnosticableTreeMixin
    implements RefImageStateInitial {
  const _$RefImageStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RefImageState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RefImage image) loaded,
    required TResult Function(LoadRefImageError error) loadFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RefImage image)? loaded,
    TResult? Function(LoadRefImageError error)? loadFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
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
    required TResult Function(RefImageStateInitial value) initial,
    required TResult Function(RefImageStateLoading value) loading,
    required TResult Function(RefImageStateLoaded value) loaded,
    required TResult Function(RefImageStateLoadFailed value) loadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageStateInitial value)? initial,
    TResult? Function(RefImageStateLoading value)? loading,
    TResult? Function(RefImageStateLoaded value)? loaded,
    TResult? Function(RefImageStateLoadFailed value)? loadFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RefImageStateInitial implements RefImageState {
  const factory RefImageStateInitial() = _$RefImageStateInitialImpl;
}

/// @nodoc
abstract class _$$RefImageStateLoadingImplCopyWith<$Res> {
  factory _$$RefImageStateLoadingImplCopyWith(_$RefImageStateLoadingImpl value,
          $Res Function(_$RefImageStateLoadingImpl) then) =
      __$$RefImageStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefImageStateLoadingImplCopyWithImpl<$Res>
    extends _$RefImageStateCopyWithImpl<$Res, _$RefImageStateLoadingImpl>
    implements _$$RefImageStateLoadingImplCopyWith<$Res> {
  __$$RefImageStateLoadingImplCopyWithImpl(_$RefImageStateLoadingImpl _value,
      $Res Function(_$RefImageStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefImageStateLoadingImpl
    with DiagnosticableTreeMixin
    implements RefImageStateLoading {
  const _$RefImageStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RefImageState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RefImage image) loaded,
    required TResult Function(LoadRefImageError error) loadFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RefImage image)? loaded,
    TResult? Function(LoadRefImageError error)? loadFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
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
    required TResult Function(RefImageStateInitial value) initial,
    required TResult Function(RefImageStateLoading value) loading,
    required TResult Function(RefImageStateLoaded value) loaded,
    required TResult Function(RefImageStateLoadFailed value) loadFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageStateInitial value)? initial,
    TResult? Function(RefImageStateLoading value)? loading,
    TResult? Function(RefImageStateLoaded value)? loaded,
    TResult? Function(RefImageStateLoadFailed value)? loadFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RefImageStateLoading implements RefImageState {
  const factory RefImageStateLoading() = _$RefImageStateLoadingImpl;
}

/// @nodoc
abstract class _$$RefImageStateLoadedImplCopyWith<$Res> {
  factory _$$RefImageStateLoadedImplCopyWith(_$RefImageStateLoadedImpl value,
          $Res Function(_$RefImageStateLoadedImpl) then) =
      __$$RefImageStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RefImage image});

  $RefImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$RefImageStateLoadedImplCopyWithImpl<$Res>
    extends _$RefImageStateCopyWithImpl<$Res, _$RefImageStateLoadedImpl>
    implements _$$RefImageStateLoadedImplCopyWith<$Res> {
  __$$RefImageStateLoadedImplCopyWithImpl(_$RefImageStateLoadedImpl _value,
      $Res Function(_$RefImageStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$RefImageStateLoadedImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as RefImage,
    ));
  }

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageCopyWith<$Res> get image {
    return $RefImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$RefImageStateLoadedImpl
    with DiagnosticableTreeMixin
    implements RefImageStateLoaded {
  const _$RefImageStateLoadedImpl(this.image);

  @override
  final RefImage image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageState.loaded(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImageState.loaded'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageStateLoadedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageStateLoadedImplCopyWith<_$RefImageStateLoadedImpl> get copyWith =>
      __$$RefImageStateLoadedImplCopyWithImpl<_$RefImageStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RefImage image) loaded,
    required TResult Function(LoadRefImageError error) loadFailed,
  }) {
    return loaded(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RefImage image)? loaded,
    TResult? Function(LoadRefImageError error)? loadFailed,
  }) {
    return loaded?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImageStateInitial value) initial,
    required TResult Function(RefImageStateLoading value) loading,
    required TResult Function(RefImageStateLoaded value) loaded,
    required TResult Function(RefImageStateLoadFailed value) loadFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageStateInitial value)? initial,
    TResult? Function(RefImageStateLoading value)? loading,
    TResult? Function(RefImageStateLoaded value)? loaded,
    TResult? Function(RefImageStateLoadFailed value)? loadFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RefImageStateLoaded implements RefImageState {
  const factory RefImageStateLoaded(final RefImage image) =
      _$RefImageStateLoadedImpl;

  RefImage get image;

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageStateLoadedImplCopyWith<_$RefImageStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefImageStateLoadFailedImplCopyWith<$Res> {
  factory _$$RefImageStateLoadFailedImplCopyWith(
          _$RefImageStateLoadFailedImpl value,
          $Res Function(_$RefImageStateLoadFailedImpl) then) =
      __$$RefImageStateLoadFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadRefImageError error});

  $LoadRefImageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$RefImageStateLoadFailedImplCopyWithImpl<$Res>
    extends _$RefImageStateCopyWithImpl<$Res, _$RefImageStateLoadFailedImpl>
    implements _$$RefImageStateLoadFailedImplCopyWith<$Res> {
  __$$RefImageStateLoadFailedImplCopyWithImpl(
      _$RefImageStateLoadFailedImpl _value,
      $Res Function(_$RefImageStateLoadFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RefImageStateLoadFailedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as LoadRefImageError,
    ));
  }

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoadRefImageErrorCopyWith<$Res> get error {
    return $LoadRefImageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$RefImageStateLoadFailedImpl
    with DiagnosticableTreeMixin
    implements RefImageStateLoadFailed {
  const _$RefImageStateLoadFailedImpl(this.error);

  @override
  final LoadRefImageError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageState.loadFailed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImageState.loadFailed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageStateLoadFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageStateLoadFailedImplCopyWith<_$RefImageStateLoadFailedImpl>
      get copyWith => __$$RefImageStateLoadFailedImplCopyWithImpl<
          _$RefImageStateLoadFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RefImage image) loaded,
    required TResult Function(LoadRefImageError error) loadFailed,
  }) {
    return loadFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RefImage image)? loaded,
    TResult? Function(LoadRefImageError error)? loadFailed,
  }) {
    return loadFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImageStateInitial value) initial,
    required TResult Function(RefImageStateLoading value) loading,
    required TResult Function(RefImageStateLoaded value) loaded,
    required TResult Function(RefImageStateLoadFailed value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageStateInitial value)? initial,
    TResult? Function(RefImageStateLoading value)? loading,
    TResult? Function(RefImageStateLoaded value)? loaded,
    TResult? Function(RefImageStateLoadFailed value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class RefImageStateLoadFailed implements RefImageState {
  const factory RefImageStateLoadFailed(final LoadRefImageError error) =
      _$RefImageStateLoadFailedImpl;

  LoadRefImageError get error;

  /// Create a copy of RefImageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageStateLoadFailedImplCopyWith<_$RefImageStateLoadFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadRefImageError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noSecureKey,
    required TResult Function(DecryptError error) decrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult? Function(FsError error)? fs,
    TResult? Function()? noSecureKey,
    TResult? Function(DecryptError error)? decrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRefImageErrorNotFound value) notFound,
    required TResult Function(LoadRefImageErrorStorage value) database,
    required TResult Function(LoadRefImageErrorFs value) fs,
    required TResult Function(LoadRefImageErrorNoSecureKey value) noSecureKey,
    required TResult Function(LoadRefImageErrorDecrypt value) decrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRefImageErrorNotFound value)? notFound,
    TResult? Function(LoadRefImageErrorStorage value)? database,
    TResult? Function(LoadRefImageErrorFs value)? fs,
    TResult? Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult? Function(LoadRefImageErrorDecrypt value)? decrypt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadRefImageErrorCopyWith<$Res> {
  factory $LoadRefImageErrorCopyWith(
          LoadRefImageError value, $Res Function(LoadRefImageError) then) =
      _$LoadRefImageErrorCopyWithImpl<$Res, LoadRefImageError>;
}

/// @nodoc
class _$LoadRefImageErrorCopyWithImpl<$Res, $Val extends LoadRefImageError>
    implements $LoadRefImageErrorCopyWith<$Res> {
  _$LoadRefImageErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadRefImageErrorNotFoundImplCopyWith<$Res> {
  factory _$$LoadRefImageErrorNotFoundImplCopyWith(
          _$LoadRefImageErrorNotFoundImpl value,
          $Res Function(_$LoadRefImageErrorNotFoundImpl) then) =
      __$$LoadRefImageErrorNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRefImageErrorNotFoundImplCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res,
        _$LoadRefImageErrorNotFoundImpl>
    implements _$$LoadRefImageErrorNotFoundImplCopyWith<$Res> {
  __$$LoadRefImageErrorNotFoundImplCopyWithImpl(
      _$LoadRefImageErrorNotFoundImpl _value,
      $Res Function(_$LoadRefImageErrorNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadRefImageErrorNotFoundImpl
    with DiagnosticableTreeMixin
    implements LoadRefImageErrorNotFound {
  const _$LoadRefImageErrorNotFoundImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadRefImageError.notFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoadRefImageError.notFound'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRefImageErrorNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noSecureKey,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult? Function(FsError error)? fs,
    TResult? Function()? noSecureKey,
    TResult? Function(DecryptError error)? decrypt,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRefImageErrorNotFound value) notFound,
    required TResult Function(LoadRefImageErrorStorage value) database,
    required TResult Function(LoadRefImageErrorFs value) fs,
    required TResult Function(LoadRefImageErrorNoSecureKey value) noSecureKey,
    required TResult Function(LoadRefImageErrorDecrypt value) decrypt,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRefImageErrorNotFound value)? notFound,
    TResult? Function(LoadRefImageErrorStorage value)? database,
    TResult? Function(LoadRefImageErrorFs value)? fs,
    TResult? Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult? Function(LoadRefImageErrorDecrypt value)? decrypt,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class LoadRefImageErrorNotFound implements LoadRefImageError {
  const factory LoadRefImageErrorNotFound() = _$LoadRefImageErrorNotFoundImpl;
}

/// @nodoc
abstract class _$$LoadRefImageErrorStorageImplCopyWith<$Res> {
  factory _$$LoadRefImageErrorStorageImplCopyWith(
          _$LoadRefImageErrorStorageImpl value,
          $Res Function(_$LoadRefImageErrorStorageImpl) then) =
      __$$LoadRefImageErrorStorageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$LoadRefImageErrorStorageImplCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res,
        _$LoadRefImageErrorStorageImpl>
    implements _$$LoadRefImageErrorStorageImplCopyWith<$Res> {
  __$$LoadRefImageErrorStorageImplCopyWithImpl(
      _$LoadRefImageErrorStorageImpl _value,
      $Res Function(_$LoadRefImageErrorStorageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$LoadRefImageErrorStorageImpl(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$LoadRefImageErrorStorageImpl
    with DiagnosticableTreeMixin
    implements LoadRefImageErrorStorage {
  const _$LoadRefImageErrorStorageImpl({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadRefImageError.database(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoadRefImageError.database'))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRefImageErrorStorageImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRefImageErrorStorageImplCopyWith<_$LoadRefImageErrorStorageImpl>
      get copyWith => __$$LoadRefImageErrorStorageImplCopyWithImpl<
          _$LoadRefImageErrorStorageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noSecureKey,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return database(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult? Function(FsError error)? fs,
    TResult? Function()? noSecureKey,
    TResult? Function(DecryptError error)? decrypt,
  }) {
    return database?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRefImageErrorNotFound value) notFound,
    required TResult Function(LoadRefImageErrorStorage value) database,
    required TResult Function(LoadRefImageErrorFs value) fs,
    required TResult Function(LoadRefImageErrorNoSecureKey value) noSecureKey,
    required TResult Function(LoadRefImageErrorDecrypt value) decrypt,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRefImageErrorNotFound value)? notFound,
    TResult? Function(LoadRefImageErrorStorage value)? database,
    TResult? Function(LoadRefImageErrorFs value)? fs,
    TResult? Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult? Function(LoadRefImageErrorDecrypt value)? decrypt,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class LoadRefImageErrorStorage implements LoadRefImageError {
  const factory LoadRefImageErrorStorage(
      {final Exception? exception,
      final StackTrace? stackTrace}) = _$LoadRefImageErrorStorageImpl;

  Exception? get exception;
  StackTrace? get stackTrace;

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadRefImageErrorStorageImplCopyWith<_$LoadRefImageErrorStorageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadRefImageErrorFsImplCopyWith<$Res> {
  factory _$$LoadRefImageErrorFsImplCopyWith(_$LoadRefImageErrorFsImpl value,
          $Res Function(_$LoadRefImageErrorFsImpl) then) =
      __$$LoadRefImageErrorFsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$LoadRefImageErrorFsImplCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res, _$LoadRefImageErrorFsImpl>
    implements _$$LoadRefImageErrorFsImplCopyWith<$Res> {
  __$$LoadRefImageErrorFsImplCopyWithImpl(_$LoadRefImageErrorFsImpl _value,
      $Res Function(_$LoadRefImageErrorFsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadRefImageErrorFsImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FsErrorCopyWith<$Res> get error {
    return $FsErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$LoadRefImageErrorFsImpl
    with DiagnosticableTreeMixin
    implements LoadRefImageErrorFs {
  const _$LoadRefImageErrorFsImpl(this.error);

  @override
  final FsError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadRefImageError.fs(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoadRefImageError.fs'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRefImageErrorFsImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRefImageErrorFsImplCopyWith<_$LoadRefImageErrorFsImpl> get copyWith =>
      __$$LoadRefImageErrorFsImplCopyWithImpl<_$LoadRefImageErrorFsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noSecureKey,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return fs(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult? Function(FsError error)? fs,
    TResult? Function()? noSecureKey,
    TResult? Function(DecryptError error)? decrypt,
  }) {
    return fs?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRefImageErrorNotFound value) notFound,
    required TResult Function(LoadRefImageErrorStorage value) database,
    required TResult Function(LoadRefImageErrorFs value) fs,
    required TResult Function(LoadRefImageErrorNoSecureKey value) noSecureKey,
    required TResult Function(LoadRefImageErrorDecrypt value) decrypt,
  }) {
    return fs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRefImageErrorNotFound value)? notFound,
    TResult? Function(LoadRefImageErrorStorage value)? database,
    TResult? Function(LoadRefImageErrorFs value)? fs,
    TResult? Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult? Function(LoadRefImageErrorDecrypt value)? decrypt,
  }) {
    return fs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (fs != null) {
      return fs(this);
    }
    return orElse();
  }
}

abstract class LoadRefImageErrorFs implements LoadRefImageError {
  const factory LoadRefImageErrorFs(final FsError error) =
      _$LoadRefImageErrorFsImpl;

  FsError get error;

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadRefImageErrorFsImplCopyWith<_$LoadRefImageErrorFsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadRefImageErrorNoSecureKeyImplCopyWith<$Res> {
  factory _$$LoadRefImageErrorNoSecureKeyImplCopyWith(
          _$LoadRefImageErrorNoSecureKeyImpl value,
          $Res Function(_$LoadRefImageErrorNoSecureKeyImpl) then) =
      __$$LoadRefImageErrorNoSecureKeyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRefImageErrorNoSecureKeyImplCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res,
        _$LoadRefImageErrorNoSecureKeyImpl>
    implements _$$LoadRefImageErrorNoSecureKeyImplCopyWith<$Res> {
  __$$LoadRefImageErrorNoSecureKeyImplCopyWithImpl(
      _$LoadRefImageErrorNoSecureKeyImpl _value,
      $Res Function(_$LoadRefImageErrorNoSecureKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadRefImageErrorNoSecureKeyImpl
    with DiagnosticableTreeMixin
    implements LoadRefImageErrorNoSecureKey {
  const _$LoadRefImageErrorNoSecureKeyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadRefImageError.noSecureKey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LoadRefImageError.noSecureKey'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRefImageErrorNoSecureKeyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noSecureKey,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return noSecureKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult? Function(FsError error)? fs,
    TResult? Function()? noSecureKey,
    TResult? Function(DecryptError error)? decrypt,
  }) {
    return noSecureKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) {
    if (noSecureKey != null) {
      return noSecureKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRefImageErrorNotFound value) notFound,
    required TResult Function(LoadRefImageErrorStorage value) database,
    required TResult Function(LoadRefImageErrorFs value) fs,
    required TResult Function(LoadRefImageErrorNoSecureKey value) noSecureKey,
    required TResult Function(LoadRefImageErrorDecrypt value) decrypt,
  }) {
    return noSecureKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRefImageErrorNotFound value)? notFound,
    TResult? Function(LoadRefImageErrorStorage value)? database,
    TResult? Function(LoadRefImageErrorFs value)? fs,
    TResult? Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult? Function(LoadRefImageErrorDecrypt value)? decrypt,
  }) {
    return noSecureKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (noSecureKey != null) {
      return noSecureKey(this);
    }
    return orElse();
  }
}

abstract class LoadRefImageErrorNoSecureKey implements LoadRefImageError {
  const factory LoadRefImageErrorNoSecureKey() =
      _$LoadRefImageErrorNoSecureKeyImpl;
}

/// @nodoc
abstract class _$$LoadRefImageErrorDecryptImplCopyWith<$Res> {
  factory _$$LoadRefImageErrorDecryptImplCopyWith(
          _$LoadRefImageErrorDecryptImpl value,
          $Res Function(_$LoadRefImageErrorDecryptImpl) then) =
      __$$LoadRefImageErrorDecryptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DecryptError error});

  $DecryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$LoadRefImageErrorDecryptImplCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res,
        _$LoadRefImageErrorDecryptImpl>
    implements _$$LoadRefImageErrorDecryptImplCopyWith<$Res> {
  __$$LoadRefImageErrorDecryptImplCopyWithImpl(
      _$LoadRefImageErrorDecryptImpl _value,
      $Res Function(_$LoadRefImageErrorDecryptImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadRefImageErrorDecryptImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DecryptError,
    ));
  }

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DecryptErrorCopyWith<$Res> get error {
    return $DecryptErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$LoadRefImageErrorDecryptImpl
    with DiagnosticableTreeMixin
    implements LoadRefImageErrorDecrypt {
  const _$LoadRefImageErrorDecryptImpl(this.error);

  @override
  final DecryptError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoadRefImageError.decrypt(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoadRefImageError.decrypt'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRefImageErrorDecryptImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRefImageErrorDecryptImplCopyWith<_$LoadRefImageErrorDecryptImpl>
      get copyWith => __$$LoadRefImageErrorDecryptImplCopyWithImpl<
          _$LoadRefImageErrorDecryptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        database,
    required TResult Function(FsError error) fs,
    required TResult Function() noSecureKey,
    required TResult Function(DecryptError error) decrypt,
  }) {
    return decrypt(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notFound,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult? Function(FsError error)? fs,
    TResult? Function()? noSecureKey,
    TResult? Function(DecryptError error)? decrypt,
  }) {
    return decrypt?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
    required TResult orElse(),
  }) {
    if (decrypt != null) {
      return decrypt(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRefImageErrorNotFound value) notFound,
    required TResult Function(LoadRefImageErrorStorage value) database,
    required TResult Function(LoadRefImageErrorFs value) fs,
    required TResult Function(LoadRefImageErrorNoSecureKey value) noSecureKey,
    required TResult Function(LoadRefImageErrorDecrypt value) decrypt,
  }) {
    return decrypt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRefImageErrorNotFound value)? notFound,
    TResult? Function(LoadRefImageErrorStorage value)? database,
    TResult? Function(LoadRefImageErrorFs value)? fs,
    TResult? Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult? Function(LoadRefImageErrorDecrypt value)? decrypt,
  }) {
    return decrypt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
    required TResult orElse(),
  }) {
    if (decrypt != null) {
      return decrypt(this);
    }
    return orElse();
  }
}

abstract class LoadRefImageErrorDecrypt implements LoadRefImageError {
  const factory LoadRefImageErrorDecrypt(final DecryptError error) =
      _$LoadRefImageErrorDecryptImpl;

  DecryptError get error;

  /// Create a copy of LoadRefImageError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadRefImageErrorDecryptImplCopyWith<_$LoadRefImageErrorDecryptImpl>
      get copyWith => throw _privateConstructorUsedError;
}
