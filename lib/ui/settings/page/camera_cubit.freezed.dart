// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CameraStateTearOff {
  const _$CameraStateTearOff();

  CameraStateInitial initial(CameraInfo info) {
    return CameraStateInitial(
      info,
    );
  }

  CameraStateEnableFlashChanged enableFlashChanged(CameraInfo info) {
    return CameraStateEnableFlashChanged(
      info,
    );
  }

  CameraStateFullscreenModeChanged fullscreenModeChanged(CameraInfo info) {
    return CameraStateFullscreenModeChanged(
      info,
    );
  }
}

/// @nodoc
const $CameraState = _$CameraStateTearOff();

/// @nodoc
mixin _$CameraState {
  CameraInfo get info => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraInfo info) initial,
    required TResult Function(CameraInfo info) enableFlashChanged,
    required TResult Function(CameraInfo info) fullscreenModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CameraInfo info)? initial,
    TResult Function(CameraInfo info)? enableFlashChanged,
    TResult Function(CameraInfo info)? fullscreenModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraInfo info)? initial,
    TResult Function(CameraInfo info)? enableFlashChanged,
    TResult Function(CameraInfo info)? fullscreenModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraStateInitial value) initial,
    required TResult Function(CameraStateEnableFlashChanged value)
        enableFlashChanged,
    required TResult Function(CameraStateFullscreenModeChanged value)
        fullscreenModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraStateInitial value)? initial,
    TResult Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult Function(CameraStateFullscreenModeChanged value)?
        fullscreenModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraStateInitial value)? initial,
    TResult Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult Function(CameraStateFullscreenModeChanged value)?
        fullscreenModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res>;
  $Res call({CameraInfo info});

  $CameraInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res> implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  final CameraState _value;
  // ignore: unused_field
  final $Res Function(CameraState) _then;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ));
  }

  @override
  $CameraInfoCopyWith<$Res> get info {
    return $CameraInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $CameraStateInitialCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory $CameraStateInitialCopyWith(
          CameraStateInitial value, $Res Function(CameraStateInitial) then) =
      _$CameraStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({CameraInfo info});

  @override
  $CameraInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CameraStateInitialCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res>
    implements $CameraStateInitialCopyWith<$Res> {
  _$CameraStateInitialCopyWithImpl(
      CameraStateInitial _value, $Res Function(CameraStateInitial) _then)
      : super(_value, (v) => _then(v as CameraStateInitial));

  @override
  CameraStateInitial get _value => super._value as CameraStateInitial;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(CameraStateInitial(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ));
  }
}

/// @nodoc

class _$CameraStateInitial implements CameraStateInitial {
  const _$CameraStateInitial(this.info);

  @override
  final CameraInfo info;

  @override
  String toString() {
    return 'CameraState.initial(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraStateInitial &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $CameraStateInitialCopyWith<CameraStateInitial> get copyWith =>
      _$CameraStateInitialCopyWithImpl<CameraStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraInfo info) initial,
    required TResult Function(CameraInfo info) enableFlashChanged,
    required TResult Function(CameraInfo info) fullscreenModeChanged,
  }) {
    return initial(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CameraInfo info)? initial,
    TResult Function(CameraInfo info)? enableFlashChanged,
    TResult Function(CameraInfo info)? fullscreenModeChanged,
  }) {
    return initial?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraInfo info)? initial,
    TResult Function(CameraInfo info)? enableFlashChanged,
    TResult Function(CameraInfo info)? fullscreenModeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraStateInitial value) initial,
    required TResult Function(CameraStateEnableFlashChanged value)
        enableFlashChanged,
    required TResult Function(CameraStateFullscreenModeChanged value)
        fullscreenModeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraStateInitial value)? initial,
    TResult Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult Function(CameraStateFullscreenModeChanged value)?
        fullscreenModeChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraStateInitial value)? initial,
    TResult Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult Function(CameraStateFullscreenModeChanged value)?
        fullscreenModeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CameraStateInitial implements CameraState {
  const factory CameraStateInitial(CameraInfo info) = _$CameraStateInitial;

  @override
  CameraInfo get info;
  @override
  @JsonKey(ignore: true)
  $CameraStateInitialCopyWith<CameraStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateEnableFlashChangedCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory $CameraStateEnableFlashChangedCopyWith(
          CameraStateEnableFlashChanged value,
          $Res Function(CameraStateEnableFlashChanged) then) =
      _$CameraStateEnableFlashChangedCopyWithImpl<$Res>;
  @override
  $Res call({CameraInfo info});

  @override
  $CameraInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CameraStateEnableFlashChangedCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res>
    implements $CameraStateEnableFlashChangedCopyWith<$Res> {
  _$CameraStateEnableFlashChangedCopyWithImpl(
      CameraStateEnableFlashChanged _value,
      $Res Function(CameraStateEnableFlashChanged) _then)
      : super(_value, (v) => _then(v as CameraStateEnableFlashChanged));

  @override
  CameraStateEnableFlashChanged get _value =>
      super._value as CameraStateEnableFlashChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(CameraStateEnableFlashChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ));
  }
}

/// @nodoc

class _$CameraStateEnableFlashChanged implements CameraStateEnableFlashChanged {
  const _$CameraStateEnableFlashChanged(this.info);

  @override
  final CameraInfo info;

  @override
  String toString() {
    return 'CameraState.enableFlashChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraStateEnableFlashChanged &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $CameraStateEnableFlashChangedCopyWith<CameraStateEnableFlashChanged>
      get copyWith => _$CameraStateEnableFlashChangedCopyWithImpl<
          CameraStateEnableFlashChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraInfo info) initial,
    required TResult Function(CameraInfo info) enableFlashChanged,
    required TResult Function(CameraInfo info) fullscreenModeChanged,
  }) {
    return enableFlashChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CameraInfo info)? initial,
    TResult Function(CameraInfo info)? enableFlashChanged,
    TResult Function(CameraInfo info)? fullscreenModeChanged,
  }) {
    return enableFlashChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraInfo info)? initial,
    TResult Function(CameraInfo info)? enableFlashChanged,
    TResult Function(CameraInfo info)? fullscreenModeChanged,
    required TResult orElse(),
  }) {
    if (enableFlashChanged != null) {
      return enableFlashChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraStateInitial value) initial,
    required TResult Function(CameraStateEnableFlashChanged value)
        enableFlashChanged,
    required TResult Function(CameraStateFullscreenModeChanged value)
        fullscreenModeChanged,
  }) {
    return enableFlashChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraStateInitial value)? initial,
    TResult Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult Function(CameraStateFullscreenModeChanged value)?
        fullscreenModeChanged,
  }) {
    return enableFlashChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraStateInitial value)? initial,
    TResult Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult Function(CameraStateFullscreenModeChanged value)?
        fullscreenModeChanged,
    required TResult orElse(),
  }) {
    if (enableFlashChanged != null) {
      return enableFlashChanged(this);
    }
    return orElse();
  }
}

abstract class CameraStateEnableFlashChanged implements CameraState {
  const factory CameraStateEnableFlashChanged(CameraInfo info) =
      _$CameraStateEnableFlashChanged;

  @override
  CameraInfo get info;
  @override
  @JsonKey(ignore: true)
  $CameraStateEnableFlashChangedCopyWith<CameraStateEnableFlashChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateFullscreenModeChangedCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory $CameraStateFullscreenModeChangedCopyWith(
          CameraStateFullscreenModeChanged value,
          $Res Function(CameraStateFullscreenModeChanged) then) =
      _$CameraStateFullscreenModeChangedCopyWithImpl<$Res>;
  @override
  $Res call({CameraInfo info});

  @override
  $CameraInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CameraStateFullscreenModeChangedCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res>
    implements $CameraStateFullscreenModeChangedCopyWith<$Res> {
  _$CameraStateFullscreenModeChangedCopyWithImpl(
      CameraStateFullscreenModeChanged _value,
      $Res Function(CameraStateFullscreenModeChanged) _then)
      : super(_value, (v) => _then(v as CameraStateFullscreenModeChanged));

  @override
  CameraStateFullscreenModeChanged get _value =>
      super._value as CameraStateFullscreenModeChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(CameraStateFullscreenModeChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ));
  }
}

/// @nodoc

class _$CameraStateFullscreenModeChanged
    implements CameraStateFullscreenModeChanged {
  const _$CameraStateFullscreenModeChanged(this.info);

  @override
  final CameraInfo info;

  @override
  String toString() {
    return 'CameraState.fullscreenModeChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraStateFullscreenModeChanged &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $CameraStateFullscreenModeChangedCopyWith<CameraStateFullscreenModeChanged>
      get copyWith => _$CameraStateFullscreenModeChangedCopyWithImpl<
          CameraStateFullscreenModeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraInfo info) initial,
    required TResult Function(CameraInfo info) enableFlashChanged,
    required TResult Function(CameraInfo info) fullscreenModeChanged,
  }) {
    return fullscreenModeChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CameraInfo info)? initial,
    TResult Function(CameraInfo info)? enableFlashChanged,
    TResult Function(CameraInfo info)? fullscreenModeChanged,
  }) {
    return fullscreenModeChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraInfo info)? initial,
    TResult Function(CameraInfo info)? enableFlashChanged,
    TResult Function(CameraInfo info)? fullscreenModeChanged,
    required TResult orElse(),
  }) {
    if (fullscreenModeChanged != null) {
      return fullscreenModeChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraStateInitial value) initial,
    required TResult Function(CameraStateEnableFlashChanged value)
        enableFlashChanged,
    required TResult Function(CameraStateFullscreenModeChanged value)
        fullscreenModeChanged,
  }) {
    return fullscreenModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CameraStateInitial value)? initial,
    TResult Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult Function(CameraStateFullscreenModeChanged value)?
        fullscreenModeChanged,
  }) {
    return fullscreenModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraStateInitial value)? initial,
    TResult Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult Function(CameraStateFullscreenModeChanged value)?
        fullscreenModeChanged,
    required TResult orElse(),
  }) {
    if (fullscreenModeChanged != null) {
      return fullscreenModeChanged(this);
    }
    return orElse();
  }
}

abstract class CameraStateFullscreenModeChanged implements CameraState {
  const factory CameraStateFullscreenModeChanged(CameraInfo info) =
      _$CameraStateFullscreenModeChanged;

  @override
  CameraInfo get info;
  @override
  @JsonKey(ignore: true)
  $CameraStateFullscreenModeChangedCopyWith<CameraStateFullscreenModeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CameraInfoTearOff {
  const _$CameraInfoTearOff();

  _CameraInfo call(
      {required bool enableFlashByDefault, required bool fullscreenMode}) {
    return _CameraInfo(
      enableFlashByDefault: enableFlashByDefault,
      fullscreenMode: fullscreenMode,
    );
  }
}

/// @nodoc
const $CameraInfo = _$CameraInfoTearOff();

/// @nodoc
mixin _$CameraInfo {
  bool get enableFlashByDefault => throw _privateConstructorUsedError;
  bool get fullscreenMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraInfoCopyWith<CameraInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraInfoCopyWith<$Res> {
  factory $CameraInfoCopyWith(
          CameraInfo value, $Res Function(CameraInfo) then) =
      _$CameraInfoCopyWithImpl<$Res>;
  $Res call({bool enableFlashByDefault, bool fullscreenMode});
}

/// @nodoc
class _$CameraInfoCopyWithImpl<$Res> implements $CameraInfoCopyWith<$Res> {
  _$CameraInfoCopyWithImpl(this._value, this._then);

  final CameraInfo _value;
  // ignore: unused_field
  final $Res Function(CameraInfo) _then;

  @override
  $Res call({
    Object? enableFlashByDefault = freezed,
    Object? fullscreenMode = freezed,
  }) {
    return _then(_value.copyWith(
      enableFlashByDefault: enableFlashByDefault == freezed
          ? _value.enableFlashByDefault
          : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      fullscreenMode: fullscreenMode == freezed
          ? _value.fullscreenMode
          : fullscreenMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CameraInfoCopyWith<$Res> implements $CameraInfoCopyWith<$Res> {
  factory _$CameraInfoCopyWith(
          _CameraInfo value, $Res Function(_CameraInfo) then) =
      __$CameraInfoCopyWithImpl<$Res>;
  @override
  $Res call({bool enableFlashByDefault, bool fullscreenMode});
}

/// @nodoc
class __$CameraInfoCopyWithImpl<$Res> extends _$CameraInfoCopyWithImpl<$Res>
    implements _$CameraInfoCopyWith<$Res> {
  __$CameraInfoCopyWithImpl(
      _CameraInfo _value, $Res Function(_CameraInfo) _then)
      : super(_value, (v) => _then(v as _CameraInfo));

  @override
  _CameraInfo get _value => super._value as _CameraInfo;

  @override
  $Res call({
    Object? enableFlashByDefault = freezed,
    Object? fullscreenMode = freezed,
  }) {
    return _then(_CameraInfo(
      enableFlashByDefault: enableFlashByDefault == freezed
          ? _value.enableFlashByDefault
          : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      fullscreenMode: fullscreenMode == freezed
          ? _value.fullscreenMode
          : fullscreenMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CameraInfo implements _CameraInfo {
  const _$_CameraInfo(
      {required this.enableFlashByDefault, required this.fullscreenMode});

  @override
  final bool enableFlashByDefault;
  @override
  final bool fullscreenMode;

  @override
  String toString() {
    return 'CameraInfo(enableFlashByDefault: $enableFlashByDefault, fullscreenMode: $fullscreenMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CameraInfo &&
            const DeepCollectionEquality()
                .equals(other.enableFlashByDefault, enableFlashByDefault) &&
            const DeepCollectionEquality()
                .equals(other.fullscreenMode, fullscreenMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(enableFlashByDefault),
      const DeepCollectionEquality().hash(fullscreenMode));

  @JsonKey(ignore: true)
  @override
  _$CameraInfoCopyWith<_CameraInfo> get copyWith =>
      __$CameraInfoCopyWithImpl<_CameraInfo>(this, _$identity);
}

abstract class _CameraInfo implements CameraInfo {
  const factory _CameraInfo(
      {required bool enableFlashByDefault,
      required bool fullscreenMode}) = _$_CameraInfo;

  @override
  bool get enableFlashByDefault;
  @override
  bool get fullscreenMode;
  @override
  @JsonKey(ignore: true)
  _$CameraInfoCopyWith<_CameraInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
