// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function(CameraInfo info)? initial,
    TResult? Function(CameraInfo info)? enableFlashChanged,
    TResult? Function(CameraInfo info)? fullscreenModeChanged,
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
    TResult? Function(CameraStateInitial value)? initial,
    TResult? Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult? Function(CameraStateFullscreenModeChanged value)?
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

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call({CameraInfo info});

  $CameraInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ) as $Val);
  }

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CameraInfoCopyWith<$Res> get info {
    return $CameraInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CameraStateInitialImplCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$CameraStateInitialImplCopyWith(_$CameraStateInitialImpl value,
          $Res Function(_$CameraStateInitialImpl) then) =
      __$$CameraStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CameraInfo info});

  @override
  $CameraInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$CameraStateInitialImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraStateInitialImpl>
    implements _$$CameraStateInitialImplCopyWith<$Res> {
  __$$CameraStateInitialImplCopyWithImpl(_$CameraStateInitialImpl _value,
      $Res Function(_$CameraStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$CameraStateInitialImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ));
  }
}

/// @nodoc

class _$CameraStateInitialImpl
    with DiagnosticableTreeMixin
    implements CameraStateInitial {
  const _$CameraStateInitialImpl(this.info);

  @override
  final CameraInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState.initial(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState.initial'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraStateInitialImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraStateInitialImplCopyWith<_$CameraStateInitialImpl> get copyWith =>
      __$$CameraStateInitialImplCopyWithImpl<_$CameraStateInitialImpl>(
          this, _$identity);

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
    TResult? Function(CameraInfo info)? initial,
    TResult? Function(CameraInfo info)? enableFlashChanged,
    TResult? Function(CameraInfo info)? fullscreenModeChanged,
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
    TResult? Function(CameraStateInitial value)? initial,
    TResult? Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult? Function(CameraStateFullscreenModeChanged value)?
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
  const factory CameraStateInitial(final CameraInfo info) =
      _$CameraStateInitialImpl;

  @override
  CameraInfo get info;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraStateInitialImplCopyWith<_$CameraStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraStateEnableFlashChangedImplCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$CameraStateEnableFlashChangedImplCopyWith(
          _$CameraStateEnableFlashChangedImpl value,
          $Res Function(_$CameraStateEnableFlashChangedImpl) then) =
      __$$CameraStateEnableFlashChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CameraInfo info});

  @override
  $CameraInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$CameraStateEnableFlashChangedImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraStateEnableFlashChangedImpl>
    implements _$$CameraStateEnableFlashChangedImplCopyWith<$Res> {
  __$$CameraStateEnableFlashChangedImplCopyWithImpl(
      _$CameraStateEnableFlashChangedImpl _value,
      $Res Function(_$CameraStateEnableFlashChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$CameraStateEnableFlashChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ));
  }
}

/// @nodoc

class _$CameraStateEnableFlashChangedImpl
    with DiagnosticableTreeMixin
    implements CameraStateEnableFlashChanged {
  const _$CameraStateEnableFlashChangedImpl(this.info);

  @override
  final CameraInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState.enableFlashChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState.enableFlashChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraStateEnableFlashChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraStateEnableFlashChangedImplCopyWith<
          _$CameraStateEnableFlashChangedImpl>
      get copyWith => __$$CameraStateEnableFlashChangedImplCopyWithImpl<
          _$CameraStateEnableFlashChangedImpl>(this, _$identity);

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
    TResult? Function(CameraInfo info)? initial,
    TResult? Function(CameraInfo info)? enableFlashChanged,
    TResult? Function(CameraInfo info)? fullscreenModeChanged,
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
    TResult? Function(CameraStateInitial value)? initial,
    TResult? Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult? Function(CameraStateFullscreenModeChanged value)?
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
  const factory CameraStateEnableFlashChanged(final CameraInfo info) =
      _$CameraStateEnableFlashChangedImpl;

  @override
  CameraInfo get info;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraStateEnableFlashChangedImplCopyWith<
          _$CameraStateEnableFlashChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraStateFullscreenModeChangedImplCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$CameraStateFullscreenModeChangedImplCopyWith(
          _$CameraStateFullscreenModeChangedImpl value,
          $Res Function(_$CameraStateFullscreenModeChangedImpl) then) =
      __$$CameraStateFullscreenModeChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CameraInfo info});

  @override
  $CameraInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$CameraStateFullscreenModeChangedImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res,
        _$CameraStateFullscreenModeChangedImpl>
    implements _$$CameraStateFullscreenModeChangedImplCopyWith<$Res> {
  __$$CameraStateFullscreenModeChangedImplCopyWithImpl(
      _$CameraStateFullscreenModeChangedImpl _value,
      $Res Function(_$CameraStateFullscreenModeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$CameraStateFullscreenModeChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ));
  }
}

/// @nodoc

class _$CameraStateFullscreenModeChangedImpl
    with DiagnosticableTreeMixin
    implements CameraStateFullscreenModeChanged {
  const _$CameraStateFullscreenModeChangedImpl(this.info);

  @override
  final CameraInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState.fullscreenModeChanged(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState.fullscreenModeChanged'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraStateFullscreenModeChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraStateFullscreenModeChangedImplCopyWith<
          _$CameraStateFullscreenModeChangedImpl>
      get copyWith => __$$CameraStateFullscreenModeChangedImplCopyWithImpl<
          _$CameraStateFullscreenModeChangedImpl>(this, _$identity);

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
    TResult? Function(CameraInfo info)? initial,
    TResult? Function(CameraInfo info)? enableFlashChanged,
    TResult? Function(CameraInfo info)? fullscreenModeChanged,
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
    TResult? Function(CameraStateInitial value)? initial,
    TResult? Function(CameraStateEnableFlashChanged value)? enableFlashChanged,
    TResult? Function(CameraStateFullscreenModeChanged value)?
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
  const factory CameraStateFullscreenModeChanged(final CameraInfo info) =
      _$CameraStateFullscreenModeChangedImpl;

  @override
  CameraInfo get info;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraStateFullscreenModeChangedImplCopyWith<
          _$CameraStateFullscreenModeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CameraInfo {
  bool get enableFlashByDefault => throw _privateConstructorUsedError;
  bool get fullscreenMode => throw _privateConstructorUsedError;

  /// Create a copy of CameraInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CameraInfoCopyWith<CameraInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraInfoCopyWith<$Res> {
  factory $CameraInfoCopyWith(
          CameraInfo value, $Res Function(CameraInfo) then) =
      _$CameraInfoCopyWithImpl<$Res, CameraInfo>;
  @useResult
  $Res call({bool enableFlashByDefault, bool fullscreenMode});
}

/// @nodoc
class _$CameraInfoCopyWithImpl<$Res, $Val extends CameraInfo>
    implements $CameraInfoCopyWith<$Res> {
  _$CameraInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableFlashByDefault = null,
    Object? fullscreenMode = null,
  }) {
    return _then(_value.copyWith(
      enableFlashByDefault: null == enableFlashByDefault
          ? _value.enableFlashByDefault
          : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      fullscreenMode: null == fullscreenMode
          ? _value.fullscreenMode
          : fullscreenMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraInfoImplCopyWith<$Res>
    implements $CameraInfoCopyWith<$Res> {
  factory _$$CameraInfoImplCopyWith(
          _$CameraInfoImpl value, $Res Function(_$CameraInfoImpl) then) =
      __$$CameraInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enableFlashByDefault, bool fullscreenMode});
}

/// @nodoc
class __$$CameraInfoImplCopyWithImpl<$Res>
    extends _$CameraInfoCopyWithImpl<$Res, _$CameraInfoImpl>
    implements _$$CameraInfoImplCopyWith<$Res> {
  __$$CameraInfoImplCopyWithImpl(
      _$CameraInfoImpl _value, $Res Function(_$CameraInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableFlashByDefault = null,
    Object? fullscreenMode = null,
  }) {
    return _then(_$CameraInfoImpl(
      enableFlashByDefault: null == enableFlashByDefault
          ? _value.enableFlashByDefault
          : enableFlashByDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      fullscreenMode: null == fullscreenMode
          ? _value.fullscreenMode
          : fullscreenMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CameraInfoImpl with DiagnosticableTreeMixin implements _CameraInfo {
  const _$CameraInfoImpl(
      {required this.enableFlashByDefault, required this.fullscreenMode});

  @override
  final bool enableFlashByDefault;
  @override
  final bool fullscreenMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraInfo(enableFlashByDefault: $enableFlashByDefault, fullscreenMode: $fullscreenMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraInfo'))
      ..add(DiagnosticsProperty('enableFlashByDefault', enableFlashByDefault))
      ..add(DiagnosticsProperty('fullscreenMode', fullscreenMode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraInfoImpl &&
            (identical(other.enableFlashByDefault, enableFlashByDefault) ||
                other.enableFlashByDefault == enableFlashByDefault) &&
            (identical(other.fullscreenMode, fullscreenMode) ||
                other.fullscreenMode == fullscreenMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, enableFlashByDefault, fullscreenMode);

  /// Create a copy of CameraInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraInfoImplCopyWith<_$CameraInfoImpl> get copyWith =>
      __$$CameraInfoImplCopyWithImpl<_$CameraInfoImpl>(this, _$identity);
}

abstract class _CameraInfo implements CameraInfo {
  const factory _CameraInfo(
      {required final bool enableFlashByDefault,
      required final bool fullscreenMode}) = _$CameraInfoImpl;

  @override
  bool get enableFlashByDefault;
  @override
  bool get fullscreenMode;

  /// Create a copy of CameraInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraInfoImplCopyWith<_$CameraInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
