// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image_options_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefImageOptionsState {
  RefImageOptions? get options => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageOptions? options) initial,
    required TResult Function(RefImageOptions options) loaded,
    required TResult Function(RefImageOptions options) opacityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RefImageOptions? options)? initial,
    TResult? Function(RefImageOptions options)? loaded,
    TResult? Function(RefImageOptions options)? opacityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageOptions? options)? initial,
    TResult Function(RefImageOptions options)? loaded,
    TResult Function(RefImageOptions options)? opacityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImageOptionsStateInitial value) initial,
    required TResult Function(RefImageOptionsStateLoaded value) loaded,
    required TResult Function(RefImageOptionsStateOpacityChanged value)
        opacityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageOptionsStateInitial value)? initial,
    TResult? Function(RefImageOptionsStateLoaded value)? loaded,
    TResult? Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
    TResult Function(RefImageOptionsStateLoaded value)? loaded,
    TResult Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefImageOptionsStateCopyWith<RefImageOptionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageOptionsStateCopyWith<$Res> {
  factory $RefImageOptionsStateCopyWith(RefImageOptionsState value,
          $Res Function(RefImageOptionsState) then) =
      _$RefImageOptionsStateCopyWithImpl<$Res, RefImageOptionsState>;
  @useResult
  $Res call({RefImageOptions options});

  $RefImageOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class _$RefImageOptionsStateCopyWithImpl<$Res,
        $Val extends RefImageOptionsState>
    implements $RefImageOptionsStateCopyWith<$Res> {
  _$RefImageOptionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      options: null == options
          ? _value.options!
          : options // ignore: cast_nullable_to_non_nullable
              as RefImageOptions,
    ) as $Val);
  }

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageOptionsCopyWith<$Res>? get options {
    if (_value.options == null) {
      return null;
    }

    return $RefImageOptionsCopyWith<$Res>(_value.options!, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefImageOptionsStateInitialImplCopyWith<$Res>
    implements $RefImageOptionsStateCopyWith<$Res> {
  factory _$$RefImageOptionsStateInitialImplCopyWith(
          _$RefImageOptionsStateInitialImpl value,
          $Res Function(_$RefImageOptionsStateInitialImpl) then) =
      __$$RefImageOptionsStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RefImageOptions? options});

  @override
  $RefImageOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class __$$RefImageOptionsStateInitialImplCopyWithImpl<$Res>
    extends _$RefImageOptionsStateCopyWithImpl<$Res,
        _$RefImageOptionsStateInitialImpl>
    implements _$$RefImageOptionsStateInitialImplCopyWith<$Res> {
  __$$RefImageOptionsStateInitialImplCopyWithImpl(
      _$RefImageOptionsStateInitialImpl _value,
      $Res Function(_$RefImageOptionsStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = freezed,
  }) {
    return _then(_$RefImageOptionsStateInitialImpl(
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as RefImageOptions?,
    ));
  }
}

/// @nodoc

class _$RefImageOptionsStateInitialImpl
    with DiagnosticableTreeMixin
    implements RefImageOptionsStateInitial {
  const _$RefImageOptionsStateInitialImpl({this.options = null});

  @override
  @JsonKey()
  final RefImageOptions? options;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageOptionsState.initial(options: $options)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImageOptionsState.initial'))
      ..add(DiagnosticsProperty('options', options));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageOptionsStateInitialImpl &&
            (identical(other.options, options) || other.options == options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, options);

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageOptionsStateInitialImplCopyWith<_$RefImageOptionsStateInitialImpl>
      get copyWith => __$$RefImageOptionsStateInitialImplCopyWithImpl<
          _$RefImageOptionsStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageOptions? options) initial,
    required TResult Function(RefImageOptions options) loaded,
    required TResult Function(RefImageOptions options) opacityChanged,
  }) {
    return initial(options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RefImageOptions? options)? initial,
    TResult? Function(RefImageOptions options)? loaded,
    TResult? Function(RefImageOptions options)? opacityChanged,
  }) {
    return initial?.call(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageOptions? options)? initial,
    TResult Function(RefImageOptions options)? loaded,
    TResult Function(RefImageOptions options)? opacityChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImageOptionsStateInitial value) initial,
    required TResult Function(RefImageOptionsStateLoaded value) loaded,
    required TResult Function(RefImageOptionsStateOpacityChanged value)
        opacityChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageOptionsStateInitial value)? initial,
    TResult? Function(RefImageOptionsStateLoaded value)? loaded,
    TResult? Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
    TResult Function(RefImageOptionsStateLoaded value)? loaded,
    TResult Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RefImageOptionsStateInitial implements RefImageOptionsState {
  const factory RefImageOptionsStateInitial({final RefImageOptions? options}) =
      _$RefImageOptionsStateInitialImpl;

  @override
  RefImageOptions? get options;

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageOptionsStateInitialImplCopyWith<_$RefImageOptionsStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefImageOptionsStateLoadedImplCopyWith<$Res>
    implements $RefImageOptionsStateCopyWith<$Res> {
  factory _$$RefImageOptionsStateLoadedImplCopyWith(
          _$RefImageOptionsStateLoadedImpl value,
          $Res Function(_$RefImageOptionsStateLoadedImpl) then) =
      __$$RefImageOptionsStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RefImageOptions options});

  @override
  $RefImageOptionsCopyWith<$Res> get options;
}

/// @nodoc
class __$$RefImageOptionsStateLoadedImplCopyWithImpl<$Res>
    extends _$RefImageOptionsStateCopyWithImpl<$Res,
        _$RefImageOptionsStateLoadedImpl>
    implements _$$RefImageOptionsStateLoadedImplCopyWith<$Res> {
  __$$RefImageOptionsStateLoadedImplCopyWithImpl(
      _$RefImageOptionsStateLoadedImpl _value,
      $Res Function(_$RefImageOptionsStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
  }) {
    return _then(_$RefImageOptionsStateLoadedImpl(
      null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as RefImageOptions,
    ));
  }

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageOptionsCopyWith<$Res> get options {
    return $RefImageOptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value));
    });
  }
}

/// @nodoc

class _$RefImageOptionsStateLoadedImpl
    with DiagnosticableTreeMixin
    implements RefImageOptionsStateLoaded {
  const _$RefImageOptionsStateLoadedImpl(this.options);

  @override
  final RefImageOptions options;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageOptionsState.loaded(options: $options)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImageOptionsState.loaded'))
      ..add(DiagnosticsProperty('options', options));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageOptionsStateLoadedImpl &&
            (identical(other.options, options) || other.options == options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, options);

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageOptionsStateLoadedImplCopyWith<_$RefImageOptionsStateLoadedImpl>
      get copyWith => __$$RefImageOptionsStateLoadedImplCopyWithImpl<
          _$RefImageOptionsStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageOptions? options) initial,
    required TResult Function(RefImageOptions options) loaded,
    required TResult Function(RefImageOptions options) opacityChanged,
  }) {
    return loaded(options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RefImageOptions? options)? initial,
    TResult? Function(RefImageOptions options)? loaded,
    TResult? Function(RefImageOptions options)? opacityChanged,
  }) {
    return loaded?.call(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageOptions? options)? initial,
    TResult Function(RefImageOptions options)? loaded,
    TResult Function(RefImageOptions options)? opacityChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImageOptionsStateInitial value) initial,
    required TResult Function(RefImageOptionsStateLoaded value) loaded,
    required TResult Function(RefImageOptionsStateOpacityChanged value)
        opacityChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageOptionsStateInitial value)? initial,
    TResult? Function(RefImageOptionsStateLoaded value)? loaded,
    TResult? Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
    TResult Function(RefImageOptionsStateLoaded value)? loaded,
    TResult Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RefImageOptionsStateLoaded implements RefImageOptionsState {
  const factory RefImageOptionsStateLoaded(final RefImageOptions options) =
      _$RefImageOptionsStateLoadedImpl;

  @override
  RefImageOptions get options;

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageOptionsStateLoadedImplCopyWith<_$RefImageOptionsStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefImageOptionsStateOpacityChangedImplCopyWith<$Res>
    implements $RefImageOptionsStateCopyWith<$Res> {
  factory _$$RefImageOptionsStateOpacityChangedImplCopyWith(
          _$RefImageOptionsStateOpacityChangedImpl value,
          $Res Function(_$RefImageOptionsStateOpacityChangedImpl) then) =
      __$$RefImageOptionsStateOpacityChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RefImageOptions options});

  @override
  $RefImageOptionsCopyWith<$Res> get options;
}

/// @nodoc
class __$$RefImageOptionsStateOpacityChangedImplCopyWithImpl<$Res>
    extends _$RefImageOptionsStateCopyWithImpl<$Res,
        _$RefImageOptionsStateOpacityChangedImpl>
    implements _$$RefImageOptionsStateOpacityChangedImplCopyWith<$Res> {
  __$$RefImageOptionsStateOpacityChangedImplCopyWithImpl(
      _$RefImageOptionsStateOpacityChangedImpl _value,
      $Res Function(_$RefImageOptionsStateOpacityChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
  }) {
    return _then(_$RefImageOptionsStateOpacityChangedImpl(
      null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as RefImageOptions,
    ));
  }

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageOptionsCopyWith<$Res> get options {
    return $RefImageOptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value));
    });
  }
}

/// @nodoc

class _$RefImageOptionsStateOpacityChangedImpl
    with DiagnosticableTreeMixin
    implements RefImageOptionsStateOpacityChanged {
  const _$RefImageOptionsStateOpacityChangedImpl(this.options);

  @override
  final RefImageOptions options;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageOptionsState.opacityChanged(options: $options)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImageOptionsState.opacityChanged'))
      ..add(DiagnosticsProperty('options', options));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageOptionsStateOpacityChangedImpl &&
            (identical(other.options, options) || other.options == options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, options);

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageOptionsStateOpacityChangedImplCopyWith<
          _$RefImageOptionsStateOpacityChangedImpl>
      get copyWith => __$$RefImageOptionsStateOpacityChangedImplCopyWithImpl<
          _$RefImageOptionsStateOpacityChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageOptions? options) initial,
    required TResult Function(RefImageOptions options) loaded,
    required TResult Function(RefImageOptions options) opacityChanged,
  }) {
    return opacityChanged(options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RefImageOptions? options)? initial,
    TResult? Function(RefImageOptions options)? loaded,
    TResult? Function(RefImageOptions options)? opacityChanged,
  }) {
    return opacityChanged?.call(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageOptions? options)? initial,
    TResult Function(RefImageOptions options)? loaded,
    TResult Function(RefImageOptions options)? opacityChanged,
    required TResult orElse(),
  }) {
    if (opacityChanged != null) {
      return opacityChanged(options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImageOptionsStateInitial value) initial,
    required TResult Function(RefImageOptionsStateLoaded value) loaded,
    required TResult Function(RefImageOptionsStateOpacityChanged value)
        opacityChanged,
  }) {
    return opacityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefImageOptionsStateInitial value)? initial,
    TResult? Function(RefImageOptionsStateLoaded value)? loaded,
    TResult? Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
  }) {
    return opacityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
    TResult Function(RefImageOptionsStateLoaded value)? loaded,
    TResult Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
    required TResult orElse(),
  }) {
    if (opacityChanged != null) {
      return opacityChanged(this);
    }
    return orElse();
  }
}

abstract class RefImageOptionsStateOpacityChanged
    implements RefImageOptionsState {
  const factory RefImageOptionsStateOpacityChanged(
      final RefImageOptions options) = _$RefImageOptionsStateOpacityChangedImpl;

  @override
  RefImageOptions get options;

  /// Create a copy of RefImageOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageOptionsStateOpacityChangedImplCopyWith<
          _$RefImageOptionsStateOpacityChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RefImageOptions {
  double get opacity => throw _privateConstructorUsedError;

  /// Create a copy of RefImageOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefImageOptionsCopyWith<RefImageOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageOptionsCopyWith<$Res> {
  factory $RefImageOptionsCopyWith(
          RefImageOptions value, $Res Function(RefImageOptions) then) =
      _$RefImageOptionsCopyWithImpl<$Res, RefImageOptions>;
  @useResult
  $Res call({double opacity});
}

/// @nodoc
class _$RefImageOptionsCopyWithImpl<$Res, $Val extends RefImageOptions>
    implements $RefImageOptionsCopyWith<$Res> {
  _$RefImageOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImageOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opacity = null,
  }) {
    return _then(_value.copyWith(
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefImageOptionsImplCopyWith<$Res>
    implements $RefImageOptionsCopyWith<$Res> {
  factory _$$RefImageOptionsImplCopyWith(_$RefImageOptionsImpl value,
          $Res Function(_$RefImageOptionsImpl) then) =
      __$$RefImageOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double opacity});
}

/// @nodoc
class __$$RefImageOptionsImplCopyWithImpl<$Res>
    extends _$RefImageOptionsCopyWithImpl<$Res, _$RefImageOptionsImpl>
    implements _$$RefImageOptionsImplCopyWith<$Res> {
  __$$RefImageOptionsImplCopyWithImpl(
      _$RefImageOptionsImpl _value, $Res Function(_$RefImageOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opacity = null,
  }) {
    return _then(_$RefImageOptionsImpl(
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RefImageOptionsImpl
    with DiagnosticableTreeMixin
    implements _RefImageOptions {
  const _$RefImageOptionsImpl({required this.opacity});

  @override
  final double opacity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageOptions(opacity: $opacity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImageOptions'))
      ..add(DiagnosticsProperty('opacity', opacity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageOptionsImpl &&
            (identical(other.opacity, opacity) || other.opacity == opacity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, opacity);

  /// Create a copy of RefImageOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageOptionsImplCopyWith<_$RefImageOptionsImpl> get copyWith =>
      __$$RefImageOptionsImplCopyWithImpl<_$RefImageOptionsImpl>(
          this, _$identity);
}

abstract class _RefImageOptions implements RefImageOptions {
  const factory _RefImageOptions({required final double opacity}) =
      _$RefImageOptionsImpl;

  @override
  double get opacity;

  /// Create a copy of RefImageOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageOptionsImplCopyWith<_$RefImageOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
