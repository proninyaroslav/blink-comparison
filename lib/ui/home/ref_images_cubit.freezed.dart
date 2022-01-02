// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ref_images_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RefImagesStateTearOff {
  const _$RefImagesStateTearOff();

  RefImagesStateInitial initial() {
    return const RefImagesStateInitial();
  }

  RefImagesStateLoaded loaded({required List<RefImageEntry> entries}) {
    return RefImagesStateLoaded(
      entries: entries,
    );
  }

  RefImagesStateLoadingFailed loadingFailed({StorageError? error}) {
    return RefImagesStateLoadingFailed(
      error: error,
    );
  }
}

/// @nodoc
const $RefImagesState = _$RefImagesStateTearOff();

/// @nodoc
mixin _$RefImagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RefImageEntry> entries) loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RefImageEntry> entries)? loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RefImageEntry> entries)? loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImagesStateInitial value) initial,
    required TResult Function(RefImagesStateLoaded value) loaded,
    required TResult Function(RefImagesStateLoadingFailed value) loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImagesStateInitial value)? initial,
    TResult Function(RefImagesStateLoaded value)? loaded,
    TResult Function(RefImagesStateLoadingFailed value)? loadingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImagesStateInitial value)? initial,
    TResult Function(RefImagesStateLoaded value)? loaded,
    TResult Function(RefImagesStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImagesStateCopyWith<$Res> {
  factory $RefImagesStateCopyWith(
          RefImagesState value, $Res Function(RefImagesState) then) =
      _$RefImagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefImagesStateCopyWithImpl<$Res>
    implements $RefImagesStateCopyWith<$Res> {
  _$RefImagesStateCopyWithImpl(this._value, this._then);

  final RefImagesState _value;
  // ignore: unused_field
  final $Res Function(RefImagesState) _then;
}

/// @nodoc
abstract class $RefImagesStateInitialCopyWith<$Res> {
  factory $RefImagesStateInitialCopyWith(RefImagesStateInitial value,
          $Res Function(RefImagesStateInitial) then) =
      _$RefImagesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefImagesStateInitialCopyWithImpl<$Res>
    extends _$RefImagesStateCopyWithImpl<$Res>
    implements $RefImagesStateInitialCopyWith<$Res> {
  _$RefImagesStateInitialCopyWithImpl(
      RefImagesStateInitial _value, $Res Function(RefImagesStateInitial) _then)
      : super(_value, (v) => _then(v as RefImagesStateInitial));

  @override
  RefImagesStateInitial get _value => super._value as RefImagesStateInitial;
}

/// @nodoc

class _$RefImagesStateInitial implements RefImagesStateInitial {
  const _$RefImagesStateInitial();

  @override
  String toString() {
    return 'RefImagesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefImagesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RefImageEntry> entries) loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RefImageEntry> entries)? loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RefImageEntry> entries)? loaded,
    TResult Function(StorageError? error)? loadingFailed,
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
    required TResult Function(RefImagesStateInitial value) initial,
    required TResult Function(RefImagesStateLoaded value) loaded,
    required TResult Function(RefImagesStateLoadingFailed value) loadingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImagesStateInitial value)? initial,
    TResult Function(RefImagesStateLoaded value)? loaded,
    TResult Function(RefImagesStateLoadingFailed value)? loadingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImagesStateInitial value)? initial,
    TResult Function(RefImagesStateLoaded value)? loaded,
    TResult Function(RefImagesStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RefImagesStateInitial implements RefImagesState {
  const factory RefImagesStateInitial() = _$RefImagesStateInitial;
}

/// @nodoc
abstract class $RefImagesStateLoadedCopyWith<$Res> {
  factory $RefImagesStateLoadedCopyWith(RefImagesStateLoaded value,
          $Res Function(RefImagesStateLoaded) then) =
      _$RefImagesStateLoadedCopyWithImpl<$Res>;
  $Res call({List<RefImageEntry> entries});
}

/// @nodoc
class _$RefImagesStateLoadedCopyWithImpl<$Res>
    extends _$RefImagesStateCopyWithImpl<$Res>
    implements $RefImagesStateLoadedCopyWith<$Res> {
  _$RefImagesStateLoadedCopyWithImpl(
      RefImagesStateLoaded _value, $Res Function(RefImagesStateLoaded) _then)
      : super(_value, (v) => _then(v as RefImagesStateLoaded));

  @override
  RefImagesStateLoaded get _value => super._value as RefImagesStateLoaded;

  @override
  $Res call({
    Object? entries = freezed,
  }) {
    return _then(RefImagesStateLoaded(
      entries: entries == freezed
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<RefImageEntry>,
    ));
  }
}

/// @nodoc

class _$RefImagesStateLoaded implements RefImagesStateLoaded {
  const _$RefImagesStateLoaded({required this.entries});

  @override
  final List<RefImageEntry> entries;

  @override
  String toString() {
    return 'RefImagesState.loaded(entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImagesStateLoaded &&
            const DeepCollectionEquality().equals(other.entries, entries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entries));

  @JsonKey(ignore: true)
  @override
  $RefImagesStateLoadedCopyWith<RefImagesStateLoaded> get copyWith =>
      _$RefImagesStateLoadedCopyWithImpl<RefImagesStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RefImageEntry> entries) loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return loaded(entries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RefImageEntry> entries)? loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) {
    return loaded?.call(entries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RefImageEntry> entries)? loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImagesStateInitial value) initial,
    required TResult Function(RefImagesStateLoaded value) loaded,
    required TResult Function(RefImagesStateLoadingFailed value) loadingFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImagesStateInitial value)? initial,
    TResult Function(RefImagesStateLoaded value)? loaded,
    TResult Function(RefImagesStateLoadingFailed value)? loadingFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImagesStateInitial value)? initial,
    TResult Function(RefImagesStateLoaded value)? loaded,
    TResult Function(RefImagesStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RefImagesStateLoaded implements RefImagesState {
  const factory RefImagesStateLoaded({required List<RefImageEntry> entries}) =
      _$RefImagesStateLoaded;

  List<RefImageEntry> get entries;
  @JsonKey(ignore: true)
  $RefImagesStateLoadedCopyWith<RefImagesStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImagesStateLoadingFailedCopyWith<$Res> {
  factory $RefImagesStateLoadingFailedCopyWith(
          RefImagesStateLoadingFailed value,
          $Res Function(RefImagesStateLoadingFailed) then) =
      _$RefImagesStateLoadingFailedCopyWithImpl<$Res>;
  $Res call({StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$RefImagesStateLoadingFailedCopyWithImpl<$Res>
    extends _$RefImagesStateCopyWithImpl<$Res>
    implements $RefImagesStateLoadingFailedCopyWith<$Res> {
  _$RefImagesStateLoadingFailedCopyWithImpl(RefImagesStateLoadingFailed _value,
      $Res Function(RefImagesStateLoadingFailed) _then)
      : super(_value, (v) => _then(v as RefImagesStateLoadingFailed));

  @override
  RefImagesStateLoadingFailed get _value =>
      super._value as RefImagesStateLoadingFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(RefImagesStateLoadingFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError?,
    ));
  }

  @override
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

class _$RefImagesStateLoadingFailed implements RefImagesStateLoadingFailed {
  const _$RefImagesStateLoadingFailed({this.error});

  @override
  final StorageError? error;

  @override
  String toString() {
    return 'RefImagesState.loadingFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImagesStateLoadingFailed &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $RefImagesStateLoadingFailedCopyWith<RefImagesStateLoadingFailed>
      get copyWith => _$RefImagesStateLoadingFailedCopyWithImpl<
          RefImagesStateLoadingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<RefImageEntry> entries) loaded,
    required TResult Function(StorageError? error) loadingFailed,
  }) {
    return loadingFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RefImageEntry> entries)? loaded,
    TResult Function(StorageError? error)? loadingFailed,
  }) {
    return loadingFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<RefImageEntry> entries)? loaded,
    TResult Function(StorageError? error)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImagesStateInitial value) initial,
    required TResult Function(RefImagesStateLoaded value) loaded,
    required TResult Function(RefImagesStateLoadingFailed value) loadingFailed,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImagesStateInitial value)? initial,
    TResult Function(RefImagesStateLoaded value)? loaded,
    TResult Function(RefImagesStateLoadingFailed value)? loadingFailed,
  }) {
    return loadingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImagesStateInitial value)? initial,
    TResult Function(RefImagesStateLoaded value)? loaded,
    TResult Function(RefImagesStateLoadingFailed value)? loadingFailed,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class RefImagesStateLoadingFailed implements RefImagesState {
  const factory RefImagesStateLoadingFailed({StorageError? error}) =
      _$RefImagesStateLoadingFailed;

  StorageError? get error;
  @JsonKey(ignore: true)
  $RefImagesStateLoadingFailedCopyWith<RefImagesStateLoadingFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$RefImageEntryTearOff {
  const _$RefImageEntryTearOff();

  _RefImageEntry call(
      {required RefImageInfo info,
      required Thumbnail thumbnail,
      SaveRefImageStatus? status}) {
    return _RefImageEntry(
      info: info,
      thumbnail: thumbnail,
      status: status,
    );
  }
}

/// @nodoc
const $RefImageEntry = _$RefImageEntryTearOff();

/// @nodoc
mixin _$RefImageEntry {
  RefImageInfo get info => throw _privateConstructorUsedError;
  Thumbnail get thumbnail => throw _privateConstructorUsedError;
  SaveRefImageStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefImageEntryCopyWith<RefImageEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageEntryCopyWith<$Res> {
  factory $RefImageEntryCopyWith(
          RefImageEntry value, $Res Function(RefImageEntry) then) =
      _$RefImageEntryCopyWithImpl<$Res>;
  $Res call(
      {RefImageInfo info, Thumbnail thumbnail, SaveRefImageStatus? status});

  $RefImageInfoCopyWith<$Res> get info;
  $SaveRefImageStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$RefImageEntryCopyWithImpl<$Res>
    implements $RefImageEntryCopyWith<$Res> {
  _$RefImageEntryCopyWithImpl(this._value, this._then);

  final RefImageEntry _value;
  // ignore: unused_field
  final $Res Function(RefImageEntry) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SaveRefImageStatus?,
    ));
  }

  @override
  $RefImageInfoCopyWith<$Res> get info {
    return $RefImageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
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
abstract class _$RefImageEntryCopyWith<$Res>
    implements $RefImageEntryCopyWith<$Res> {
  factory _$RefImageEntryCopyWith(
          _RefImageEntry value, $Res Function(_RefImageEntry) then) =
      __$RefImageEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {RefImageInfo info, Thumbnail thumbnail, SaveRefImageStatus? status});

  @override
  $RefImageInfoCopyWith<$Res> get info;
  @override
  $SaveRefImageStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$RefImageEntryCopyWithImpl<$Res>
    extends _$RefImageEntryCopyWithImpl<$Res>
    implements _$RefImageEntryCopyWith<$Res> {
  __$RefImageEntryCopyWithImpl(
      _RefImageEntry _value, $Res Function(_RefImageEntry) _then)
      : super(_value, (v) => _then(v as _RefImageEntry));

  @override
  _RefImageEntry get _value => super._value as _RefImageEntry;

  @override
  $Res call({
    Object? info = freezed,
    Object? thumbnail = freezed,
    Object? status = freezed,
  }) {
    return _then(_RefImageEntry(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SaveRefImageStatus?,
    ));
  }
}

/// @nodoc

class _$_RefImageEntry implements _RefImageEntry {
  const _$_RefImageEntry(
      {required this.info, required this.thumbnail, this.status});

  @override
  final RefImageInfo info;
  @override
  final Thumbnail thumbnail;
  @override
  final SaveRefImageStatus? status;

  @override
  String toString() {
    return 'RefImageEntry(info: $info, thumbnail: $thumbnail, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefImageEntry &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$RefImageEntryCopyWith<_RefImageEntry> get copyWith =>
      __$RefImageEntryCopyWithImpl<_RefImageEntry>(this, _$identity);
}

abstract class _RefImageEntry implements RefImageEntry {
  const factory _RefImageEntry(
      {required RefImageInfo info,
      required Thumbnail thumbnail,
      SaveRefImageStatus? status}) = _$_RefImageEntry;

  @override
  RefImageInfo get info;
  @override
  Thumbnail get thumbnail;
  @override
  SaveRefImageStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$RefImageEntryCopyWith<_RefImageEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$_BuildResultTearOff {
  const _$_BuildResultTearOff();

  _BuildResultData call({required List<RefImageEntry> entries}) {
    return _BuildResultData(
      entries: entries,
    );
  }

  _BuildResultFailed failed({required StorageError error}) {
    return _BuildResultFailed(
      error: error,
    );
  }
}

/// @nodoc
const _$BuildResult = _$_BuildResultTearOff();

/// @nodoc
mixin _$_BuildResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries) $default, {
    required TResult Function(StorageError error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries)? $default, {
    TResult Function(StorageError error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries)? $default, {
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BuildResultCopyWith<$Res> {
  factory _$BuildResultCopyWith(
          _BuildResult value, $Res Function(_BuildResult) then) =
      __$BuildResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$BuildResultCopyWithImpl<$Res> implements _$BuildResultCopyWith<$Res> {
  __$BuildResultCopyWithImpl(this._value, this._then);

  final _BuildResult _value;
  // ignore: unused_field
  final $Res Function(_BuildResult) _then;
}

/// @nodoc
abstract class _$BuildResultDataCopyWith<$Res> {
  factory _$BuildResultDataCopyWith(
          _BuildResultData value, $Res Function(_BuildResultData) then) =
      __$BuildResultDataCopyWithImpl<$Res>;
  $Res call({List<RefImageEntry> entries});
}

/// @nodoc
class __$BuildResultDataCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res>
    implements _$BuildResultDataCopyWith<$Res> {
  __$BuildResultDataCopyWithImpl(
      _BuildResultData _value, $Res Function(_BuildResultData) _then)
      : super(_value, (v) => _then(v as _BuildResultData));

  @override
  _BuildResultData get _value => super._value as _BuildResultData;

  @override
  $Res call({
    Object? entries = freezed,
  }) {
    return _then(_BuildResultData(
      entries: entries == freezed
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<RefImageEntry>,
    ));
  }
}

/// @nodoc

class _$_BuildResultData implements _BuildResultData {
  const _$_BuildResultData({required this.entries});

  @override
  final List<RefImageEntry> entries;

  @override
  String toString() {
    return '_BuildResult(entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuildResultData &&
            const DeepCollectionEquality().equals(other.entries, entries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entries));

  @JsonKey(ignore: true)
  @override
  _$BuildResultDataCopyWith<_BuildResultData> get copyWith =>
      __$BuildResultDataCopyWithImpl<_BuildResultData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries) $default, {
    required TResult Function(StorageError error) failed,
  }) {
    return $default(entries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries)? $default, {
    TResult Function(StorageError error)? failed,
  }) {
    return $default?.call(entries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries)? $default, {
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _BuildResultData implements _BuildResult {
  const factory _BuildResultData({required List<RefImageEntry> entries}) =
      _$_BuildResultData;

  List<RefImageEntry> get entries;
  @JsonKey(ignore: true)
  _$BuildResultDataCopyWith<_BuildResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BuildResultFailedCopyWith<$Res> {
  factory _$BuildResultFailedCopyWith(
          _BuildResultFailed value, $Res Function(_BuildResultFailed) then) =
      __$BuildResultFailedCopyWithImpl<$Res>;
  $Res call({StorageError error});

  $StorageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$BuildResultFailedCopyWithImpl<$Res>
    extends __$BuildResultCopyWithImpl<$Res>
    implements _$BuildResultFailedCopyWith<$Res> {
  __$BuildResultFailedCopyWithImpl(
      _BuildResultFailed _value, $Res Function(_BuildResultFailed) _then)
      : super(_value, (v) => _then(v as _BuildResultFailed));

  @override
  _BuildResultFailed get _value => super._value as _BuildResultFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_BuildResultFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError,
    ));
  }

  @override
  $StorageErrorCopyWith<$Res> get error {
    return $StorageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_BuildResultFailed implements _BuildResultFailed {
  const _$_BuildResultFailed({required this.error});

  @override
  final StorageError error;

  @override
  String toString() {
    return '_BuildResult.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuildResultFailed &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$BuildResultFailedCopyWith<_BuildResultFailed> get copyWith =>
      __$BuildResultFailedCopyWithImpl<_BuildResultFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries) $default, {
    required TResult Function(StorageError error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries)? $default, {
    TResult Function(StorageError error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<RefImageEntry> entries)? $default, {
    TResult Function(StorageError error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildResultData value) $default, {
    required TResult Function(_BuildResultFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildResultData value)? $default, {
    TResult Function(_BuildResultFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _BuildResultFailed implements _BuildResult {
  const factory _BuildResultFailed({required StorageError error}) =
      _$_BuildResultFailed;

  StorageError get error;
  @JsonKey(ignore: true)
  _$BuildResultFailedCopyWith<_BuildResultFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
