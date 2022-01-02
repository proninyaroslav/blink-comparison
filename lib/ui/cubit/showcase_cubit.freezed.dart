// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'showcase_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShowcaseStateTearOff {
  const _$ShowcaseStateTearOff();

  ShowcaseStateInitial initial(Set<ShowcaseType> completed) {
    return ShowcaseStateInitial(
      completed,
    );
  }

  ShowcaseStateChanged changed(Set<ShowcaseType> completed) {
    return ShowcaseStateChanged(
      completed,
    );
  }
}

/// @nodoc
const $ShowcaseState = _$ShowcaseStateTearOff();

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
    TResult Function(Set<ShowcaseType> completed)? initial,
    TResult Function(Set<ShowcaseType> completed)? changed,
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
    TResult Function(ShowcaseStateInitial value)? initial,
    TResult Function(ShowcaseStateChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowcaseStateInitial value)? initial,
    TResult Function(ShowcaseStateChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowcaseStateCopyWith<ShowcaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateCopyWith(
          ShowcaseState value, $Res Function(ShowcaseState) then) =
      _$ShowcaseStateCopyWithImpl<$Res>;
  $Res call({Set<ShowcaseType> completed});
}

/// @nodoc
class _$ShowcaseStateCopyWithImpl<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  _$ShowcaseStateCopyWithImpl(this._value, this._then);

  final ShowcaseState _value;
  // ignore: unused_field
  final $Res Function(ShowcaseState) _then;

  @override
  $Res call({
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as Set<ShowcaseType>,
    ));
  }
}

/// @nodoc
abstract class $ShowcaseStateInitialCopyWith<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateInitialCopyWith(ShowcaseStateInitial value,
          $Res Function(ShowcaseStateInitial) then) =
      _$ShowcaseStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({Set<ShowcaseType> completed});
}

/// @nodoc
class _$ShowcaseStateInitialCopyWithImpl<$Res>
    extends _$ShowcaseStateCopyWithImpl<$Res>
    implements $ShowcaseStateInitialCopyWith<$Res> {
  _$ShowcaseStateInitialCopyWithImpl(
      ShowcaseStateInitial _value, $Res Function(ShowcaseStateInitial) _then)
      : super(_value, (v) => _then(v as ShowcaseStateInitial));

  @override
  ShowcaseStateInitial get _value => super._value as ShowcaseStateInitial;

  @override
  $Res call({
    Object? completed = freezed,
  }) {
    return _then(ShowcaseStateInitial(
      completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as Set<ShowcaseType>,
    ));
  }
}

/// @nodoc

class _$ShowcaseStateInitial implements ShowcaseStateInitial {
  const _$ShowcaseStateInitial(this.completed);

  @override
  final Set<ShowcaseType> completed;

  @override
  String toString() {
    return 'ShowcaseState.initial(completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowcaseStateInitial &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  $ShowcaseStateInitialCopyWith<ShowcaseStateInitial> get copyWith =>
      _$ShowcaseStateInitialCopyWithImpl<ShowcaseStateInitial>(
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
    TResult Function(Set<ShowcaseType> completed)? initial,
    TResult Function(Set<ShowcaseType> completed)? changed,
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
    TResult Function(ShowcaseStateInitial value)? initial,
    TResult Function(ShowcaseStateChanged value)? changed,
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
  const factory ShowcaseStateInitial(Set<ShowcaseType> completed) =
      _$ShowcaseStateInitial;

  @override
  Set<ShowcaseType> get completed;
  @override
  @JsonKey(ignore: true)
  $ShowcaseStateInitialCopyWith<ShowcaseStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowcaseStateChangedCopyWith<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateChangedCopyWith(ShowcaseStateChanged value,
          $Res Function(ShowcaseStateChanged) then) =
      _$ShowcaseStateChangedCopyWithImpl<$Res>;
  @override
  $Res call({Set<ShowcaseType> completed});
}

/// @nodoc
class _$ShowcaseStateChangedCopyWithImpl<$Res>
    extends _$ShowcaseStateCopyWithImpl<$Res>
    implements $ShowcaseStateChangedCopyWith<$Res> {
  _$ShowcaseStateChangedCopyWithImpl(
      ShowcaseStateChanged _value, $Res Function(ShowcaseStateChanged) _then)
      : super(_value, (v) => _then(v as ShowcaseStateChanged));

  @override
  ShowcaseStateChanged get _value => super._value as ShowcaseStateChanged;

  @override
  $Res call({
    Object? completed = freezed,
  }) {
    return _then(ShowcaseStateChanged(
      completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as Set<ShowcaseType>,
    ));
  }
}

/// @nodoc

class _$ShowcaseStateChanged implements ShowcaseStateChanged {
  const _$ShowcaseStateChanged(this.completed);

  @override
  final Set<ShowcaseType> completed;

  @override
  String toString() {
    return 'ShowcaseState.changed(completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowcaseStateChanged &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  $ShowcaseStateChangedCopyWith<ShowcaseStateChanged> get copyWith =>
      _$ShowcaseStateChangedCopyWithImpl<ShowcaseStateChanged>(
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
    TResult Function(Set<ShowcaseType> completed)? initial,
    TResult Function(Set<ShowcaseType> completed)? changed,
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
    TResult Function(ShowcaseStateInitial value)? initial,
    TResult Function(ShowcaseStateChanged value)? changed,
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
  const factory ShowcaseStateChanged(Set<ShowcaseType> completed) =
      _$ShowcaseStateChanged;

  @override
  Set<ShowcaseType> get completed;
  @override
  @JsonKey(ignore: true)
  $ShowcaseStateChangedCopyWith<ShowcaseStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
