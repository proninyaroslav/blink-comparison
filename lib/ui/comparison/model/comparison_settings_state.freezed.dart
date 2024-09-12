// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comparison_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ComparisonSettingsState {
  int? get refImageBorderColor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? refImageBorderColor) initial,
    required TResult Function(int refImageBorderColor) loaded,
    required TResult Function(int refImageBorderColor) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? refImageBorderColor)? initial,
    TResult? Function(int refImageBorderColor)? loaded,
    TResult? Function(int refImageBorderColor)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? refImageBorderColor)? initial,
    TResult Function(int refImageBorderColor)? loaded,
    TResult Function(int refImageBorderColor)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComparisonSettingsStateInitial value) initial,
    required TResult Function(ComparisonSettingsStateLoaded value) loaded,
    required TResult Function(ComparisonSettingsStateChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComparisonSettingsStateInitial value)? initial,
    TResult? Function(ComparisonSettingsStateLoaded value)? loaded,
    TResult? Function(ComparisonSettingsStateChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComparisonSettingsStateInitial value)? initial,
    TResult Function(ComparisonSettingsStateLoaded value)? loaded,
    TResult Function(ComparisonSettingsStateChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComparisonSettingsStateCopyWith<ComparisonSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComparisonSettingsStateCopyWith<$Res> {
  factory $ComparisonSettingsStateCopyWith(ComparisonSettingsState value,
          $Res Function(ComparisonSettingsState) then) =
      _$ComparisonSettingsStateCopyWithImpl<$Res, ComparisonSettingsState>;
  @useResult
  $Res call({int refImageBorderColor});
}

/// @nodoc
class _$ComparisonSettingsStateCopyWithImpl<$Res,
        $Val extends ComparisonSettingsState>
    implements $ComparisonSettingsStateCopyWith<$Res> {
  _$ComparisonSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refImageBorderColor = null,
  }) {
    return _then(_value.copyWith(
      refImageBorderColor: null == refImageBorderColor
          ? _value.refImageBorderColor!
          : refImageBorderColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComparisonSettingsStateInitialImplCopyWith<$Res>
    implements $ComparisonSettingsStateCopyWith<$Res> {
  factory _$$ComparisonSettingsStateInitialImplCopyWith(
          _$ComparisonSettingsStateInitialImpl value,
          $Res Function(_$ComparisonSettingsStateInitialImpl) then) =
      __$$ComparisonSettingsStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? refImageBorderColor});
}

/// @nodoc
class __$$ComparisonSettingsStateInitialImplCopyWithImpl<$Res>
    extends _$ComparisonSettingsStateCopyWithImpl<$Res,
        _$ComparisonSettingsStateInitialImpl>
    implements _$$ComparisonSettingsStateInitialImplCopyWith<$Res> {
  __$$ComparisonSettingsStateInitialImplCopyWithImpl(
      _$ComparisonSettingsStateInitialImpl _value,
      $Res Function(_$ComparisonSettingsStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refImageBorderColor = freezed,
  }) {
    return _then(_$ComparisonSettingsStateInitialImpl(
      refImageBorderColor: freezed == refImageBorderColor
          ? _value.refImageBorderColor
          : refImageBorderColor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ComparisonSettingsStateInitialImpl
    with DiagnosticableTreeMixin
    implements ComparisonSettingsStateInitial {
  const _$ComparisonSettingsStateInitialImpl({this.refImageBorderColor = null});

  @override
  @JsonKey()
  final int? refImageBorderColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComparisonSettingsState.initial(refImageBorderColor: $refImageBorderColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComparisonSettingsState.initial'))
      ..add(DiagnosticsProperty('refImageBorderColor', refImageBorderColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComparisonSettingsStateInitialImpl &&
            (identical(other.refImageBorderColor, refImageBorderColor) ||
                other.refImageBorderColor == refImageBorderColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refImageBorderColor);

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComparisonSettingsStateInitialImplCopyWith<
          _$ComparisonSettingsStateInitialImpl>
      get copyWith => __$$ComparisonSettingsStateInitialImplCopyWithImpl<
          _$ComparisonSettingsStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? refImageBorderColor) initial,
    required TResult Function(int refImageBorderColor) loaded,
    required TResult Function(int refImageBorderColor) changed,
  }) {
    return initial(refImageBorderColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? refImageBorderColor)? initial,
    TResult? Function(int refImageBorderColor)? loaded,
    TResult? Function(int refImageBorderColor)? changed,
  }) {
    return initial?.call(refImageBorderColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? refImageBorderColor)? initial,
    TResult Function(int refImageBorderColor)? loaded,
    TResult Function(int refImageBorderColor)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(refImageBorderColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComparisonSettingsStateInitial value) initial,
    required TResult Function(ComparisonSettingsStateLoaded value) loaded,
    required TResult Function(ComparisonSettingsStateChanged value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComparisonSettingsStateInitial value)? initial,
    TResult? Function(ComparisonSettingsStateLoaded value)? loaded,
    TResult? Function(ComparisonSettingsStateChanged value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComparisonSettingsStateInitial value)? initial,
    TResult Function(ComparisonSettingsStateLoaded value)? loaded,
    TResult Function(ComparisonSettingsStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ComparisonSettingsStateInitial
    implements ComparisonSettingsState {
  const factory ComparisonSettingsStateInitial(
      {final int? refImageBorderColor}) = _$ComparisonSettingsStateInitialImpl;

  @override
  int? get refImageBorderColor;

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComparisonSettingsStateInitialImplCopyWith<
          _$ComparisonSettingsStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComparisonSettingsStateLoadedImplCopyWith<$Res>
    implements $ComparisonSettingsStateCopyWith<$Res> {
  factory _$$ComparisonSettingsStateLoadedImplCopyWith(
          _$ComparisonSettingsStateLoadedImpl value,
          $Res Function(_$ComparisonSettingsStateLoadedImpl) then) =
      __$$ComparisonSettingsStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int refImageBorderColor});
}

/// @nodoc
class __$$ComparisonSettingsStateLoadedImplCopyWithImpl<$Res>
    extends _$ComparisonSettingsStateCopyWithImpl<$Res,
        _$ComparisonSettingsStateLoadedImpl>
    implements _$$ComparisonSettingsStateLoadedImplCopyWith<$Res> {
  __$$ComparisonSettingsStateLoadedImplCopyWithImpl(
      _$ComparisonSettingsStateLoadedImpl _value,
      $Res Function(_$ComparisonSettingsStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refImageBorderColor = null,
  }) {
    return _then(_$ComparisonSettingsStateLoadedImpl(
      refImageBorderColor: null == refImageBorderColor
          ? _value.refImageBorderColor
          : refImageBorderColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ComparisonSettingsStateLoadedImpl
    with DiagnosticableTreeMixin
    implements ComparisonSettingsStateLoaded {
  const _$ComparisonSettingsStateLoadedImpl(
      {required this.refImageBorderColor});

  @override
  final int refImageBorderColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComparisonSettingsState.loaded(refImageBorderColor: $refImageBorderColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComparisonSettingsState.loaded'))
      ..add(DiagnosticsProperty('refImageBorderColor', refImageBorderColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComparisonSettingsStateLoadedImpl &&
            (identical(other.refImageBorderColor, refImageBorderColor) ||
                other.refImageBorderColor == refImageBorderColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refImageBorderColor);

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComparisonSettingsStateLoadedImplCopyWith<
          _$ComparisonSettingsStateLoadedImpl>
      get copyWith => __$$ComparisonSettingsStateLoadedImplCopyWithImpl<
          _$ComparisonSettingsStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? refImageBorderColor) initial,
    required TResult Function(int refImageBorderColor) loaded,
    required TResult Function(int refImageBorderColor) changed,
  }) {
    return loaded(refImageBorderColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? refImageBorderColor)? initial,
    TResult? Function(int refImageBorderColor)? loaded,
    TResult? Function(int refImageBorderColor)? changed,
  }) {
    return loaded?.call(refImageBorderColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? refImageBorderColor)? initial,
    TResult Function(int refImageBorderColor)? loaded,
    TResult Function(int refImageBorderColor)? changed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(refImageBorderColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComparisonSettingsStateInitial value) initial,
    required TResult Function(ComparisonSettingsStateLoaded value) loaded,
    required TResult Function(ComparisonSettingsStateChanged value) changed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComparisonSettingsStateInitial value)? initial,
    TResult? Function(ComparisonSettingsStateLoaded value)? loaded,
    TResult? Function(ComparisonSettingsStateChanged value)? changed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComparisonSettingsStateInitial value)? initial,
    TResult Function(ComparisonSettingsStateLoaded value)? loaded,
    TResult Function(ComparisonSettingsStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ComparisonSettingsStateLoaded
    implements ComparisonSettingsState {
  const factory ComparisonSettingsStateLoaded(
          {required final int refImageBorderColor}) =
      _$ComparisonSettingsStateLoadedImpl;

  @override
  int get refImageBorderColor;

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComparisonSettingsStateLoadedImplCopyWith<
          _$ComparisonSettingsStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComparisonSettingsStateChangedImplCopyWith<$Res>
    implements $ComparisonSettingsStateCopyWith<$Res> {
  factory _$$ComparisonSettingsStateChangedImplCopyWith(
          _$ComparisonSettingsStateChangedImpl value,
          $Res Function(_$ComparisonSettingsStateChangedImpl) then) =
      __$$ComparisonSettingsStateChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int refImageBorderColor});
}

/// @nodoc
class __$$ComparisonSettingsStateChangedImplCopyWithImpl<$Res>
    extends _$ComparisonSettingsStateCopyWithImpl<$Res,
        _$ComparisonSettingsStateChangedImpl>
    implements _$$ComparisonSettingsStateChangedImplCopyWith<$Res> {
  __$$ComparisonSettingsStateChangedImplCopyWithImpl(
      _$ComparisonSettingsStateChangedImpl _value,
      $Res Function(_$ComparisonSettingsStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refImageBorderColor = null,
  }) {
    return _then(_$ComparisonSettingsStateChangedImpl(
      refImageBorderColor: null == refImageBorderColor
          ? _value.refImageBorderColor
          : refImageBorderColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ComparisonSettingsStateChangedImpl
    with DiagnosticableTreeMixin
    implements ComparisonSettingsStateChanged {
  const _$ComparisonSettingsStateChangedImpl(
      {required this.refImageBorderColor});

  @override
  final int refImageBorderColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComparisonSettingsState.changed(refImageBorderColor: $refImageBorderColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComparisonSettingsState.changed'))
      ..add(DiagnosticsProperty('refImageBorderColor', refImageBorderColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComparisonSettingsStateChangedImpl &&
            (identical(other.refImageBorderColor, refImageBorderColor) ||
                other.refImageBorderColor == refImageBorderColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refImageBorderColor);

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComparisonSettingsStateChangedImplCopyWith<
          _$ComparisonSettingsStateChangedImpl>
      get copyWith => __$$ComparisonSettingsStateChangedImplCopyWithImpl<
          _$ComparisonSettingsStateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? refImageBorderColor) initial,
    required TResult Function(int refImageBorderColor) loaded,
    required TResult Function(int refImageBorderColor) changed,
  }) {
    return changed(refImageBorderColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? refImageBorderColor)? initial,
    TResult? Function(int refImageBorderColor)? loaded,
    TResult? Function(int refImageBorderColor)? changed,
  }) {
    return changed?.call(refImageBorderColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? refImageBorderColor)? initial,
    TResult Function(int refImageBorderColor)? loaded,
    TResult Function(int refImageBorderColor)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(refImageBorderColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComparisonSettingsStateInitial value) initial,
    required TResult Function(ComparisonSettingsStateLoaded value) loaded,
    required TResult Function(ComparisonSettingsStateChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComparisonSettingsStateInitial value)? initial,
    TResult? Function(ComparisonSettingsStateLoaded value)? loaded,
    TResult? Function(ComparisonSettingsStateChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComparisonSettingsStateInitial value)? initial,
    TResult Function(ComparisonSettingsStateLoaded value)? loaded,
    TResult Function(ComparisonSettingsStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class ComparisonSettingsStateChanged
    implements ComparisonSettingsState {
  const factory ComparisonSettingsStateChanged(
          {required final int refImageBorderColor}) =
      _$ComparisonSettingsStateChangedImpl;

  @override
  int get refImageBorderColor;

  /// Create a copy of ComparisonSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComparisonSettingsStateChangedImplCopyWith<
          _$ComparisonSettingsStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
