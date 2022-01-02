// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'system_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SystemPickerStateTearOff {
  const _$SystemPickerStateTearOff();

  SystemPickerStateInitial initial() {
    return const SystemPickerStateInitial();
  }

  SystemPickerStateSelectingImages selectingImages() {
    return const SystemPickerStateSelectingImages();
  }

  SystemPickerStateSelectImagesFailed selectImagesFailed(
      {Exception? exception, StackTrace? stackTrace}) {
    return SystemPickerStateSelectImagesFailed(
      exception: exception,
      stackTrace: stackTrace,
    );
  }

  SystemPickerStateImagesNotSelected imagesNotSelected() {
    return const SystemPickerStateImagesNotSelected();
  }

  SystemPickerStateImagesSelected imagesSelected(List<XFile> files) {
    return SystemPickerStateImagesSelected(
      files,
    );
  }
}

/// @nodoc
const $SystemPickerState = _$SystemPickerStateTearOff();

/// @nodoc
mixin _$SystemPickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectingImages,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        selectImagesFailed,
    required TResult Function() imagesNotSelected,
    required TResult Function(List<XFile> files) imagesSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemPickerStateInitial value) initial,
    required TResult Function(SystemPickerStateSelectingImages value)
        selectingImages,
    required TResult Function(SystemPickerStateSelectImagesFailed value)
        selectImagesFailed,
    required TResult Function(SystemPickerStateImagesNotSelected value)
        imagesNotSelected,
    required TResult Function(SystemPickerStateImagesSelected value)
        imagesSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemPickerStateCopyWith<$Res> {
  factory $SystemPickerStateCopyWith(
          SystemPickerState value, $Res Function(SystemPickerState) then) =
      _$SystemPickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SystemPickerStateCopyWithImpl<$Res>
    implements $SystemPickerStateCopyWith<$Res> {
  _$SystemPickerStateCopyWithImpl(this._value, this._then);

  final SystemPickerState _value;
  // ignore: unused_field
  final $Res Function(SystemPickerState) _then;
}

/// @nodoc
abstract class $SystemPickerStateInitialCopyWith<$Res> {
  factory $SystemPickerStateInitialCopyWith(SystemPickerStateInitial value,
          $Res Function(SystemPickerStateInitial) then) =
      _$SystemPickerStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SystemPickerStateInitialCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res>
    implements $SystemPickerStateInitialCopyWith<$Res> {
  _$SystemPickerStateInitialCopyWithImpl(SystemPickerStateInitial _value,
      $Res Function(SystemPickerStateInitial) _then)
      : super(_value, (v) => _then(v as SystemPickerStateInitial));

  @override
  SystemPickerStateInitial get _value =>
      super._value as SystemPickerStateInitial;
}

/// @nodoc

class _$SystemPickerStateInitial implements SystemPickerStateInitial {
  const _$SystemPickerStateInitial();

  @override
  String toString() {
    return 'SystemPickerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SystemPickerStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectingImages,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        selectImagesFailed,
    required TResult Function() imagesNotSelected,
    required TResult Function(List<XFile> files) imagesSelected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
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
    required TResult Function(SystemPickerStateInitial value) initial,
    required TResult Function(SystemPickerStateSelectingImages value)
        selectingImages,
    required TResult Function(SystemPickerStateSelectImagesFailed value)
        selectImagesFailed,
    required TResult Function(SystemPickerStateImagesNotSelected value)
        imagesNotSelected,
    required TResult Function(SystemPickerStateImagesSelected value)
        imagesSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SystemPickerStateInitial implements SystemPickerState {
  const factory SystemPickerStateInitial() = _$SystemPickerStateInitial;
}

/// @nodoc
abstract class $SystemPickerStateSelectingImagesCopyWith<$Res> {
  factory $SystemPickerStateSelectingImagesCopyWith(
          SystemPickerStateSelectingImages value,
          $Res Function(SystemPickerStateSelectingImages) then) =
      _$SystemPickerStateSelectingImagesCopyWithImpl<$Res>;
}

/// @nodoc
class _$SystemPickerStateSelectingImagesCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res>
    implements $SystemPickerStateSelectingImagesCopyWith<$Res> {
  _$SystemPickerStateSelectingImagesCopyWithImpl(
      SystemPickerStateSelectingImages _value,
      $Res Function(SystemPickerStateSelectingImages) _then)
      : super(_value, (v) => _then(v as SystemPickerStateSelectingImages));

  @override
  SystemPickerStateSelectingImages get _value =>
      super._value as SystemPickerStateSelectingImages;
}

/// @nodoc

class _$SystemPickerStateSelectingImages
    implements SystemPickerStateSelectingImages {
  const _$SystemPickerStateSelectingImages();

  @override
  String toString() {
    return 'SystemPickerState.selectingImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SystemPickerStateSelectingImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectingImages,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        selectImagesFailed,
    required TResult Function() imagesNotSelected,
    required TResult Function(List<XFile> files) imagesSelected,
  }) {
    return selectingImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
  }) {
    return selectingImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
    required TResult orElse(),
  }) {
    if (selectingImages != null) {
      return selectingImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemPickerStateInitial value) initial,
    required TResult Function(SystemPickerStateSelectingImages value)
        selectingImages,
    required TResult Function(SystemPickerStateSelectImagesFailed value)
        selectImagesFailed,
    required TResult Function(SystemPickerStateImagesNotSelected value)
        imagesNotSelected,
    required TResult Function(SystemPickerStateImagesSelected value)
        imagesSelected,
  }) {
    return selectingImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
  }) {
    return selectingImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
    required TResult orElse(),
  }) {
    if (selectingImages != null) {
      return selectingImages(this);
    }
    return orElse();
  }
}

abstract class SystemPickerStateSelectingImages implements SystemPickerState {
  const factory SystemPickerStateSelectingImages() =
      _$SystemPickerStateSelectingImages;
}

/// @nodoc
abstract class $SystemPickerStateSelectImagesFailedCopyWith<$Res> {
  factory $SystemPickerStateSelectImagesFailedCopyWith(
          SystemPickerStateSelectImagesFailed value,
          $Res Function(SystemPickerStateSelectImagesFailed) then) =
      _$SystemPickerStateSelectImagesFailedCopyWithImpl<$Res>;
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class _$SystemPickerStateSelectImagesFailedCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res>
    implements $SystemPickerStateSelectImagesFailedCopyWith<$Res> {
  _$SystemPickerStateSelectImagesFailedCopyWithImpl(
      SystemPickerStateSelectImagesFailed _value,
      $Res Function(SystemPickerStateSelectImagesFailed) _then)
      : super(_value, (v) => _then(v as SystemPickerStateSelectImagesFailed));

  @override
  SystemPickerStateSelectImagesFailed get _value =>
      super._value as SystemPickerStateSelectImagesFailed;

  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(SystemPickerStateSelectImagesFailed(
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

class _$SystemPickerStateSelectImagesFailed
    implements SystemPickerStateSelectImagesFailed {
  const _$SystemPickerStateSelectImagesFailed(
      {this.exception, this.stackTrace});

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'SystemPickerState.selectImagesFailed(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SystemPickerStateSelectImagesFailed &&
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
  $SystemPickerStateSelectImagesFailedCopyWith<
          SystemPickerStateSelectImagesFailed>
      get copyWith => _$SystemPickerStateSelectImagesFailedCopyWithImpl<
          SystemPickerStateSelectImagesFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectingImages,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        selectImagesFailed,
    required TResult Function() imagesNotSelected,
    required TResult Function(List<XFile> files) imagesSelected,
  }) {
    return selectImagesFailed(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
  }) {
    return selectImagesFailed?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
    required TResult orElse(),
  }) {
    if (selectImagesFailed != null) {
      return selectImagesFailed(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemPickerStateInitial value) initial,
    required TResult Function(SystemPickerStateSelectingImages value)
        selectingImages,
    required TResult Function(SystemPickerStateSelectImagesFailed value)
        selectImagesFailed,
    required TResult Function(SystemPickerStateImagesNotSelected value)
        imagesNotSelected,
    required TResult Function(SystemPickerStateImagesSelected value)
        imagesSelected,
  }) {
    return selectImagesFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
  }) {
    return selectImagesFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
    required TResult orElse(),
  }) {
    if (selectImagesFailed != null) {
      return selectImagesFailed(this);
    }
    return orElse();
  }
}

abstract class SystemPickerStateSelectImagesFailed
    implements SystemPickerState {
  const factory SystemPickerStateSelectImagesFailed(
      {Exception? exception,
      StackTrace? stackTrace}) = _$SystemPickerStateSelectImagesFailed;

  Exception? get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $SystemPickerStateSelectImagesFailedCopyWith<
          SystemPickerStateSelectImagesFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemPickerStateImagesNotSelectedCopyWith<$Res> {
  factory $SystemPickerStateImagesNotSelectedCopyWith(
          SystemPickerStateImagesNotSelected value,
          $Res Function(SystemPickerStateImagesNotSelected) then) =
      _$SystemPickerStateImagesNotSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SystemPickerStateImagesNotSelectedCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res>
    implements $SystemPickerStateImagesNotSelectedCopyWith<$Res> {
  _$SystemPickerStateImagesNotSelectedCopyWithImpl(
      SystemPickerStateImagesNotSelected _value,
      $Res Function(SystemPickerStateImagesNotSelected) _then)
      : super(_value, (v) => _then(v as SystemPickerStateImagesNotSelected));

  @override
  SystemPickerStateImagesNotSelected get _value =>
      super._value as SystemPickerStateImagesNotSelected;
}

/// @nodoc

class _$SystemPickerStateImagesNotSelected
    implements SystemPickerStateImagesNotSelected {
  const _$SystemPickerStateImagesNotSelected();

  @override
  String toString() {
    return 'SystemPickerState.imagesNotSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SystemPickerStateImagesNotSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectingImages,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        selectImagesFailed,
    required TResult Function() imagesNotSelected,
    required TResult Function(List<XFile> files) imagesSelected,
  }) {
    return imagesNotSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
  }) {
    return imagesNotSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
    required TResult orElse(),
  }) {
    if (imagesNotSelected != null) {
      return imagesNotSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemPickerStateInitial value) initial,
    required TResult Function(SystemPickerStateSelectingImages value)
        selectingImages,
    required TResult Function(SystemPickerStateSelectImagesFailed value)
        selectImagesFailed,
    required TResult Function(SystemPickerStateImagesNotSelected value)
        imagesNotSelected,
    required TResult Function(SystemPickerStateImagesSelected value)
        imagesSelected,
  }) {
    return imagesNotSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
  }) {
    return imagesNotSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
    required TResult orElse(),
  }) {
    if (imagesNotSelected != null) {
      return imagesNotSelected(this);
    }
    return orElse();
  }
}

abstract class SystemPickerStateImagesNotSelected implements SystemPickerState {
  const factory SystemPickerStateImagesNotSelected() =
      _$SystemPickerStateImagesNotSelected;
}

/// @nodoc
abstract class $SystemPickerStateImagesSelectedCopyWith<$Res> {
  factory $SystemPickerStateImagesSelectedCopyWith(
          SystemPickerStateImagesSelected value,
          $Res Function(SystemPickerStateImagesSelected) then) =
      _$SystemPickerStateImagesSelectedCopyWithImpl<$Res>;
  $Res call({List<XFile> files});
}

/// @nodoc
class _$SystemPickerStateImagesSelectedCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res>
    implements $SystemPickerStateImagesSelectedCopyWith<$Res> {
  _$SystemPickerStateImagesSelectedCopyWithImpl(
      SystemPickerStateImagesSelected _value,
      $Res Function(SystemPickerStateImagesSelected) _then)
      : super(_value, (v) => _then(v as SystemPickerStateImagesSelected));

  @override
  SystemPickerStateImagesSelected get _value =>
      super._value as SystemPickerStateImagesSelected;

  @override
  $Res call({
    Object? files = freezed,
  }) {
    return _then(SystemPickerStateImagesSelected(
      files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$SystemPickerStateImagesSelected
    implements SystemPickerStateImagesSelected {
  const _$SystemPickerStateImagesSelected(this.files);

  @override
  final List<XFile> files;

  @override
  String toString() {
    return 'SystemPickerState.imagesSelected(files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SystemPickerStateImagesSelected &&
            const DeepCollectionEquality().equals(other.files, files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(files));

  @JsonKey(ignore: true)
  @override
  $SystemPickerStateImagesSelectedCopyWith<SystemPickerStateImagesSelected>
      get copyWith => _$SystemPickerStateImagesSelectedCopyWithImpl<
          SystemPickerStateImagesSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectingImages,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        selectImagesFailed,
    required TResult Function() imagesNotSelected,
    required TResult Function(List<XFile> files) imagesSelected,
  }) {
    return imagesSelected(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
  }) {
    return imagesSelected?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectingImages,
    TResult Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult Function()? imagesNotSelected,
    TResult Function(List<XFile> files)? imagesSelected,
    required TResult orElse(),
  }) {
    if (imagesSelected != null) {
      return imagesSelected(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SystemPickerStateInitial value) initial,
    required TResult Function(SystemPickerStateSelectingImages value)
        selectingImages,
    required TResult Function(SystemPickerStateSelectImagesFailed value)
        selectImagesFailed,
    required TResult Function(SystemPickerStateImagesNotSelected value)
        imagesNotSelected,
    required TResult Function(SystemPickerStateImagesSelected value)
        imagesSelected,
  }) {
    return imagesSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
  }) {
    return imagesSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SystemPickerStateInitial value)? initial,
    TResult Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult Function(SystemPickerStateImagesSelected value)? imagesSelected,
    required TResult orElse(),
  }) {
    if (imagesSelected != null) {
      return imagesSelected(this);
    }
    return orElse();
  }
}

abstract class SystemPickerStateImagesSelected implements SystemPickerState {
  const factory SystemPickerStateImagesSelected(List<XFile> files) =
      _$SystemPickerStateImagesSelected;

  List<XFile> get files;
  @JsonKey(ignore: true)
  $SystemPickerStateImagesSelectedCopyWith<SystemPickerStateImagesSelected>
      get copyWith => throw _privateConstructorUsedError;
}
