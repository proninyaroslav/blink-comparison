// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_ref_image_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaveRefImageResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SaveRefImageResult()';
}


}

/// @nodoc
class $SaveRefImageResultCopyWith<$Res>  {
$SaveRefImageResultCopyWith(SaveRefImageResult _, $Res Function(SaveRefImageResult) __);
}



/// @nodoc


class SaveRefImageResultSuccess implements SaveRefImageResult {
  const SaveRefImageResultSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageResultSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SaveRefImageResult.success()';
}


}




/// @nodoc


class SaveRefImageResultError implements SaveRefImageResult {
  const SaveRefImageResultError(this.error);
  

 final  SaveRefImageError error;

/// Create a copy of SaveRefImageResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageResultErrorCopyWith<SaveRefImageResultError> get copyWith => _$SaveRefImageResultErrorCopyWithImpl<SaveRefImageResultError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageResultError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SaveRefImageResult.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageResultErrorCopyWith<$Res> implements $SaveRefImageResultCopyWith<$Res> {
  factory $SaveRefImageResultErrorCopyWith(SaveRefImageResultError value, $Res Function(SaveRefImageResultError) _then) = _$SaveRefImageResultErrorCopyWithImpl;
@useResult
$Res call({
 SaveRefImageError error
});


$SaveRefImageErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveRefImageResultErrorCopyWithImpl<$Res>
    implements $SaveRefImageResultErrorCopyWith<$Res> {
  _$SaveRefImageResultErrorCopyWithImpl(this._self, this._then);

  final SaveRefImageResultError _self;
  final $Res Function(SaveRefImageResultError) _then;

/// Create a copy of SaveRefImageResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SaveRefImageResultError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SaveRefImageError,
  ));
}

/// Create a copy of SaveRefImageResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveRefImageErrorCopyWith<$Res> get error {
  
  return $SaveRefImageErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

SaveRefImageError _$SaveRefImageErrorFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'fs':
          return SaveRefImageErrorFs.fromJson(
            json
          );
                case 'encrypt':
          return SaveRefImageErrorEncrypt.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'SaveRefImageError',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$SaveRefImageError {

 Object get error;

  /// Serializes this SaveRefImageError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageError&&const DeepCollectionEquality().equals(other.error, error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'SaveRefImageError(error: $error)';
}


}

/// @nodoc
class $SaveRefImageErrorCopyWith<$Res>  {
$SaveRefImageErrorCopyWith(SaveRefImageError _, $Res Function(SaveRefImageError) __);
}



/// @nodoc
@JsonSerializable()

class SaveRefImageErrorFs implements SaveRefImageError {
  const SaveRefImageErrorFs({required this.path, required this.error, final  String? $type}): $type = $type ?? 'fs';
  factory SaveRefImageErrorFs.fromJson(Map<String, dynamic> json) => _$SaveRefImageErrorFsFromJson(json);

 final  String path;
@override final  FsError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SaveRefImageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageErrorFsCopyWith<SaveRefImageErrorFs> get copyWith => _$SaveRefImageErrorFsCopyWithImpl<SaveRefImageErrorFs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveRefImageErrorFsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageErrorFs&&(identical(other.path, path) || other.path == path)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,error);

@override
String toString() {
  return 'SaveRefImageError.fs(path: $path, error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageErrorFsCopyWith<$Res> implements $SaveRefImageErrorCopyWith<$Res> {
  factory $SaveRefImageErrorFsCopyWith(SaveRefImageErrorFs value, $Res Function(SaveRefImageErrorFs) _then) = _$SaveRefImageErrorFsCopyWithImpl;
@useResult
$Res call({
 String path, FsError error
});


$FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveRefImageErrorFsCopyWithImpl<$Res>
    implements $SaveRefImageErrorFsCopyWith<$Res> {
  _$SaveRefImageErrorFsCopyWithImpl(this._self, this._then);

  final SaveRefImageErrorFs _self;
  final $Res Function(SaveRefImageErrorFs) _then;

/// Create a copy of SaveRefImageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,Object? error = null,}) {
  return _then(SaveRefImageErrorFs(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}

/// Create a copy of SaveRefImageError
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

class SaveRefImageErrorEncrypt implements SaveRefImageError {
  const SaveRefImageErrorEncrypt({required this.error, final  String? $type}): $type = $type ?? 'encrypt';
  factory SaveRefImageErrorEncrypt.fromJson(Map<String, dynamic> json) => _$SaveRefImageErrorEncryptFromJson(json);

@override final  EncryptError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SaveRefImageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageErrorEncryptCopyWith<SaveRefImageErrorEncrypt> get copyWith => _$SaveRefImageErrorEncryptCopyWithImpl<SaveRefImageErrorEncrypt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveRefImageErrorEncryptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageErrorEncrypt&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SaveRefImageError.encrypt(error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageErrorEncryptCopyWith<$Res> implements $SaveRefImageErrorCopyWith<$Res> {
  factory $SaveRefImageErrorEncryptCopyWith(SaveRefImageErrorEncrypt value, $Res Function(SaveRefImageErrorEncrypt) _then) = _$SaveRefImageErrorEncryptCopyWithImpl;
@useResult
$Res call({
 EncryptError error
});


$EncryptErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveRefImageErrorEncryptCopyWithImpl<$Res>
    implements $SaveRefImageErrorEncryptCopyWith<$Res> {
  _$SaveRefImageErrorEncryptCopyWithImpl(this._self, this._then);

  final SaveRefImageErrorEncrypt _self;
  final $Res Function(SaveRefImageErrorEncrypt) _then;

/// Create a copy of SaveRefImageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SaveRefImageErrorEncrypt(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as EncryptError,
  ));
}

/// Create a copy of SaveRefImageError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptErrorCopyWith<$Res> get error {
  
  return $EncryptErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
