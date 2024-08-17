// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appearance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppearanceState {
  AppearanceInfo get info => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) refImageBorderColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo info)? initial,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? refImageBorderColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateRefImageBorderColorChanged value)
        refImageBorderColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppearanceStateCopyWith<AppearanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateCopyWith(
          AppearanceState value, $Res Function(AppearanceState) then) =
      _$AppearanceStateCopyWithImpl<$Res, AppearanceState>;
  @useResult
  $Res call({AppearanceInfo info});

  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateCopyWithImpl<$Res, $Val extends AppearanceState>
    implements $AppearanceStateCopyWith<$Res> {
  _$AppearanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppearanceState
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
              as AppearanceInfo,
    ) as $Val);
  }

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppearanceStateInitialImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateInitialImplCopyWith(
          _$AppearanceStateInitialImpl value,
          $Res Function(_$AppearanceStateInitialImpl) then) =
      __$$AppearanceStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateInitialImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res, _$AppearanceStateInitialImpl>
    implements _$$AppearanceStateInitialImplCopyWith<$Res> {
  __$$AppearanceStateInitialImplCopyWithImpl(
      _$AppearanceStateInitialImpl _value,
      $Res Function(_$AppearanceStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateInitialImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateInitialImpl implements AppearanceStateInitial {
  const _$AppearanceStateInitialImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.initial(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateInitialImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateInitialImplCopyWith<_$AppearanceStateInitialImpl>
      get copyWith => __$$AppearanceStateInitialImplCopyWithImpl<
          _$AppearanceStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) refImageBorderColorChanged,
  }) {
    return initial(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo info)? initial,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? refImageBorderColorChanged,
  }) {
    return initial?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
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
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateRefImageBorderColorChanged value)
        refImageBorderColorChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateInitial implements AppearanceState {
  const factory AppearanceStateInitial(final AppearanceInfo info) =
      _$AppearanceStateInitialImpl;

  @override
  AppearanceInfo get info;

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppearanceStateInitialImplCopyWith<_$AppearanceStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateThemeChangedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateThemeChangedImplCopyWith(
          _$AppearanceStateThemeChangedImpl value,
          $Res Function(_$AppearanceStateThemeChangedImpl) then) =
      __$$AppearanceStateThemeChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateThemeChangedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res,
        _$AppearanceStateThemeChangedImpl>
    implements _$$AppearanceStateThemeChangedImplCopyWith<$Res> {
  __$$AppearanceStateThemeChangedImplCopyWithImpl(
      _$AppearanceStateThemeChangedImpl _value,
      $Res Function(_$AppearanceStateThemeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateThemeChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateThemeChangedImpl implements AppearanceStateThemeChanged {
  const _$AppearanceStateThemeChangedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.themeChanged(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateThemeChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateThemeChangedImplCopyWith<_$AppearanceStateThemeChangedImpl>
      get copyWith => __$$AppearanceStateThemeChangedImplCopyWithImpl<
          _$AppearanceStateThemeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) refImageBorderColorChanged,
  }) {
    return themeChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo info)? initial,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? refImageBorderColorChanged,
  }) {
    return themeChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateRefImageBorderColorChanged value)
        refImageBorderColorChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateThemeChanged implements AppearanceState {
  const factory AppearanceStateThemeChanged(final AppearanceInfo info) =
      _$AppearanceStateThemeChangedImpl;

  @override
  AppearanceInfo get info;

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppearanceStateThemeChangedImplCopyWith<_$AppearanceStateThemeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateLocaleChangedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateLocaleChangedImplCopyWith(
          _$AppearanceStateLocaleChangedImpl value,
          $Res Function(_$AppearanceStateLocaleChangedImpl) then) =
      __$$AppearanceStateLocaleChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateLocaleChangedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res,
        _$AppearanceStateLocaleChangedImpl>
    implements _$$AppearanceStateLocaleChangedImplCopyWith<$Res> {
  __$$AppearanceStateLocaleChangedImplCopyWithImpl(
      _$AppearanceStateLocaleChangedImpl _value,
      $Res Function(_$AppearanceStateLocaleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateLocaleChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateLocaleChangedImpl
    implements AppearanceStateLocaleChanged {
  const _$AppearanceStateLocaleChangedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.localeChanged(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateLocaleChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateLocaleChangedImplCopyWith<
          _$AppearanceStateLocaleChangedImpl>
      get copyWith => __$$AppearanceStateLocaleChangedImplCopyWithImpl<
          _$AppearanceStateLocaleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) refImageBorderColorChanged,
  }) {
    return localeChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo info)? initial,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? refImageBorderColorChanged,
  }) {
    return localeChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateRefImageBorderColorChanged value)
        refImageBorderColorChanged,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateLocaleChanged implements AppearanceState {
  const factory AppearanceStateLocaleChanged(final AppearanceInfo info) =
      _$AppearanceStateLocaleChangedImpl;

  @override
  AppearanceInfo get info;

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppearanceStateLocaleChangedImplCopyWith<
          _$AppearanceStateLocaleChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppearanceStateRefImageBorderColorChangedImplCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory _$$AppearanceStateRefImageBorderColorChangedImplCopyWith(
          _$AppearanceStateRefImageBorderColorChangedImpl value,
          $Res Function(_$AppearanceStateRefImageBorderColorChangedImpl) then) =
      __$$AppearanceStateRefImageBorderColorChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$AppearanceStateRefImageBorderColorChangedImplCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res,
        _$AppearanceStateRefImageBorderColorChangedImpl>
    implements _$$AppearanceStateRefImageBorderColorChangedImplCopyWith<$Res> {
  __$$AppearanceStateRefImageBorderColorChangedImplCopyWithImpl(
      _$AppearanceStateRefImageBorderColorChangedImpl _value,
      $Res Function(_$AppearanceStateRefImageBorderColorChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$AppearanceStateRefImageBorderColorChangedImpl(
      null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateRefImageBorderColorChangedImpl
    implements AppearanceStateRefImageBorderColorChanged {
  const _$AppearanceStateRefImageBorderColorChangedImpl(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.refImageBorderColorChanged(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceStateRefImageBorderColorChangedImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceStateRefImageBorderColorChangedImplCopyWith<
          _$AppearanceStateRefImageBorderColorChangedImpl>
      get copyWith =>
          __$$AppearanceStateRefImageBorderColorChangedImplCopyWithImpl<
                  _$AppearanceStateRefImageBorderColorChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppearanceInfo info) initial,
    required TResult Function(AppearanceInfo info) themeChanged,
    required TResult Function(AppearanceInfo info) localeChanged,
    required TResult Function(AppearanceInfo info) refImageBorderColorChanged,
  }) {
    return refImageBorderColorChanged(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppearanceInfo info)? initial,
    TResult? Function(AppearanceInfo info)? themeChanged,
    TResult? Function(AppearanceInfo info)? localeChanged,
    TResult? Function(AppearanceInfo info)? refImageBorderColorChanged,
  }) {
    return refImageBorderColorChanged?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
    required TResult orElse(),
  }) {
    if (refImageBorderColorChanged != null) {
      return refImageBorderColorChanged(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppearanceStateInitial value) initial,
    required TResult Function(AppearanceStateThemeChanged value) themeChanged,
    required TResult Function(AppearanceStateLocaleChanged value) localeChanged,
    required TResult Function(AppearanceStateRefImageBorderColorChanged value)
        refImageBorderColorChanged,
  }) {
    return refImageBorderColorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppearanceStateInitial value)? initial,
    TResult? Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult? Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult? Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
  }) {
    return refImageBorderColorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
        refImageBorderColorChanged,
    required TResult orElse(),
  }) {
    if (refImageBorderColorChanged != null) {
      return refImageBorderColorChanged(this);
    }
    return orElse();
  }
}

abstract class AppearanceStateRefImageBorderColorChanged
    implements AppearanceState {
  const factory AppearanceStateRefImageBorderColorChanged(
          final AppearanceInfo info) =
      _$AppearanceStateRefImageBorderColorChangedImpl;

  @override
  AppearanceInfo get info;

  /// Create a copy of AppearanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppearanceStateRefImageBorderColorChangedImplCopyWith<
          _$AppearanceStateRefImageBorderColorChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppearanceInfo {
  AppThemeType get theme => throw _privateConstructorUsedError;
  AppLocaleType get locale => throw _privateConstructorUsedError;
  int get refImageBorderColor => throw _privateConstructorUsedError;

  /// Create a copy of AppearanceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppearanceInfoCopyWith<AppearanceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceInfoCopyWith<$Res> {
  factory $AppearanceInfoCopyWith(
          AppearanceInfo value, $Res Function(AppearanceInfo) then) =
      _$AppearanceInfoCopyWithImpl<$Res, AppearanceInfo>;
  @useResult
  $Res call(
      {AppThemeType theme, AppLocaleType locale, int refImageBorderColor});

  $AppThemeTypeCopyWith<$Res> get theme;
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class _$AppearanceInfoCopyWithImpl<$Res, $Val extends AppearanceInfo>
    implements $AppearanceInfoCopyWith<$Res> {
  _$AppearanceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppearanceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? locale = null,
    Object? refImageBorderColor = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      refImageBorderColor: null == refImageBorderColor
          ? _value.refImageBorderColor
          : refImageBorderColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of AppearanceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppThemeTypeCopyWith<$Res> get theme {
    return $AppThemeTypeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  /// Create a copy of AppearanceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppLocaleTypeCopyWith<$Res> get locale {
    return $AppLocaleTypeCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppearanceInfoImplCopyWith<$Res>
    implements $AppearanceInfoCopyWith<$Res> {
  factory _$$AppearanceInfoImplCopyWith(_$AppearanceInfoImpl value,
          $Res Function(_$AppearanceInfoImpl) then) =
      __$$AppearanceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppThemeType theme, AppLocaleType locale, int refImageBorderColor});

  @override
  $AppThemeTypeCopyWith<$Res> get theme;
  @override
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class __$$AppearanceInfoImplCopyWithImpl<$Res>
    extends _$AppearanceInfoCopyWithImpl<$Res, _$AppearanceInfoImpl>
    implements _$$AppearanceInfoImplCopyWith<$Res> {
  __$$AppearanceInfoImplCopyWithImpl(
      _$AppearanceInfoImpl _value, $Res Function(_$AppearanceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppearanceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? locale = null,
    Object? refImageBorderColor = null,
  }) {
    return _then(_$AppearanceInfoImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      refImageBorderColor: null == refImageBorderColor
          ? _value.refImageBorderColor
          : refImageBorderColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppearanceInfoImpl implements _AppearanceInfo {
  const _$AppearanceInfoImpl(
      {required this.theme,
      required this.locale,
      required this.refImageBorderColor});

  @override
  final AppThemeType theme;
  @override
  final AppLocaleType locale;
  @override
  final int refImageBorderColor;

  @override
  String toString() {
    return 'AppearanceInfo(theme: $theme, locale: $locale, refImageBorderColor: $refImageBorderColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppearanceInfoImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.refImageBorderColor, refImageBorderColor) ||
                other.refImageBorderColor == refImageBorderColor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, theme, locale, refImageBorderColor);

  /// Create a copy of AppearanceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppearanceInfoImplCopyWith<_$AppearanceInfoImpl> get copyWith =>
      __$$AppearanceInfoImplCopyWithImpl<_$AppearanceInfoImpl>(
          this, _$identity);
}

abstract class _AppearanceInfo implements AppearanceInfo {
  const factory _AppearanceInfo(
      {required final AppThemeType theme,
      required final AppLocaleType locale,
      required final int refImageBorderColor}) = _$AppearanceInfoImpl;

  @override
  AppThemeType get theme;
  @override
  AppLocaleType get locale;
  @override
  int get refImageBorderColor;

  /// Create a copy of AppearanceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppearanceInfoImplCopyWith<_$AppearanceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
