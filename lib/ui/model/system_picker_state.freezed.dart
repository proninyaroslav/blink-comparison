// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function()? initial,
    TResult? Function()? selectingImages,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult? Function()? imagesNotSelected,
    TResult? Function(List<XFile> files)? imagesSelected,
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
    TResult? Function(SystemPickerStateInitial value)? initial,
    TResult? Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult? Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult? Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult? Function(SystemPickerStateImagesSelected value)? imagesSelected,
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
      _$SystemPickerStateCopyWithImpl<$Res, SystemPickerState>;
}

/// @nodoc
class _$SystemPickerStateCopyWithImpl<$Res, $Val extends SystemPickerState>
    implements $SystemPickerStateCopyWith<$Res> {
  _$SystemPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SystemPickerStateInitialImplCopyWith<$Res> {
  factory _$$SystemPickerStateInitialImplCopyWith(
          _$SystemPickerStateInitialImpl value,
          $Res Function(_$SystemPickerStateInitialImpl) then) =
      __$$SystemPickerStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SystemPickerStateInitialImplCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res,
        _$SystemPickerStateInitialImpl>
    implements _$$SystemPickerStateInitialImplCopyWith<$Res> {
  __$$SystemPickerStateInitialImplCopyWithImpl(
      _$SystemPickerStateInitialImpl _value,
      $Res Function(_$SystemPickerStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SystemPickerStateInitialImpl implements SystemPickerStateInitial {
  const _$SystemPickerStateInitialImpl();

  @override
  String toString() {
    return 'SystemPickerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemPickerStateInitialImpl);
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
    TResult? Function()? initial,
    TResult? Function()? selectingImages,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult? Function()? imagesNotSelected,
    TResult? Function(List<XFile> files)? imagesSelected,
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
    TResult? Function(SystemPickerStateInitial value)? initial,
    TResult? Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult? Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult? Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult? Function(SystemPickerStateImagesSelected value)? imagesSelected,
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
  const factory SystemPickerStateInitial() = _$SystemPickerStateInitialImpl;
}

/// @nodoc
abstract class _$$SystemPickerStateSelectingImagesImplCopyWith<$Res> {
  factory _$$SystemPickerStateSelectingImagesImplCopyWith(
          _$SystemPickerStateSelectingImagesImpl value,
          $Res Function(_$SystemPickerStateSelectingImagesImpl) then) =
      __$$SystemPickerStateSelectingImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SystemPickerStateSelectingImagesImplCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res,
        _$SystemPickerStateSelectingImagesImpl>
    implements _$$SystemPickerStateSelectingImagesImplCopyWith<$Res> {
  __$$SystemPickerStateSelectingImagesImplCopyWithImpl(
      _$SystemPickerStateSelectingImagesImpl _value,
      $Res Function(_$SystemPickerStateSelectingImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SystemPickerStateSelectingImagesImpl
    implements SystemPickerStateSelectingImages {
  const _$SystemPickerStateSelectingImagesImpl();

  @override
  String toString() {
    return 'SystemPickerState.selectingImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemPickerStateSelectingImagesImpl);
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
    TResult? Function()? initial,
    TResult? Function()? selectingImages,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult? Function()? imagesNotSelected,
    TResult? Function(List<XFile> files)? imagesSelected,
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
    TResult? Function(SystemPickerStateInitial value)? initial,
    TResult? Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult? Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult? Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult? Function(SystemPickerStateImagesSelected value)? imagesSelected,
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
      _$SystemPickerStateSelectingImagesImpl;
}

/// @nodoc
abstract class _$$SystemPickerStateSelectImagesFailedImplCopyWith<$Res> {
  factory _$$SystemPickerStateSelectImagesFailedImplCopyWith(
          _$SystemPickerStateSelectImagesFailedImpl value,
          $Res Function(_$SystemPickerStateSelectImagesFailedImpl) then) =
      __$$SystemPickerStateSelectImagesFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$SystemPickerStateSelectImagesFailedImplCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res,
        _$SystemPickerStateSelectImagesFailedImpl>
    implements _$$SystemPickerStateSelectImagesFailedImplCopyWith<$Res> {
  __$$SystemPickerStateSelectImagesFailedImplCopyWithImpl(
      _$SystemPickerStateSelectImagesFailedImpl _value,
      $Res Function(_$SystemPickerStateSelectImagesFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$SystemPickerStateSelectImagesFailedImpl(
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

class _$SystemPickerStateSelectImagesFailedImpl
    implements SystemPickerStateSelectImagesFailed {
  const _$SystemPickerStateSelectImagesFailedImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemPickerStateSelectImagesFailedImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemPickerStateSelectImagesFailedImplCopyWith<
          _$SystemPickerStateSelectImagesFailedImpl>
      get copyWith => __$$SystemPickerStateSelectImagesFailedImplCopyWithImpl<
          _$SystemPickerStateSelectImagesFailedImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? selectingImages,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult? Function()? imagesNotSelected,
    TResult? Function(List<XFile> files)? imagesSelected,
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
    TResult? Function(SystemPickerStateInitial value)? initial,
    TResult? Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult? Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult? Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult? Function(SystemPickerStateImagesSelected value)? imagesSelected,
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
          {final Exception? exception, final StackTrace? stackTrace}) =
      _$SystemPickerStateSelectImagesFailedImpl;

  Exception? get exception;
  StackTrace? get stackTrace;

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemPickerStateSelectImagesFailedImplCopyWith<
          _$SystemPickerStateSelectImagesFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SystemPickerStateImagesNotSelectedImplCopyWith<$Res> {
  factory _$$SystemPickerStateImagesNotSelectedImplCopyWith(
          _$SystemPickerStateImagesNotSelectedImpl value,
          $Res Function(_$SystemPickerStateImagesNotSelectedImpl) then) =
      __$$SystemPickerStateImagesNotSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SystemPickerStateImagesNotSelectedImplCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res,
        _$SystemPickerStateImagesNotSelectedImpl>
    implements _$$SystemPickerStateImagesNotSelectedImplCopyWith<$Res> {
  __$$SystemPickerStateImagesNotSelectedImplCopyWithImpl(
      _$SystemPickerStateImagesNotSelectedImpl _value,
      $Res Function(_$SystemPickerStateImagesNotSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SystemPickerStateImagesNotSelectedImpl
    implements SystemPickerStateImagesNotSelected {
  const _$SystemPickerStateImagesNotSelectedImpl();

  @override
  String toString() {
    return 'SystemPickerState.imagesNotSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemPickerStateImagesNotSelectedImpl);
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
    TResult? Function()? initial,
    TResult? Function()? selectingImages,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult? Function()? imagesNotSelected,
    TResult? Function(List<XFile> files)? imagesSelected,
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
    TResult? Function(SystemPickerStateInitial value)? initial,
    TResult? Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult? Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult? Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult? Function(SystemPickerStateImagesSelected value)? imagesSelected,
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
      _$SystemPickerStateImagesNotSelectedImpl;
}

/// @nodoc
abstract class _$$SystemPickerStateImagesSelectedImplCopyWith<$Res> {
  factory _$$SystemPickerStateImagesSelectedImplCopyWith(
          _$SystemPickerStateImagesSelectedImpl value,
          $Res Function(_$SystemPickerStateImagesSelectedImpl) then) =
      __$$SystemPickerStateImagesSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<XFile> files});
}

/// @nodoc
class __$$SystemPickerStateImagesSelectedImplCopyWithImpl<$Res>
    extends _$SystemPickerStateCopyWithImpl<$Res,
        _$SystemPickerStateImagesSelectedImpl>
    implements _$$SystemPickerStateImagesSelectedImplCopyWith<$Res> {
  __$$SystemPickerStateImagesSelectedImplCopyWithImpl(
      _$SystemPickerStateImagesSelectedImpl _value,
      $Res Function(_$SystemPickerStateImagesSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$SystemPickerStateImagesSelectedImpl(
      null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$SystemPickerStateImagesSelectedImpl
    implements SystemPickerStateImagesSelected {
  const _$SystemPickerStateImagesSelectedImpl(final List<XFile> files)
      : _files = files;

  final List<XFile> _files;
  @override
  List<XFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'SystemPickerState.imagesSelected(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemPickerStateImagesSelectedImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemPickerStateImagesSelectedImplCopyWith<
          _$SystemPickerStateImagesSelectedImpl>
      get copyWith => __$$SystemPickerStateImagesSelectedImplCopyWithImpl<
          _$SystemPickerStateImagesSelectedImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? selectingImages,
    TResult? Function(Exception? exception, StackTrace? stackTrace)?
        selectImagesFailed,
    TResult? Function()? imagesNotSelected,
    TResult? Function(List<XFile> files)? imagesSelected,
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
    TResult? Function(SystemPickerStateInitial value)? initial,
    TResult? Function(SystemPickerStateSelectingImages value)? selectingImages,
    TResult? Function(SystemPickerStateSelectImagesFailed value)?
        selectImagesFailed,
    TResult? Function(SystemPickerStateImagesNotSelected value)?
        imagesNotSelected,
    TResult? Function(SystemPickerStateImagesSelected value)? imagesSelected,
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
  const factory SystemPickerStateImagesSelected(final List<XFile> files) =
      _$SystemPickerStateImagesSelectedImpl;

  List<XFile> get files;

  /// Create a copy of SystemPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemPickerStateImagesSelectedImplCopyWith<
          _$SystemPickerStateImagesSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
