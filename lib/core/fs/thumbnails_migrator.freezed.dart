// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thumbnails_migrator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThumbnailsMigratorResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThumbnailsMigratorResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThumbnailsMigratorResult()';
}


}

/// @nodoc
class $ThumbnailsMigratorResultCopyWith<$Res>  {
$ThumbnailsMigratorResultCopyWith(ThumbnailsMigratorResult _, $Res Function(ThumbnailsMigratorResult) __);
}



/// @nodoc


class ThumbnailsMigratorResultSuccess implements ThumbnailsMigratorResult {
  const ThumbnailsMigratorResultSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThumbnailsMigratorResultSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThumbnailsMigratorResult.success()';
}


}




/// @nodoc


class ThumbnailsMigratorResultSomeFailed implements ThumbnailsMigratorResult {
  const ThumbnailsMigratorResultSomeFailed(final  List<(Exception, StackTrace)> errors): _errors = errors;
  

 final  List<(Exception, StackTrace)> _errors;
 List<(Exception, StackTrace)> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of ThumbnailsMigratorResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThumbnailsMigratorResultSomeFailedCopyWith<ThumbnailsMigratorResultSomeFailed> get copyWith => _$ThumbnailsMigratorResultSomeFailedCopyWithImpl<ThumbnailsMigratorResultSomeFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThumbnailsMigratorResultSomeFailed&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ThumbnailsMigratorResult.someFailed(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ThumbnailsMigratorResultSomeFailedCopyWith<$Res> implements $ThumbnailsMigratorResultCopyWith<$Res> {
  factory $ThumbnailsMigratorResultSomeFailedCopyWith(ThumbnailsMigratorResultSomeFailed value, $Res Function(ThumbnailsMigratorResultSomeFailed) _then) = _$ThumbnailsMigratorResultSomeFailedCopyWithImpl;
@useResult
$Res call({
 List<(Exception, StackTrace)> errors
});




}
/// @nodoc
class _$ThumbnailsMigratorResultSomeFailedCopyWithImpl<$Res>
    implements $ThumbnailsMigratorResultSomeFailedCopyWith<$Res> {
  _$ThumbnailsMigratorResultSomeFailedCopyWithImpl(this._self, this._then);

  final ThumbnailsMigratorResultSomeFailed _self;
  final $Res Function(ThumbnailsMigratorResultSomeFailed) _then;

/// Create a copy of ThumbnailsMigratorResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(ThumbnailsMigratorResultSomeFailed(
null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<(Exception, StackTrace)>,
  ));
}


}

// dart format on
