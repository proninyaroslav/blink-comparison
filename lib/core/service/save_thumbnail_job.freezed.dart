// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_thumbnail_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaveThumbnailResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveThumbnailResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SaveThumbnailResult()';
}


}

/// @nodoc
class $SaveThumbnailResultCopyWith<$Res>  {
$SaveThumbnailResultCopyWith(SaveThumbnailResult _, $Res Function(SaveThumbnailResult) __);
}



/// @nodoc


class SaveThumbnailResultSuccess implements SaveThumbnailResult {
  const SaveThumbnailResultSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveThumbnailResultSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SaveThumbnailResult.success()';
}


}




/// @nodoc


class SaveThumbnailResultFail implements SaveThumbnailResult {
  const SaveThumbnailResultFail(this.error);
  

 final  SaveThumbnailError error;

/// Create a copy of SaveThumbnailResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveThumbnailResultFailCopyWith<SaveThumbnailResultFail> get copyWith => _$SaveThumbnailResultFailCopyWithImpl<SaveThumbnailResultFail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveThumbnailResultFail&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SaveThumbnailResult.fail(error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveThumbnailResultFailCopyWith<$Res> implements $SaveThumbnailResultCopyWith<$Res> {
  factory $SaveThumbnailResultFailCopyWith(SaveThumbnailResultFail value, $Res Function(SaveThumbnailResultFail) _then) = _$SaveThumbnailResultFailCopyWithImpl;
@useResult
$Res call({
 SaveThumbnailError error
});


$SaveThumbnailErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveThumbnailResultFailCopyWithImpl<$Res>
    implements $SaveThumbnailResultFailCopyWith<$Res> {
  _$SaveThumbnailResultFailCopyWithImpl(this._self, this._then);

  final SaveThumbnailResultFail _self;
  final $Res Function(SaveThumbnailResultFail) _then;

/// Create a copy of SaveThumbnailResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SaveThumbnailResultFail(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SaveThumbnailError,
  ));
}

/// Create a copy of SaveThumbnailResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveThumbnailErrorCopyWith<$Res> get error {
  
  return $SaveThumbnailErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

SaveThumbnailError _$SaveThumbnailErrorFromJson(
  Map<String, dynamic> json
) {
    return SaveThumbnailErrorFs.fromJson(
      json
    );
}

/// @nodoc
mixin _$SaveThumbnailError {

 FsError get error;
/// Create a copy of SaveThumbnailError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveThumbnailErrorCopyWith<SaveThumbnailError> get copyWith => _$SaveThumbnailErrorCopyWithImpl<SaveThumbnailError>(this as SaveThumbnailError, _$identity);

  /// Serializes this SaveThumbnailError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveThumbnailError&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SaveThumbnailError(error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveThumbnailErrorCopyWith<$Res>  {
  factory $SaveThumbnailErrorCopyWith(SaveThumbnailError value, $Res Function(SaveThumbnailError) _then) = _$SaveThumbnailErrorCopyWithImpl;
@useResult
$Res call({
 FsError error
});


$FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveThumbnailErrorCopyWithImpl<$Res>
    implements $SaveThumbnailErrorCopyWith<$Res> {
  _$SaveThumbnailErrorCopyWithImpl(this._self, this._then);

  final SaveThumbnailError _self;
  final $Res Function(SaveThumbnailError) _then;

/// Create a copy of SaveThumbnailError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,}) {
  return _then(_self.copyWith(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}
/// Create a copy of SaveThumbnailError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FsErrorCopyWith<$Res> get error {
  
  return $FsErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}



/// @nodoc
@JsonSerializable()

class SaveThumbnailErrorFs implements SaveThumbnailError {
  const SaveThumbnailErrorFs(this.error);
  factory SaveThumbnailErrorFs.fromJson(Map<String, dynamic> json) => _$SaveThumbnailErrorFsFromJson(json);

@override final  FsError error;

/// Create a copy of SaveThumbnailError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveThumbnailErrorFsCopyWith<SaveThumbnailErrorFs> get copyWith => _$SaveThumbnailErrorFsCopyWithImpl<SaveThumbnailErrorFs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveThumbnailErrorFsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveThumbnailErrorFs&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SaveThumbnailError.fs(error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveThumbnailErrorFsCopyWith<$Res> implements $SaveThumbnailErrorCopyWith<$Res> {
  factory $SaveThumbnailErrorFsCopyWith(SaveThumbnailErrorFs value, $Res Function(SaveThumbnailErrorFs) _then) = _$SaveThumbnailErrorFsCopyWithImpl;
@override @useResult
$Res call({
 FsError error
});


@override $FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveThumbnailErrorFsCopyWithImpl<$Res>
    implements $SaveThumbnailErrorFsCopyWith<$Res> {
  _$SaveThumbnailErrorFsCopyWithImpl(this._self, this._then);

  final SaveThumbnailErrorFs _self;
  final $Res Function(SaveThumbnailErrorFs) _then;

/// Create a copy of SaveThumbnailError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SaveThumbnailErrorFs(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}

/// Create a copy of SaveThumbnailError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FsErrorCopyWith<$Res> get error {
  
  return $FsErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
