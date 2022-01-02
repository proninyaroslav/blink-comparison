// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ref_image_options_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RefImageOptionsStateTearOff {
  const _$RefImageOptionsStateTearOff();

  RefImageOptionsStateInitial initial(RefImageOptions options) {
    return RefImageOptionsStateInitial(
      options,
    );
  }

  RefImageOptionsStateOpacityChanged opacityChanged(RefImageOptions options) {
    return RefImageOptionsStateOpacityChanged(
      options,
    );
  }
}

/// @nodoc
const $RefImageOptionsState = _$RefImageOptionsStateTearOff();

/// @nodoc
mixin _$RefImageOptionsState {
  RefImageOptions get options => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageOptions options) initial,
    required TResult Function(RefImageOptions options) opacityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefImageOptions options)? initial,
    TResult Function(RefImageOptions options)? opacityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageOptions options)? initial,
    TResult Function(RefImageOptions options)? opacityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImageOptionsStateInitial value) initial,
    required TResult Function(RefImageOptionsStateOpacityChanged value)
        opacityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
    TResult Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
    TResult Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefImageOptionsStateCopyWith<RefImageOptionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageOptionsStateCopyWith<$Res> {
  factory $RefImageOptionsStateCopyWith(RefImageOptionsState value,
          $Res Function(RefImageOptionsState) then) =
      _$RefImageOptionsStateCopyWithImpl<$Res>;
  $Res call({RefImageOptions options});

  $RefImageOptionsCopyWith<$Res> get options;
}

/// @nodoc
class _$RefImageOptionsStateCopyWithImpl<$Res>
    implements $RefImageOptionsStateCopyWith<$Res> {
  _$RefImageOptionsStateCopyWithImpl(this._value, this._then);

  final RefImageOptionsState _value;
  // ignore: unused_field
  final $Res Function(RefImageOptionsState) _then;

  @override
  $Res call({
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as RefImageOptions,
    ));
  }

  @override
  $RefImageOptionsCopyWith<$Res> get options {
    return $RefImageOptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value));
    });
  }
}

/// @nodoc
abstract class $RefImageOptionsStateInitialCopyWith<$Res>
    implements $RefImageOptionsStateCopyWith<$Res> {
  factory $RefImageOptionsStateInitialCopyWith(
          RefImageOptionsStateInitial value,
          $Res Function(RefImageOptionsStateInitial) then) =
      _$RefImageOptionsStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({RefImageOptions options});

  @override
  $RefImageOptionsCopyWith<$Res> get options;
}

/// @nodoc
class _$RefImageOptionsStateInitialCopyWithImpl<$Res>
    extends _$RefImageOptionsStateCopyWithImpl<$Res>
    implements $RefImageOptionsStateInitialCopyWith<$Res> {
  _$RefImageOptionsStateInitialCopyWithImpl(RefImageOptionsStateInitial _value,
      $Res Function(RefImageOptionsStateInitial) _then)
      : super(_value, (v) => _then(v as RefImageOptionsStateInitial));

  @override
  RefImageOptionsStateInitial get _value =>
      super._value as RefImageOptionsStateInitial;

  @override
  $Res call({
    Object? options = freezed,
  }) {
    return _then(RefImageOptionsStateInitial(
      options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as RefImageOptions,
    ));
  }
}

/// @nodoc

class _$RefImageOptionsStateInitial implements RefImageOptionsStateInitial {
  const _$RefImageOptionsStateInitial(this.options);

  @override
  final RefImageOptions options;

  @override
  String toString() {
    return 'RefImageOptionsState.initial(options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImageOptionsStateInitial &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  $RefImageOptionsStateInitialCopyWith<RefImageOptionsStateInitial>
      get copyWith => _$RefImageOptionsStateInitialCopyWithImpl<
          RefImageOptionsStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageOptions options) initial,
    required TResult Function(RefImageOptions options) opacityChanged,
  }) {
    return initial(options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefImageOptions options)? initial,
    TResult Function(RefImageOptions options)? opacityChanged,
  }) {
    return initial?.call(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageOptions options)? initial,
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
    required TResult Function(RefImageOptionsStateOpacityChanged value)
        opacityChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
    TResult Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
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
  const factory RefImageOptionsStateInitial(RefImageOptions options) =
      _$RefImageOptionsStateInitial;

  @override
  RefImageOptions get options;
  @override
  @JsonKey(ignore: true)
  $RefImageOptionsStateInitialCopyWith<RefImageOptionsStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageOptionsStateOpacityChangedCopyWith<$Res>
    implements $RefImageOptionsStateCopyWith<$Res> {
  factory $RefImageOptionsStateOpacityChangedCopyWith(
          RefImageOptionsStateOpacityChanged value,
          $Res Function(RefImageOptionsStateOpacityChanged) then) =
      _$RefImageOptionsStateOpacityChangedCopyWithImpl<$Res>;
  @override
  $Res call({RefImageOptions options});

  @override
  $RefImageOptionsCopyWith<$Res> get options;
}

/// @nodoc
class _$RefImageOptionsStateOpacityChangedCopyWithImpl<$Res>
    extends _$RefImageOptionsStateCopyWithImpl<$Res>
    implements $RefImageOptionsStateOpacityChangedCopyWith<$Res> {
  _$RefImageOptionsStateOpacityChangedCopyWithImpl(
      RefImageOptionsStateOpacityChanged _value,
      $Res Function(RefImageOptionsStateOpacityChanged) _then)
      : super(_value, (v) => _then(v as RefImageOptionsStateOpacityChanged));

  @override
  RefImageOptionsStateOpacityChanged get _value =>
      super._value as RefImageOptionsStateOpacityChanged;

  @override
  $Res call({
    Object? options = freezed,
  }) {
    return _then(RefImageOptionsStateOpacityChanged(
      options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as RefImageOptions,
    ));
  }
}

/// @nodoc

class _$RefImageOptionsStateOpacityChanged
    implements RefImageOptionsStateOpacityChanged {
  const _$RefImageOptionsStateOpacityChanged(this.options);

  @override
  final RefImageOptions options;

  @override
  String toString() {
    return 'RefImageOptionsState.opacityChanged(options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImageOptionsStateOpacityChanged &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  $RefImageOptionsStateOpacityChangedCopyWith<
          RefImageOptionsStateOpacityChanged>
      get copyWith => _$RefImageOptionsStateOpacityChangedCopyWithImpl<
          RefImageOptionsStateOpacityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageOptions options) initial,
    required TResult Function(RefImageOptions options) opacityChanged,
  }) {
    return opacityChanged(options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefImageOptions options)? initial,
    TResult Function(RefImageOptions options)? opacityChanged,
  }) {
    return opacityChanged?.call(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageOptions options)? initial,
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
    required TResult Function(RefImageOptionsStateOpacityChanged value)
        opacityChanged,
  }) {
    return opacityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
    TResult Function(RefImageOptionsStateOpacityChanged value)? opacityChanged,
  }) {
    return opacityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImageOptionsStateInitial value)? initial,
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
  const factory RefImageOptionsStateOpacityChanged(RefImageOptions options) =
      _$RefImageOptionsStateOpacityChanged;

  @override
  RefImageOptions get options;
  @override
  @JsonKey(ignore: true)
  $RefImageOptionsStateOpacityChangedCopyWith<
          RefImageOptionsStateOpacityChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$RefImageOptionsTearOff {
  const _$RefImageOptionsTearOff();

  _RefImageOptions call({required double opacity}) {
    return _RefImageOptions(
      opacity: opacity,
    );
  }
}

/// @nodoc
const $RefImageOptions = _$RefImageOptionsTearOff();

/// @nodoc
mixin _$RefImageOptions {
  double get opacity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefImageOptionsCopyWith<RefImageOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageOptionsCopyWith<$Res> {
  factory $RefImageOptionsCopyWith(
          RefImageOptions value, $Res Function(RefImageOptions) then) =
      _$RefImageOptionsCopyWithImpl<$Res>;
  $Res call({double opacity});
}

/// @nodoc
class _$RefImageOptionsCopyWithImpl<$Res>
    implements $RefImageOptionsCopyWith<$Res> {
  _$RefImageOptionsCopyWithImpl(this._value, this._then);

  final RefImageOptions _value;
  // ignore: unused_field
  final $Res Function(RefImageOptions) _then;

  @override
  $Res call({
    Object? opacity = freezed,
  }) {
    return _then(_value.copyWith(
      opacity: opacity == freezed
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$RefImageOptionsCopyWith<$Res>
    implements $RefImageOptionsCopyWith<$Res> {
  factory _$RefImageOptionsCopyWith(
          _RefImageOptions value, $Res Function(_RefImageOptions) then) =
      __$RefImageOptionsCopyWithImpl<$Res>;
  @override
  $Res call({double opacity});
}

/// @nodoc
class __$RefImageOptionsCopyWithImpl<$Res>
    extends _$RefImageOptionsCopyWithImpl<$Res>
    implements _$RefImageOptionsCopyWith<$Res> {
  __$RefImageOptionsCopyWithImpl(
      _RefImageOptions _value, $Res Function(_RefImageOptions) _then)
      : super(_value, (v) => _then(v as _RefImageOptions));

  @override
  _RefImageOptions get _value => super._value as _RefImageOptions;

  @override
  $Res call({
    Object? opacity = freezed,
  }) {
    return _then(_RefImageOptions(
      opacity: opacity == freezed
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_RefImageOptions implements _RefImageOptions {
  const _$_RefImageOptions({required this.opacity});

  @override
  final double opacity;

  @override
  String toString() {
    return 'RefImageOptions(opacity: $opacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefImageOptions &&
            const DeepCollectionEquality().equals(other.opacity, opacity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(opacity));

  @JsonKey(ignore: true)
  @override
  _$RefImageOptionsCopyWith<_RefImageOptions> get copyWith =>
      __$RefImageOptionsCopyWithImpl<_RefImageOptions>(this, _$identity);
}

abstract class _RefImageOptions implements RefImageOptions {
  const factory _RefImageOptions({required double opacity}) =
      _$_RefImageOptions;

  @override
  double get opacity;
  @override
  @JsonKey(ignore: true)
  _$RefImageOptionsCopyWith<_RefImageOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
