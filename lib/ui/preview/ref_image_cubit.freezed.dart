// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ref_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RefImageStateTearOff {
  const _$RefImageStateTearOff();

  RefImageStateInitial initial() {
    return const RefImageStateInitial();
  }

  RefImageStateLoading loading() {
    return const RefImageStateLoading();
  }

  RefImageStateLoaded loaded(RefImage image) {
    return RefImageStateLoaded(
      image,
    );
  }

  RefImageStateLoadFailed loadFailed(LoadRefImageError error) {
    return RefImageStateLoadFailed(
      error,
    );
  }
}

/// @nodoc
const $RefImageState = _$RefImageStateTearOff();

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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
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
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
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
      _$RefImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefImageStateCopyWithImpl<$Res>
    implements $RefImageStateCopyWith<$Res> {
  _$RefImageStateCopyWithImpl(this._value, this._then);

  final RefImageState _value;
  // ignore: unused_field
  final $Res Function(RefImageState) _then;
}

/// @nodoc
abstract class $RefImageStateInitialCopyWith<$Res> {
  factory $RefImageStateInitialCopyWith(RefImageStateInitial value,
          $Res Function(RefImageStateInitial) then) =
      _$RefImageStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefImageStateInitialCopyWithImpl<$Res>
    extends _$RefImageStateCopyWithImpl<$Res>
    implements $RefImageStateInitialCopyWith<$Res> {
  _$RefImageStateInitialCopyWithImpl(
      RefImageStateInitial _value, $Res Function(RefImageStateInitial) _then)
      : super(_value, (v) => _then(v as RefImageStateInitial));

  @override
  RefImageStateInitial get _value => super._value as RefImageStateInitial;
}

/// @nodoc

class _$RefImageStateInitial implements RefImageStateInitial {
  const _$RefImageStateInitial();

  @override
  String toString() {
    return 'RefImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefImageStateInitial);
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
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
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
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
  const factory RefImageStateInitial() = _$RefImageStateInitial;
}

/// @nodoc
abstract class $RefImageStateLoadingCopyWith<$Res> {
  factory $RefImageStateLoadingCopyWith(RefImageStateLoading value,
          $Res Function(RefImageStateLoading) then) =
      _$RefImageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefImageStateLoadingCopyWithImpl<$Res>
    extends _$RefImageStateCopyWithImpl<$Res>
    implements $RefImageStateLoadingCopyWith<$Res> {
  _$RefImageStateLoadingCopyWithImpl(
      RefImageStateLoading _value, $Res Function(RefImageStateLoading) _then)
      : super(_value, (v) => _then(v as RefImageStateLoading));

  @override
  RefImageStateLoading get _value => super._value as RefImageStateLoading;
}

/// @nodoc

class _$RefImageStateLoading implements RefImageStateLoading {
  const _$RefImageStateLoading();

  @override
  String toString() {
    return 'RefImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefImageStateLoading);
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
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
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
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
  const factory RefImageStateLoading() = _$RefImageStateLoading;
}

/// @nodoc
abstract class $RefImageStateLoadedCopyWith<$Res> {
  factory $RefImageStateLoadedCopyWith(
          RefImageStateLoaded value, $Res Function(RefImageStateLoaded) then) =
      _$RefImageStateLoadedCopyWithImpl<$Res>;
  $Res call({RefImage image});

  $RefImageCopyWith<$Res> get image;
}

/// @nodoc
class _$RefImageStateLoadedCopyWithImpl<$Res>
    extends _$RefImageStateCopyWithImpl<$Res>
    implements $RefImageStateLoadedCopyWith<$Res> {
  _$RefImageStateLoadedCopyWithImpl(
      RefImageStateLoaded _value, $Res Function(RefImageStateLoaded) _then)
      : super(_value, (v) => _then(v as RefImageStateLoaded));

  @override
  RefImageStateLoaded get _value => super._value as RefImageStateLoaded;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(RefImageStateLoaded(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as RefImage,
    ));
  }

  @override
  $RefImageCopyWith<$Res> get image {
    return $RefImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$RefImageStateLoaded implements RefImageStateLoaded {
  const _$RefImageStateLoaded(this.image);

  @override
  final RefImage image;

  @override
  String toString() {
    return 'RefImageState.loaded(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImageStateLoaded &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  $RefImageStateLoadedCopyWith<RefImageStateLoaded> get copyWith =>
      _$RefImageStateLoadedCopyWithImpl<RefImageStateLoaded>(this, _$identity);

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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
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
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
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
  const factory RefImageStateLoaded(RefImage image) = _$RefImageStateLoaded;

  RefImage get image;
  @JsonKey(ignore: true)
  $RefImageStateLoadedCopyWith<RefImageStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageStateLoadFailedCopyWith<$Res> {
  factory $RefImageStateLoadFailedCopyWith(RefImageStateLoadFailed value,
          $Res Function(RefImageStateLoadFailed) then) =
      _$RefImageStateLoadFailedCopyWithImpl<$Res>;
  $Res call({LoadRefImageError error});

  $LoadRefImageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$RefImageStateLoadFailedCopyWithImpl<$Res>
    extends _$RefImageStateCopyWithImpl<$Res>
    implements $RefImageStateLoadFailedCopyWith<$Res> {
  _$RefImageStateLoadFailedCopyWithImpl(RefImageStateLoadFailed _value,
      $Res Function(RefImageStateLoadFailed) _then)
      : super(_value, (v) => _then(v as RefImageStateLoadFailed));

  @override
  RefImageStateLoadFailed get _value => super._value as RefImageStateLoadFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(RefImageStateLoadFailed(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as LoadRefImageError,
    ));
  }

  @override
  $LoadRefImageErrorCopyWith<$Res> get error {
    return $LoadRefImageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$RefImageStateLoadFailed implements RefImageStateLoadFailed {
  const _$RefImageStateLoadFailed(this.error);

  @override
  final LoadRefImageError error;

  @override
  String toString() {
    return 'RefImageState.loadFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImageStateLoadFailed &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $RefImageStateLoadFailedCopyWith<RefImageStateLoadFailed> get copyWith =>
      _$RefImageStateLoadFailedCopyWithImpl<RefImageStateLoadFailed>(
          this, _$identity);

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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RefImage image)? loaded,
    TResult Function(LoadRefImageError error)? loadFailed,
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
    TResult Function(RefImageStateInitial value)? initial,
    TResult Function(RefImageStateLoading value)? loading,
    TResult Function(RefImageStateLoaded value)? loaded,
    TResult Function(RefImageStateLoadFailed value)? loadFailed,
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
  const factory RefImageStateLoadFailed(LoadRefImageError error) =
      _$RefImageStateLoadFailed;

  LoadRefImageError get error;
  @JsonKey(ignore: true)
  $RefImageStateLoadFailedCopyWith<RefImageStateLoadFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoadRefImageErrorTearOff {
  const _$LoadRefImageErrorTearOff();

  LoadRefImageErrorNotFound notFound() {
    return const LoadRefImageErrorNotFound();
  }

  LoadRefImageErrorStorage database(
      {Exception? exception, StackTrace? stackTrace}) {
    return LoadRefImageErrorStorage(
      exception: exception,
      stackTrace: stackTrace,
    );
  }

  LoadRefImageErrorFs fs(FsError error) {
    return LoadRefImageErrorFs(
      error,
    );
  }

  LoadRefImageErrorNoSecureKey noSecureKey() {
    return const LoadRefImageErrorNoSecureKey();
  }

  LoadRefImageErrorDecrypt decrypt(DecryptError error) {
    return LoadRefImageErrorDecrypt(
      error,
    );
  }
}

/// @nodoc
const $LoadRefImageError = _$LoadRefImageErrorTearOff();

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
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
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
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
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
      _$LoadRefImageErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadRefImageErrorCopyWithImpl<$Res>
    implements $LoadRefImageErrorCopyWith<$Res> {
  _$LoadRefImageErrorCopyWithImpl(this._value, this._then);

  final LoadRefImageError _value;
  // ignore: unused_field
  final $Res Function(LoadRefImageError) _then;
}

/// @nodoc
abstract class $LoadRefImageErrorNotFoundCopyWith<$Res> {
  factory $LoadRefImageErrorNotFoundCopyWith(LoadRefImageErrorNotFound value,
          $Res Function(LoadRefImageErrorNotFound) then) =
      _$LoadRefImageErrorNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadRefImageErrorNotFoundCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res>
    implements $LoadRefImageErrorNotFoundCopyWith<$Res> {
  _$LoadRefImageErrorNotFoundCopyWithImpl(LoadRefImageErrorNotFound _value,
      $Res Function(LoadRefImageErrorNotFound) _then)
      : super(_value, (v) => _then(v as LoadRefImageErrorNotFound));

  @override
  LoadRefImageErrorNotFound get _value =>
      super._value as LoadRefImageErrorNotFound;
}

/// @nodoc

class _$LoadRefImageErrorNotFound implements LoadRefImageErrorNotFound {
  const _$LoadRefImageErrorNotFound();

  @override
  String toString() {
    return 'LoadRefImageError.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadRefImageErrorNotFound);
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
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
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
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
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
  const factory LoadRefImageErrorNotFound() = _$LoadRefImageErrorNotFound;
}

/// @nodoc
abstract class $LoadRefImageErrorStorageCopyWith<$Res> {
  factory $LoadRefImageErrorStorageCopyWith(LoadRefImageErrorStorage value,
          $Res Function(LoadRefImageErrorStorage) then) =
      _$LoadRefImageErrorStorageCopyWithImpl<$Res>;
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$LoadRefImageErrorStorageCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res>
    implements $LoadRefImageErrorStorageCopyWith<$Res> {
  _$LoadRefImageErrorStorageCopyWithImpl(LoadRefImageErrorStorage _value,
      $Res Function(LoadRefImageErrorStorage) _then)
      : super(_value, (v) => _then(v as LoadRefImageErrorStorage));

  @override
  LoadRefImageErrorStorage get _value =>
      super._value as LoadRefImageErrorStorage;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(LoadRefImageErrorStorage(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$LoadRefImageErrorStorage implements LoadRefImageErrorStorage {
  const _$LoadRefImageErrorStorage({this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'LoadRefImageError.database(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadRefImageErrorStorage &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $LoadRefImageErrorStorageCopyWith<LoadRefImageErrorStorage> get copyWith =>
      _$LoadRefImageErrorStorageCopyWithImpl<LoadRefImageErrorStorage>(
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
    return database(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
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
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
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
      {Exception? exception,
      StackTrace? stackTrace}) = _$LoadRefImageErrorStorage;

  Exception? get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $LoadRefImageErrorStorageCopyWith<LoadRefImageErrorStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadRefImageErrorFsCopyWith<$Res> {
  factory $LoadRefImageErrorFsCopyWith(
          LoadRefImageErrorFs value, $Res Function(LoadRefImageErrorFs) then) =
      _$LoadRefImageErrorFsCopyWithImpl<$Res>;
  $Res call({FsError error});

  $FsErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$LoadRefImageErrorFsCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res>
    implements $LoadRefImageErrorFsCopyWith<$Res> {
  _$LoadRefImageErrorFsCopyWithImpl(
      LoadRefImageErrorFs _value, $Res Function(LoadRefImageErrorFs) _then)
      : super(_value, (v) => _then(v as LoadRefImageErrorFs));

  @override
  LoadRefImageErrorFs get _value => super._value as LoadRefImageErrorFs;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(LoadRefImageErrorFs(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FsError,
    ));
  }

  @override
  $FsErrorCopyWith<$Res> get error {
    return $FsErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$LoadRefImageErrorFs implements LoadRefImageErrorFs {
  const _$LoadRefImageErrorFs(this.error);

  @override
  final FsError error;

  @override
  String toString() {
    return 'LoadRefImageError.fs(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadRefImageErrorFs &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $LoadRefImageErrorFsCopyWith<LoadRefImageErrorFs> get copyWith =>
      _$LoadRefImageErrorFsCopyWithImpl<LoadRefImageErrorFs>(this, _$identity);

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
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
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
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
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
  const factory LoadRefImageErrorFs(FsError error) = _$LoadRefImageErrorFs;

  FsError get error;
  @JsonKey(ignore: true)
  $LoadRefImageErrorFsCopyWith<LoadRefImageErrorFs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadRefImageErrorNoSecureKeyCopyWith<$Res> {
  factory $LoadRefImageErrorNoSecureKeyCopyWith(
          LoadRefImageErrorNoSecureKey value,
          $Res Function(LoadRefImageErrorNoSecureKey) then) =
      _$LoadRefImageErrorNoSecureKeyCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadRefImageErrorNoSecureKeyCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res>
    implements $LoadRefImageErrorNoSecureKeyCopyWith<$Res> {
  _$LoadRefImageErrorNoSecureKeyCopyWithImpl(
      LoadRefImageErrorNoSecureKey _value,
      $Res Function(LoadRefImageErrorNoSecureKey) _then)
      : super(_value, (v) => _then(v as LoadRefImageErrorNoSecureKey));

  @override
  LoadRefImageErrorNoSecureKey get _value =>
      super._value as LoadRefImageErrorNoSecureKey;
}

/// @nodoc

class _$LoadRefImageErrorNoSecureKey implements LoadRefImageErrorNoSecureKey {
  const _$LoadRefImageErrorNoSecureKey();

  @override
  String toString() {
    return 'LoadRefImageError.noSecureKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadRefImageErrorNoSecureKey);
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
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
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
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
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
  const factory LoadRefImageErrorNoSecureKey() = _$LoadRefImageErrorNoSecureKey;
}

/// @nodoc
abstract class $LoadRefImageErrorDecryptCopyWith<$Res> {
  factory $LoadRefImageErrorDecryptCopyWith(LoadRefImageErrorDecrypt value,
          $Res Function(LoadRefImageErrorDecrypt) then) =
      _$LoadRefImageErrorDecryptCopyWithImpl<$Res>;
  $Res call({DecryptError error});

  $DecryptErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$LoadRefImageErrorDecryptCopyWithImpl<$Res>
    extends _$LoadRefImageErrorCopyWithImpl<$Res>
    implements $LoadRefImageErrorDecryptCopyWith<$Res> {
  _$LoadRefImageErrorDecryptCopyWithImpl(LoadRefImageErrorDecrypt _value,
      $Res Function(LoadRefImageErrorDecrypt) _then)
      : super(_value, (v) => _then(v as LoadRefImageErrorDecrypt));

  @override
  LoadRefImageErrorDecrypt get _value =>
      super._value as LoadRefImageErrorDecrypt;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(LoadRefImageErrorDecrypt(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DecryptError,
    ));
  }

  @override
  $DecryptErrorCopyWith<$Res> get error {
    return $DecryptErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$LoadRefImageErrorDecrypt implements LoadRefImageErrorDecrypt {
  const _$LoadRefImageErrorDecrypt(this.error);

  @override
  final DecryptError error;

  @override
  String toString() {
    return 'LoadRefImageError.decrypt(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadRefImageErrorDecrypt &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $LoadRefImageErrorDecryptCopyWith<LoadRefImageErrorDecrypt> get copyWith =>
      _$LoadRefImageErrorDecryptCopyWithImpl<LoadRefImageErrorDecrypt>(
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
    return decrypt(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(Exception? exception, StackTrace? stackTrace)? database,
    TResult Function(FsError error)? fs,
    TResult Function()? noSecureKey,
    TResult Function(DecryptError error)? decrypt,
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
    TResult Function(LoadRefImageErrorNotFound value)? notFound,
    TResult Function(LoadRefImageErrorStorage value)? database,
    TResult Function(LoadRefImageErrorFs value)? fs,
    TResult Function(LoadRefImageErrorNoSecureKey value)? noSecureKey,
    TResult Function(LoadRefImageErrorDecrypt value)? decrypt,
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
  const factory LoadRefImageErrorDecrypt(DecryptError error) =
      _$LoadRefImageErrorDecrypt;

  DecryptError get error;
  @JsonKey(ignore: true)
  $LoadRefImageErrorDecryptCopyWith<LoadRefImageErrorDecrypt> get copyWith =>
      throw _privateConstructorUsedError;
}
