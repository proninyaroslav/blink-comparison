// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'showcase_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowcaseState {
  Set<ShowcaseType> get completed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<ShowcaseType> completed) initial,
    required TResult Function(Set<ShowcaseType> completed) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<ShowcaseType> completed)? initial,
    TResult? Function(Set<ShowcaseType> completed)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<ShowcaseType> completed)? initial,
    TResult Function(Set<ShowcaseType> completed)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowcaseStateInitial value) initial,
    required TResult Function(ShowcaseStateChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowcaseStateInitial value)? initial,
    TResult? Function(ShowcaseStateChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowcaseStateInitial value)? initial,
    TResult Function(ShowcaseStateChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ShowcaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShowcaseStateCopyWith<ShowcaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateCopyWith(
          ShowcaseState value, $Res Function(ShowcaseState) then) =
      _$ShowcaseStateCopyWithImpl<$Res, ShowcaseState>;
  @useResult
  $Res call({Set<ShowcaseType> completed});
}

/// @nodoc
class _$ShowcaseStateCopyWithImpl<$Res, $Val extends ShowcaseState>
    implements $ShowcaseStateCopyWith<$Res> {
  _$ShowcaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowcaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as Set<ShowcaseType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowcaseStateInitialImplCopyWith<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  factory _$$ShowcaseStateInitialImplCopyWith(_$ShowcaseStateInitialImpl value,
          $Res Function(_$ShowcaseStateInitialImpl) then) =
      __$$ShowcaseStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<ShowcaseType> completed});
}

/// @nodoc
class __$$ShowcaseStateInitialImplCopyWithImpl<$Res>
    extends _$ShowcaseStateCopyWithImpl<$Res, _$ShowcaseStateInitialImpl>
    implements _$$ShowcaseStateInitialImplCopyWith<$Res> {
  __$$ShowcaseStateInitialImplCopyWithImpl(_$ShowcaseStateInitialImpl _value,
      $Res Function(_$ShowcaseStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowcaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
  }) {
    return _then(_$ShowcaseStateInitialImpl(
      null == completed
          ? _value._completed
          : completed // ignore: cast_nullable_to_non_nullable
              as Set<ShowcaseType>,
    ));
  }
}

/// @nodoc

class _$ShowcaseStateInitialImpl implements ShowcaseStateInitial {
  const _$ShowcaseStateInitialImpl(final Set<ShowcaseType> completed)
      : _completed = completed;

  final Set<ShowcaseType> _completed;
  @override
  Set<ShowcaseType> get completed {
    if (_completed is EqualUnmodifiableSetView) return _completed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_completed);
  }

  @override
  String toString() {
    return 'ShowcaseState.initial(completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowcaseStateInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._completed, _completed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_completed));

  /// Create a copy of ShowcaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowcaseStateInitialImplCopyWith<_$ShowcaseStateInitialImpl>
      get copyWith =>
          __$$ShowcaseStateInitialImplCopyWithImpl<_$ShowcaseStateInitialImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<ShowcaseType> completed) initial,
    required TResult Function(Set<ShowcaseType> completed) changed,
  }) {
    return initial(completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<ShowcaseType> completed)? initial,
    TResult? Function(Set<ShowcaseType> completed)? changed,
  }) {
    return initial?.call(completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<ShowcaseType> completed)? initial,
    TResult Function(Set<ShowcaseType> completed)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowcaseStateInitial value) initial,
    required TResult Function(ShowcaseStateChanged value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowcaseStateInitial value)? initial,
    TResult? Function(ShowcaseStateChanged value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowcaseStateInitial value)? initial,
    TResult Function(ShowcaseStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ShowcaseStateInitial implements ShowcaseState {
  const factory ShowcaseStateInitial(final Set<ShowcaseType> completed) =
      _$ShowcaseStateInitialImpl;

  @override
  Set<ShowcaseType> get completed;

  /// Create a copy of ShowcaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowcaseStateInitialImplCopyWith<_$ShowcaseStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowcaseStateChangedImplCopyWith<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  factory _$$ShowcaseStateChangedImplCopyWith(_$ShowcaseStateChangedImpl value,
          $Res Function(_$ShowcaseStateChangedImpl) then) =
      __$$ShowcaseStateChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<ShowcaseType> completed});
}

/// @nodoc
class __$$ShowcaseStateChangedImplCopyWithImpl<$Res>
    extends _$ShowcaseStateCopyWithImpl<$Res, _$ShowcaseStateChangedImpl>
    implements _$$ShowcaseStateChangedImplCopyWith<$Res> {
  __$$ShowcaseStateChangedImplCopyWithImpl(_$ShowcaseStateChangedImpl _value,
      $Res Function(_$ShowcaseStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowcaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
  }) {
    return _then(_$ShowcaseStateChangedImpl(
      null == completed
          ? _value._completed
          : completed // ignore: cast_nullable_to_non_nullable
              as Set<ShowcaseType>,
    ));
  }
}

/// @nodoc

class _$ShowcaseStateChangedImpl implements ShowcaseStateChanged {
  const _$ShowcaseStateChangedImpl(final Set<ShowcaseType> completed)
      : _completed = completed;

  final Set<ShowcaseType> _completed;
  @override
  Set<ShowcaseType> get completed {
    if (_completed is EqualUnmodifiableSetView) return _completed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_completed);
  }

  @override
  String toString() {
    return 'ShowcaseState.changed(completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowcaseStateChangedImpl &&
            const DeepCollectionEquality()
                .equals(other._completed, _completed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_completed));

  /// Create a copy of ShowcaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowcaseStateChangedImplCopyWith<_$ShowcaseStateChangedImpl>
      get copyWith =>
          __$$ShowcaseStateChangedImplCopyWithImpl<_$ShowcaseStateChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<ShowcaseType> completed) initial,
    required TResult Function(Set<ShowcaseType> completed) changed,
  }) {
    return changed(completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<ShowcaseType> completed)? initial,
    TResult? Function(Set<ShowcaseType> completed)? changed,
  }) {
    return changed?.call(completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<ShowcaseType> completed)? initial,
    TResult Function(Set<ShowcaseType> completed)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowcaseStateInitial value) initial,
    required TResult Function(ShowcaseStateChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowcaseStateInitial value)? initial,
    TResult? Function(ShowcaseStateChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowcaseStateInitial value)? initial,
    TResult Function(ShowcaseStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class ShowcaseStateChanged implements ShowcaseState {
  const factory ShowcaseStateChanged(final Set<ShowcaseType> completed) =
      _$ShowcaseStateChangedImpl;

  @override
  Set<ShowcaseType> get completed;

  /// Create a copy of ShowcaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowcaseStateChangedImplCopyWith<_$ShowcaseStateChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
