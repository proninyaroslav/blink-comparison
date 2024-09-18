// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thumbnails_migrator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThumbnailsMigratorResult {}

/// @nodoc
abstract class $ThumbnailsMigratorResultCopyWith<$Res> {
  factory $ThumbnailsMigratorResultCopyWith(ThumbnailsMigratorResult value,
          $Res Function(ThumbnailsMigratorResult) then) =
      _$ThumbnailsMigratorResultCopyWithImpl<$Res, ThumbnailsMigratorResult>;
}

/// @nodoc
class _$ThumbnailsMigratorResultCopyWithImpl<$Res,
        $Val extends ThumbnailsMigratorResult>
    implements $ThumbnailsMigratorResultCopyWith<$Res> {
  _$ThumbnailsMigratorResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThumbnailsMigratorResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ThumbnailsMigratorResultSuccessImplCopyWith<$Res> {
  factory _$$ThumbnailsMigratorResultSuccessImplCopyWith(
          _$ThumbnailsMigratorResultSuccessImpl value,
          $Res Function(_$ThumbnailsMigratorResultSuccessImpl) then) =
      __$$ThumbnailsMigratorResultSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThumbnailsMigratorResultSuccessImplCopyWithImpl<$Res>
    extends _$ThumbnailsMigratorResultCopyWithImpl<$Res,
        _$ThumbnailsMigratorResultSuccessImpl>
    implements _$$ThumbnailsMigratorResultSuccessImplCopyWith<$Res> {
  __$$ThumbnailsMigratorResultSuccessImplCopyWithImpl(
      _$ThumbnailsMigratorResultSuccessImpl _value,
      $Res Function(_$ThumbnailsMigratorResultSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThumbnailsMigratorResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ThumbnailsMigratorResultSuccessImpl
    implements ThumbnailsMigratorResultSuccess {
  _$ThumbnailsMigratorResultSuccessImpl();

  @override
  String toString() {
    return 'ThumbnailsMigratorResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailsMigratorResultSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ThumbnailsMigratorResultSuccess
    implements ThumbnailsMigratorResult {
  factory ThumbnailsMigratorResultSuccess() =
      _$ThumbnailsMigratorResultSuccessImpl;
}

/// @nodoc
abstract class _$$ThumbnailsMigratorResultSomeFailedImplCopyWith<$Res> {
  factory _$$ThumbnailsMigratorResultSomeFailedImplCopyWith(
          _$ThumbnailsMigratorResultSomeFailedImpl value,
          $Res Function(_$ThumbnailsMigratorResultSomeFailedImpl) then) =
      __$$ThumbnailsMigratorResultSomeFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<(Exception, StackTrace)> errors});
}

/// @nodoc
class __$$ThumbnailsMigratorResultSomeFailedImplCopyWithImpl<$Res>
    extends _$ThumbnailsMigratorResultCopyWithImpl<$Res,
        _$ThumbnailsMigratorResultSomeFailedImpl>
    implements _$$ThumbnailsMigratorResultSomeFailedImplCopyWith<$Res> {
  __$$ThumbnailsMigratorResultSomeFailedImplCopyWithImpl(
      _$ThumbnailsMigratorResultSomeFailedImpl _value,
      $Res Function(_$ThumbnailsMigratorResultSomeFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThumbnailsMigratorResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$ThumbnailsMigratorResultSomeFailedImpl(
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<(Exception, StackTrace)>,
    ));
  }
}

/// @nodoc

class _$ThumbnailsMigratorResultSomeFailedImpl
    implements ThumbnailsMigratorResultSomeFailed {
  _$ThumbnailsMigratorResultSomeFailedImpl(
      final List<(Exception, StackTrace)> errors)
      : _errors = errors;

  final List<(Exception, StackTrace)> _errors;
  @override
  List<(Exception, StackTrace)> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ThumbnailsMigratorResult.someFailed(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailsMigratorResultSomeFailedImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ThumbnailsMigratorResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailsMigratorResultSomeFailedImplCopyWith<
          _$ThumbnailsMigratorResultSomeFailedImpl>
      get copyWith => __$$ThumbnailsMigratorResultSomeFailedImplCopyWithImpl<
          _$ThumbnailsMigratorResultSomeFailedImpl>(this, _$identity);
}

abstract class ThumbnailsMigratorResultSomeFailed
    implements ThumbnailsMigratorResult {
  factory ThumbnailsMigratorResultSomeFailed(
          final List<(Exception, StackTrace)> errors) =
      _$ThumbnailsMigratorResultSomeFailedImpl;

  List<(Exception, StackTrace)> get errors;

  /// Create a copy of ThumbnailsMigratorResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThumbnailsMigratorResultSomeFailedImplCopyWith<
          _$ThumbnailsMigratorResultSomeFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
