// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appearance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppearanceStateTearOff {
  const _$AppearanceStateTearOff();

  AppearanceStateInitial initial(AppearanceInfo info) {
    return AppearanceStateInitial(
      info,
    );
  }

  AppearanceStateThemeChanged themeChanged(AppearanceInfo info) {
    return AppearanceStateThemeChanged(
      info,
    );
  }

  AppearanceStateLocaleChanged localeChanged(AppearanceInfo info) {
    return AppearanceStateLocaleChanged(
      info,
    );
  }

  AppearanceStateRefImageBorderColorChanged refImageBorderColorChanged(
      AppearanceInfo info) {
    return AppearanceStateRefImageBorderColorChanged(
      info,
    );
  }
}

/// @nodoc
const $AppearanceState = _$AppearanceStateTearOff();

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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
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

  @JsonKey(ignore: true)
  $AppearanceStateCopyWith<AppearanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateCopyWith(
          AppearanceState value, $Res Function(AppearanceState) then) =
      _$AppearanceStateCopyWithImpl<$Res>;
  $Res call({AppearanceInfo info});

  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  _$AppearanceStateCopyWithImpl(this._value, this._then);

  final AppearanceState _value;
  // ignore: unused_field
  final $Res Function(AppearanceState) _then;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }

  @override
  $AppearanceInfoCopyWith<$Res> get info {
    return $AppearanceInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class $AppearanceStateInitialCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateInitialCopyWith(AppearanceStateInitial value,
          $Res Function(AppearanceStateInitial) then) =
      _$AppearanceStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateInitialCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateInitialCopyWith<$Res> {
  _$AppearanceStateInitialCopyWithImpl(AppearanceStateInitial _value,
      $Res Function(AppearanceStateInitial) _then)
      : super(_value, (v) => _then(v as AppearanceStateInitial));

  @override
  AppearanceStateInitial get _value => super._value as AppearanceStateInitial;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateInitial(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateInitial implements AppearanceStateInitial {
  const _$AppearanceStateInitial(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.initial(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppearanceStateInitial &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $AppearanceStateInitialCopyWith<AppearanceStateInitial> get copyWith =>
      _$AppearanceStateInitialCopyWithImpl<AppearanceStateInitial>(
          this, _$identity);

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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
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
  const factory AppearanceStateInitial(AppearanceInfo info) =
      _$AppearanceStateInitial;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateInitialCopyWith<AppearanceStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateThemeChangedCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateThemeChangedCopyWith(
          AppearanceStateThemeChanged value,
          $Res Function(AppearanceStateThemeChanged) then) =
      _$AppearanceStateThemeChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateThemeChangedCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateThemeChangedCopyWith<$Res> {
  _$AppearanceStateThemeChangedCopyWithImpl(AppearanceStateThemeChanged _value,
      $Res Function(AppearanceStateThemeChanged) _then)
      : super(_value, (v) => _then(v as AppearanceStateThemeChanged));

  @override
  AppearanceStateThemeChanged get _value =>
      super._value as AppearanceStateThemeChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateThemeChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateThemeChanged implements AppearanceStateThemeChanged {
  const _$AppearanceStateThemeChanged(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.themeChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppearanceStateThemeChanged &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $AppearanceStateThemeChangedCopyWith<AppearanceStateThemeChanged>
      get copyWith => _$AppearanceStateThemeChangedCopyWithImpl<
          AppearanceStateThemeChanged>(this, _$identity);

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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
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
  const factory AppearanceStateThemeChanged(AppearanceInfo info) =
      _$AppearanceStateThemeChanged;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateThemeChangedCopyWith<AppearanceStateThemeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateLocaleChangedCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateLocaleChangedCopyWith(
          AppearanceStateLocaleChanged value,
          $Res Function(AppearanceStateLocaleChanged) then) =
      _$AppearanceStateLocaleChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateLocaleChangedCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateLocaleChangedCopyWith<$Res> {
  _$AppearanceStateLocaleChangedCopyWithImpl(
      AppearanceStateLocaleChanged _value,
      $Res Function(AppearanceStateLocaleChanged) _then)
      : super(_value, (v) => _then(v as AppearanceStateLocaleChanged));

  @override
  AppearanceStateLocaleChanged get _value =>
      super._value as AppearanceStateLocaleChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateLocaleChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateLocaleChanged implements AppearanceStateLocaleChanged {
  const _$AppearanceStateLocaleChanged(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.localeChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppearanceStateLocaleChanged &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $AppearanceStateLocaleChangedCopyWith<AppearanceStateLocaleChanged>
      get copyWith => _$AppearanceStateLocaleChangedCopyWithImpl<
          AppearanceStateLocaleChanged>(this, _$identity);

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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
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
  const factory AppearanceStateLocaleChanged(AppearanceInfo info) =
      _$AppearanceStateLocaleChanged;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateLocaleChangedCopyWith<AppearanceStateLocaleChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceStateRefImageBorderColorChangedCopyWith<$Res>
    implements $AppearanceStateCopyWith<$Res> {
  factory $AppearanceStateRefImageBorderColorChangedCopyWith(
          AppearanceStateRefImageBorderColorChanged value,
          $Res Function(AppearanceStateRefImageBorderColorChanged) then) =
      _$AppearanceStateRefImageBorderColorChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppearanceInfo info});

  @override
  $AppearanceInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$AppearanceStateRefImageBorderColorChangedCopyWithImpl<$Res>
    extends _$AppearanceStateCopyWithImpl<$Res>
    implements $AppearanceStateRefImageBorderColorChangedCopyWith<$Res> {
  _$AppearanceStateRefImageBorderColorChangedCopyWithImpl(
      AppearanceStateRefImageBorderColorChanged _value,
      $Res Function(AppearanceStateRefImageBorderColorChanged) _then)
      : super(_value,
            (v) => _then(v as AppearanceStateRefImageBorderColorChanged));

  @override
  AppearanceStateRefImageBorderColorChanged get _value =>
      super._value as AppearanceStateRefImageBorderColorChanged;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(AppearanceStateRefImageBorderColorChanged(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppearanceInfo,
    ));
  }
}

/// @nodoc

class _$AppearanceStateRefImageBorderColorChanged
    implements AppearanceStateRefImageBorderColorChanged {
  const _$AppearanceStateRefImageBorderColorChanged(this.info);

  @override
  final AppearanceInfo info;

  @override
  String toString() {
    return 'AppearanceState.refImageBorderColorChanged(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppearanceStateRefImageBorderColorChanged &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $AppearanceStateRefImageBorderColorChangedCopyWith<
          AppearanceStateRefImageBorderColorChanged>
      get copyWith => _$AppearanceStateRefImageBorderColorChangedCopyWithImpl<
          AppearanceStateRefImageBorderColorChanged>(this, _$identity);

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
    TResult Function(AppearanceInfo info)? initial,
    TResult Function(AppearanceInfo info)? themeChanged,
    TResult Function(AppearanceInfo info)? localeChanged,
    TResult Function(AppearanceInfo info)? refImageBorderColorChanged,
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
    TResult Function(AppearanceStateInitial value)? initial,
    TResult Function(AppearanceStateThemeChanged value)? themeChanged,
    TResult Function(AppearanceStateLocaleChanged value)? localeChanged,
    TResult Function(AppearanceStateRefImageBorderColorChanged value)?
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
  const factory AppearanceStateRefImageBorderColorChanged(AppearanceInfo info) =
      _$AppearanceStateRefImageBorderColorChanged;

  @override
  AppearanceInfo get info;
  @override
  @JsonKey(ignore: true)
  $AppearanceStateRefImageBorderColorChangedCopyWith<
          AppearanceStateRefImageBorderColorChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppearanceInfoTearOff {
  const _$AppearanceInfoTearOff();

  _AppearanceInfo call(
      {required AppThemeType theme,
      required AppLocaleType locale,
      required int refImageBorderColor}) {
    return _AppearanceInfo(
      theme: theme,
      locale: locale,
      refImageBorderColor: refImageBorderColor,
    );
  }
}

/// @nodoc
const $AppearanceInfo = _$AppearanceInfoTearOff();

/// @nodoc
mixin _$AppearanceInfo {
  AppThemeType get theme => throw _privateConstructorUsedError;
  AppLocaleType get locale => throw _privateConstructorUsedError;
  int get refImageBorderColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppearanceInfoCopyWith<AppearanceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearanceInfoCopyWith<$Res> {
  factory $AppearanceInfoCopyWith(
          AppearanceInfo value, $Res Function(AppearanceInfo) then) =
      _$AppearanceInfoCopyWithImpl<$Res>;
  $Res call(
      {AppThemeType theme, AppLocaleType locale, int refImageBorderColor});

  $AppThemeTypeCopyWith<$Res> get theme;
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class _$AppearanceInfoCopyWithImpl<$Res>
    implements $AppearanceInfoCopyWith<$Res> {
  _$AppearanceInfoCopyWithImpl(this._value, this._then);

  final AppearanceInfo _value;
  // ignore: unused_field
  final $Res Function(AppearanceInfo) _then;

  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
    Object? refImageBorderColor = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      refImageBorderColor: refImageBorderColor == freezed
          ? _value.refImageBorderColor
          : refImageBorderColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $AppThemeTypeCopyWith<$Res> get theme {
    return $AppThemeTypeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }

  @override
  $AppLocaleTypeCopyWith<$Res> get locale {
    return $AppLocaleTypeCopyWith<$Res>(_value.locale, (value) {
      return _then(_value.copyWith(locale: value));
    });
  }
}

/// @nodoc
abstract class _$AppearanceInfoCopyWith<$Res>
    implements $AppearanceInfoCopyWith<$Res> {
  factory _$AppearanceInfoCopyWith(
          _AppearanceInfo value, $Res Function(_AppearanceInfo) then) =
      __$AppearanceInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {AppThemeType theme, AppLocaleType locale, int refImageBorderColor});

  @override
  $AppThemeTypeCopyWith<$Res> get theme;
  @override
  $AppLocaleTypeCopyWith<$Res> get locale;
}

/// @nodoc
class __$AppearanceInfoCopyWithImpl<$Res>
    extends _$AppearanceInfoCopyWithImpl<$Res>
    implements _$AppearanceInfoCopyWith<$Res> {
  __$AppearanceInfoCopyWithImpl(
      _AppearanceInfo _value, $Res Function(_AppearanceInfo) _then)
      : super(_value, (v) => _then(v as _AppearanceInfo));

  @override
  _AppearanceInfo get _value => super._value as _AppearanceInfo;

  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
    Object? refImageBorderColor = freezed,
  }) {
    return _then(_AppearanceInfo(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppThemeType,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocaleType,
      refImageBorderColor: refImageBorderColor == freezed
          ? _value.refImageBorderColor
          : refImageBorderColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AppearanceInfo implements _AppearanceInfo {
  const _$_AppearanceInfo(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppearanceInfo &&
            const DeepCollectionEquality().equals(other.theme, theme) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality()
                .equals(other.refImageBorderColor, refImageBorderColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(theme),
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(refImageBorderColor));

  @JsonKey(ignore: true)
  @override
  _$AppearanceInfoCopyWith<_AppearanceInfo> get copyWith =>
      __$AppearanceInfoCopyWithImpl<_AppearanceInfo>(this, _$identity);
}

abstract class _AppearanceInfo implements AppearanceInfo {
  const factory _AppearanceInfo(
      {required AppThemeType theme,
      required AppLocaleType locale,
      required int refImageBorderColor}) = _$_AppearanceInfo;

  @override
  AppThemeType get theme;
  @override
  AppLocaleType get locale;
  @override
  int get refImageBorderColor;
  @override
  @JsonKey(ignore: true)
  _$AppearanceInfoCopyWith<_AppearanceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
