// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_thumbnail_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenerateThumbnailResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateThumbnailResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateThumbnailResult()';
}


}

/// @nodoc
class $GenerateThumbnailResultCopyWith<$Res>  {
$GenerateThumbnailResultCopyWith(GenerateThumbnailResult _, $Res Function(GenerateThumbnailResult) __);
}



/// @nodoc


class GenerateThumbnailResultSuccess implements GenerateThumbnailResult {
  const GenerateThumbnailResultSuccess({required this.thumbnail});
  

 final  Uint8List thumbnail;

/// Create a copy of GenerateThumbnailResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateThumbnailResultSuccessCopyWith<GenerateThumbnailResultSuccess> get copyWith => _$GenerateThumbnailResultSuccessCopyWithImpl<GenerateThumbnailResultSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateThumbnailResultSuccess&&const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(thumbnail));

@override
String toString() {
  return 'GenerateThumbnailResult.success(thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $GenerateThumbnailResultSuccessCopyWith<$Res> implements $GenerateThumbnailResultCopyWith<$Res> {
  factory $GenerateThumbnailResultSuccessCopyWith(GenerateThumbnailResultSuccess value, $Res Function(GenerateThumbnailResultSuccess) _then) = _$GenerateThumbnailResultSuccessCopyWithImpl;
@useResult
$Res call({
 Uint8List thumbnail
});




}
/// @nodoc
class _$GenerateThumbnailResultSuccessCopyWithImpl<$Res>
    implements $GenerateThumbnailResultSuccessCopyWith<$Res> {
  _$GenerateThumbnailResultSuccessCopyWithImpl(this._self, this._then);

  final GenerateThumbnailResultSuccess _self;
  final $Res Function(GenerateThumbnailResultSuccess) _then;

/// Create a copy of GenerateThumbnailResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? thumbnail = null,}) {
  return _then(GenerateThumbnailResultSuccess(
thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc


class GenerateThumbnailResultFail implements GenerateThumbnailResult {
  const GenerateThumbnailResultFail(this.error);
  

 final  GenerateThumbnailError error;

/// Create a copy of GenerateThumbnailResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateThumbnailResultFailCopyWith<GenerateThumbnailResultFail> get copyWith => _$GenerateThumbnailResultFailCopyWithImpl<GenerateThumbnailResultFail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateThumbnailResultFail&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GenerateThumbnailResult.fail(error: $error)';
}


}

/// @nodoc
abstract mixin class $GenerateThumbnailResultFailCopyWith<$Res> implements $GenerateThumbnailResultCopyWith<$Res> {
  factory $GenerateThumbnailResultFailCopyWith(GenerateThumbnailResultFail value, $Res Function(GenerateThumbnailResultFail) _then) = _$GenerateThumbnailResultFailCopyWithImpl;
@useResult
$Res call({
 GenerateThumbnailError error
});


$GenerateThumbnailErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$GenerateThumbnailResultFailCopyWithImpl<$Res>
    implements $GenerateThumbnailResultFailCopyWith<$Res> {
  _$GenerateThumbnailResultFailCopyWithImpl(this._self, this._then);

  final GenerateThumbnailResultFail _self;
  final $Res Function(GenerateThumbnailResultFail) _then;

/// Create a copy of GenerateThumbnailResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GenerateThumbnailResultFail(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as GenerateThumbnailError,
  ));
}

/// Create a copy of GenerateThumbnailResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerateThumbnailErrorCopyWith<$Res> get error {
  
  return $GenerateThumbnailErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

GenerateThumbnailError _$GenerateThumbnailErrorFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'fs':
          return GenerateThumbnailErrorFs.fromJson(
            json
          );
                case 'fileNotFound':
          return GenerateThumbnailErrorFileNotFound.fromJson(
            json
          );
                case 'unsupportedFormat':
          return GenerateThumbnailErrorUnsupportedFormat.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'GenerateThumbnailError',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$GenerateThumbnailError {



  /// Serializes this GenerateThumbnailError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateThumbnailError);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateThumbnailError()';
}


}

/// @nodoc
class $GenerateThumbnailErrorCopyWith<$Res>  {
$GenerateThumbnailErrorCopyWith(GenerateThumbnailError _, $Res Function(GenerateThumbnailError) __);
}



/// @nodoc
@JsonSerializable()

class GenerateThumbnailErrorFs implements GenerateThumbnailError {
  const GenerateThumbnailErrorFs(this.error, {final  String? $type}): $type = $type ?? 'fs';
  factory GenerateThumbnailErrorFs.fromJson(Map<String, dynamic> json) => _$GenerateThumbnailErrorFsFromJson(json);

 final  FsError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GenerateThumbnailError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateThumbnailErrorFsCopyWith<GenerateThumbnailErrorFs> get copyWith => _$GenerateThumbnailErrorFsCopyWithImpl<GenerateThumbnailErrorFs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerateThumbnailErrorFsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateThumbnailErrorFs&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GenerateThumbnailError.fs(error: $error)';
}


}

/// @nodoc
abstract mixin class $GenerateThumbnailErrorFsCopyWith<$Res> implements $GenerateThumbnailErrorCopyWith<$Res> {
  factory $GenerateThumbnailErrorFsCopyWith(GenerateThumbnailErrorFs value, $Res Function(GenerateThumbnailErrorFs) _then) = _$GenerateThumbnailErrorFsCopyWithImpl;
@useResult
$Res call({
 FsError error
});


$FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$GenerateThumbnailErrorFsCopyWithImpl<$Res>
    implements $GenerateThumbnailErrorFsCopyWith<$Res> {
  _$GenerateThumbnailErrorFsCopyWithImpl(this._self, this._then);

  final GenerateThumbnailErrorFs _self;
  final $Res Function(GenerateThumbnailErrorFs) _then;

/// Create a copy of GenerateThumbnailError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GenerateThumbnailErrorFs(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}

/// Create a copy of GenerateThumbnailError
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

class GenerateThumbnailErrorFileNotFound implements GenerateThumbnailError {
  const GenerateThumbnailErrorFileNotFound({required this.path, final  String? $type}): $type = $type ?? 'fileNotFound';
  factory GenerateThumbnailErrorFileNotFound.fromJson(Map<String, dynamic> json) => _$GenerateThumbnailErrorFileNotFoundFromJson(json);

 final  String path;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GenerateThumbnailError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateThumbnailErrorFileNotFoundCopyWith<GenerateThumbnailErrorFileNotFound> get copyWith => _$GenerateThumbnailErrorFileNotFoundCopyWithImpl<GenerateThumbnailErrorFileNotFound>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerateThumbnailErrorFileNotFoundToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateThumbnailErrorFileNotFound&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'GenerateThumbnailError.fileNotFound(path: $path)';
}


}

/// @nodoc
abstract mixin class $GenerateThumbnailErrorFileNotFoundCopyWith<$Res> implements $GenerateThumbnailErrorCopyWith<$Res> {
  factory $GenerateThumbnailErrorFileNotFoundCopyWith(GenerateThumbnailErrorFileNotFound value, $Res Function(GenerateThumbnailErrorFileNotFound) _then) = _$GenerateThumbnailErrorFileNotFoundCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$GenerateThumbnailErrorFileNotFoundCopyWithImpl<$Res>
    implements $GenerateThumbnailErrorFileNotFoundCopyWith<$Res> {
  _$GenerateThumbnailErrorFileNotFoundCopyWithImpl(this._self, this._then);

  final GenerateThumbnailErrorFileNotFound _self;
  final $Res Function(GenerateThumbnailErrorFileNotFound) _then;

/// Create a copy of GenerateThumbnailError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(GenerateThumbnailErrorFileNotFound(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GenerateThumbnailErrorUnsupportedFormat implements GenerateThumbnailError {
  const GenerateThumbnailErrorUnsupportedFormat({required this.path, final  String? $type}): $type = $type ?? 'unsupportedFormat';
  factory GenerateThumbnailErrorUnsupportedFormat.fromJson(Map<String, dynamic> json) => _$GenerateThumbnailErrorUnsupportedFormatFromJson(json);

 final  String path;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GenerateThumbnailError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateThumbnailErrorUnsupportedFormatCopyWith<GenerateThumbnailErrorUnsupportedFormat> get copyWith => _$GenerateThumbnailErrorUnsupportedFormatCopyWithImpl<GenerateThumbnailErrorUnsupportedFormat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerateThumbnailErrorUnsupportedFormatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateThumbnailErrorUnsupportedFormat&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'GenerateThumbnailError.unsupportedFormat(path: $path)';
}


}

/// @nodoc
abstract mixin class $GenerateThumbnailErrorUnsupportedFormatCopyWith<$Res> implements $GenerateThumbnailErrorCopyWith<$Res> {
  factory $GenerateThumbnailErrorUnsupportedFormatCopyWith(GenerateThumbnailErrorUnsupportedFormat value, $Res Function(GenerateThumbnailErrorUnsupportedFormat) _then) = _$GenerateThumbnailErrorUnsupportedFormatCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$GenerateThumbnailErrorUnsupportedFormatCopyWithImpl<$Res>
    implements $GenerateThumbnailErrorUnsupportedFormatCopyWith<$Res> {
  _$GenerateThumbnailErrorUnsupportedFormatCopyWithImpl(this._self, this._then);

  final GenerateThumbnailErrorUnsupportedFormat _self;
  final $Res Function(GenerateThumbnailErrorUnsupportedFormat) _then;

/// Create a copy of GenerateThumbnailError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(GenerateThumbnailErrorUnsupportedFormat(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
