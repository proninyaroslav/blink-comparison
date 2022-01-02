// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ref_images_actions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RefImagesActionsStateTearOff {
  const _$RefImagesActionsStateTearOff();

  RefImagesActionsStateInitial initial() {
    return const RefImagesActionsStateInitial();
  }

  RefImagesActionsStateDeleting deleting() {
    return const RefImagesActionsStateDeleting();
  }

  RefImagesActionsStateDeleted deleted(
      {required int count,
      required Map<RefImageInfo, SecStorageError> errors}) {
    return RefImagesActionsStateDeleted(
      count: count,
      errors: errors,
    );
  }
}

/// @nodoc
const $RefImagesActionsState = _$RefImagesActionsStateTearOff();

/// @nodoc
mixin _$RefImagesActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function(
            int count, Map<RefImageInfo, SecStorageError> errors)
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(int count, Map<RefImageInfo, SecStorageError> errors)?
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(int count, Map<RefImageInfo, SecStorageError> errors)?
        deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImagesActionsStateInitial value) initial,
    required TResult Function(RefImagesActionsStateDeleting value) deleting,
    required TResult Function(RefImagesActionsStateDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImagesActionsStateInitial value)? initial,
    TResult Function(RefImagesActionsStateDeleting value)? deleting,
    TResult Function(RefImagesActionsStateDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImagesActionsStateInitial value)? initial,
    TResult Function(RefImagesActionsStateDeleting value)? deleting,
    TResult Function(RefImagesActionsStateDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImagesActionsStateCopyWith<$Res> {
  factory $RefImagesActionsStateCopyWith(RefImagesActionsState value,
          $Res Function(RefImagesActionsState) then) =
      _$RefImagesActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefImagesActionsStateCopyWithImpl<$Res>
    implements $RefImagesActionsStateCopyWith<$Res> {
  _$RefImagesActionsStateCopyWithImpl(this._value, this._then);

  final RefImagesActionsState _value;
  // ignore: unused_field
  final $Res Function(RefImagesActionsState) _then;
}

/// @nodoc
abstract class $RefImagesActionsStateInitialCopyWith<$Res> {
  factory $RefImagesActionsStateInitialCopyWith(
          RefImagesActionsStateInitial value,
          $Res Function(RefImagesActionsStateInitial) then) =
      _$RefImagesActionsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefImagesActionsStateInitialCopyWithImpl<$Res>
    extends _$RefImagesActionsStateCopyWithImpl<$Res>
    implements $RefImagesActionsStateInitialCopyWith<$Res> {
  _$RefImagesActionsStateInitialCopyWithImpl(
      RefImagesActionsStateInitial _value,
      $Res Function(RefImagesActionsStateInitial) _then)
      : super(_value, (v) => _then(v as RefImagesActionsStateInitial));

  @override
  RefImagesActionsStateInitial get _value =>
      super._value as RefImagesActionsStateInitial;
}

/// @nodoc

class _$RefImagesActionsStateInitial implements RefImagesActionsStateInitial {
  const _$RefImagesActionsStateInitial();

  @override
  String toString() {
    return 'RefImagesActionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImagesActionsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function(
            int count, Map<RefImageInfo, SecStorageError> errors)
        deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(int count, Map<RefImageInfo, SecStorageError> errors)?
        deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(int count, Map<RefImageInfo, SecStorageError> errors)?
        deleted,
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
    required TResult Function(RefImagesActionsStateInitial value) initial,
    required TResult Function(RefImagesActionsStateDeleting value) deleting,
    required TResult Function(RefImagesActionsStateDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImagesActionsStateInitial value)? initial,
    TResult Function(RefImagesActionsStateDeleting value)? deleting,
    TResult Function(RefImagesActionsStateDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImagesActionsStateInitial value)? initial,
    TResult Function(RefImagesActionsStateDeleting value)? deleting,
    TResult Function(RefImagesActionsStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RefImagesActionsStateInitial implements RefImagesActionsState {
  const factory RefImagesActionsStateInitial() = _$RefImagesActionsStateInitial;
}

/// @nodoc
abstract class $RefImagesActionsStateDeletingCopyWith<$Res> {
  factory $RefImagesActionsStateDeletingCopyWith(
          RefImagesActionsStateDeleting value,
          $Res Function(RefImagesActionsStateDeleting) then) =
      _$RefImagesActionsStateDeletingCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefImagesActionsStateDeletingCopyWithImpl<$Res>
    extends _$RefImagesActionsStateCopyWithImpl<$Res>
    implements $RefImagesActionsStateDeletingCopyWith<$Res> {
  _$RefImagesActionsStateDeletingCopyWithImpl(
      RefImagesActionsStateDeleting _value,
      $Res Function(RefImagesActionsStateDeleting) _then)
      : super(_value, (v) => _then(v as RefImagesActionsStateDeleting));

  @override
  RefImagesActionsStateDeleting get _value =>
      super._value as RefImagesActionsStateDeleting;
}

/// @nodoc

class _$RefImagesActionsStateDeleting implements RefImagesActionsStateDeleting {
  const _$RefImagesActionsStateDeleting();

  @override
  String toString() {
    return 'RefImagesActionsState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImagesActionsStateDeleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function(
            int count, Map<RefImageInfo, SecStorageError> errors)
        deleted,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(int count, Map<RefImageInfo, SecStorageError> errors)?
        deleted,
  }) {
    return deleting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(int count, Map<RefImageInfo, SecStorageError> errors)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImagesActionsStateInitial value) initial,
    required TResult Function(RefImagesActionsStateDeleting value) deleting,
    required TResult Function(RefImagesActionsStateDeleted value) deleted,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImagesActionsStateInitial value)? initial,
    TResult Function(RefImagesActionsStateDeleting value)? deleting,
    TResult Function(RefImagesActionsStateDeleted value)? deleted,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImagesActionsStateInitial value)? initial,
    TResult Function(RefImagesActionsStateDeleting value)? deleting,
    TResult Function(RefImagesActionsStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class RefImagesActionsStateDeleting implements RefImagesActionsState {
  const factory RefImagesActionsStateDeleting() =
      _$RefImagesActionsStateDeleting;
}

/// @nodoc
abstract class $RefImagesActionsStateDeletedCopyWith<$Res> {
  factory $RefImagesActionsStateDeletedCopyWith(
          RefImagesActionsStateDeleted value,
          $Res Function(RefImagesActionsStateDeleted) then) =
      _$RefImagesActionsStateDeletedCopyWithImpl<$Res>;
  $Res call({int count, Map<RefImageInfo, SecStorageError> errors});
}

/// @nodoc
class _$RefImagesActionsStateDeletedCopyWithImpl<$Res>
    extends _$RefImagesActionsStateCopyWithImpl<$Res>
    implements $RefImagesActionsStateDeletedCopyWith<$Res> {
  _$RefImagesActionsStateDeletedCopyWithImpl(
      RefImagesActionsStateDeleted _value,
      $Res Function(RefImagesActionsStateDeleted) _then)
      : super(_value, (v) => _then(v as RefImagesActionsStateDeleted));

  @override
  RefImagesActionsStateDeleted get _value =>
      super._value as RefImagesActionsStateDeleted;

  @override
  $Res call({
    Object? count = freezed,
    Object? errors = freezed,
  }) {
    return _then(RefImagesActionsStateDeleted(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<RefImageInfo, SecStorageError>,
    ));
  }
}

/// @nodoc

class _$RefImagesActionsStateDeleted implements RefImagesActionsStateDeleted {
  const _$RefImagesActionsStateDeleted(
      {required this.count, required this.errors});

  @override
  final int count;
  @override
  final Map<RefImageInfo, SecStorageError> errors;

  @override
  String toString() {
    return 'RefImagesActionsState.deleted(count: $count, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefImagesActionsStateDeleted &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  $RefImagesActionsStateDeletedCopyWith<RefImagesActionsStateDeleted>
      get copyWith => _$RefImagesActionsStateDeletedCopyWithImpl<
          RefImagesActionsStateDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function(
            int count, Map<RefImageInfo, SecStorageError> errors)
        deleted,
  }) {
    return deleted(count, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(int count, Map<RefImageInfo, SecStorageError> errors)?
        deleted,
  }) {
    return deleted?.call(count, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(int count, Map<RefImageInfo, SecStorageError> errors)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(count, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefImagesActionsStateInitial value) initial,
    required TResult Function(RefImagesActionsStateDeleting value) deleting,
    required TResult Function(RefImagesActionsStateDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefImagesActionsStateInitial value)? initial,
    TResult Function(RefImagesActionsStateDeleting value)? deleting,
    TResult Function(RefImagesActionsStateDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefImagesActionsStateInitial value)? initial,
    TResult Function(RefImagesActionsStateDeleting value)? deleting,
    TResult Function(RefImagesActionsStateDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class RefImagesActionsStateDeleted implements RefImagesActionsState {
  const factory RefImagesActionsStateDeleted(
          {required int count,
          required Map<RefImageInfo, SecStorageError> errors}) =
      _$RefImagesActionsStateDeleted;

  int get count;
  Map<RefImageInfo, SecStorageError> get errors;
  @JsonKey(ignore: true)
  $RefImagesActionsStateDeletedCopyWith<RefImagesActionsStateDeleted>
      get copyWith => throw _privateConstructorUsedError;
}
