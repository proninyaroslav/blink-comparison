// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_ref_image_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SaveRefImageStatus _$SaveRefImageStatusFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'inProgress':
          return SaveRefImageStatusProgress.fromJson(
            json
          );
                case 'completed':
          return SaveRefImageStatusCompleted.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'SaveRefImageStatus',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$SaveRefImageStatus implements DiagnosticableTreeMixin {

 String get imageId;
/// Create a copy of SaveRefImageStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageStatusCopyWith<SaveRefImageStatus> get copyWith => _$SaveRefImageStatusCopyWithImpl<SaveRefImageStatus>(this as SaveRefImageStatus, _$identity);

  /// Serializes this SaveRefImageStatus to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SaveRefImageStatus'))
    ..add(DiagnosticsProperty('imageId', imageId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageStatus&&(identical(other.imageId, imageId) || other.imageId == imageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SaveRefImageStatus(imageId: $imageId)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageStatusCopyWith<$Res>  {
  factory $SaveRefImageStatusCopyWith(SaveRefImageStatus value, $Res Function(SaveRefImageStatus) _then) = _$SaveRefImageStatusCopyWithImpl;
@useResult
$Res call({
 String imageId
});




}
/// @nodoc
class _$SaveRefImageStatusCopyWithImpl<$Res>
    implements $SaveRefImageStatusCopyWith<$Res> {
  _$SaveRefImageStatusCopyWithImpl(this._self, this._then);

  final SaveRefImageStatus _self;
  final $Res Function(SaveRefImageStatus) _then;

/// Create a copy of SaveRefImageStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageId = null,}) {
  return _then(_self.copyWith(
imageId: null == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc
@JsonSerializable()

class SaveRefImageStatusProgress with DiagnosticableTreeMixin implements SaveRefImageStatus {
  const SaveRefImageStatusProgress({required this.imageId, final  String? $type}): $type = $type ?? 'inProgress';
  factory SaveRefImageStatusProgress.fromJson(Map<String, dynamic> json) => _$SaveRefImageStatusProgressFromJson(json);

@override final  String imageId;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SaveRefImageStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageStatusProgressCopyWith<SaveRefImageStatusProgress> get copyWith => _$SaveRefImageStatusProgressCopyWithImpl<SaveRefImageStatusProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveRefImageStatusProgressToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SaveRefImageStatus.inProgress'))
    ..add(DiagnosticsProperty('imageId', imageId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageStatusProgress&&(identical(other.imageId, imageId) || other.imageId == imageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SaveRefImageStatus.inProgress(imageId: $imageId)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageStatusProgressCopyWith<$Res> implements $SaveRefImageStatusCopyWith<$Res> {
  factory $SaveRefImageStatusProgressCopyWith(SaveRefImageStatusProgress value, $Res Function(SaveRefImageStatusProgress) _then) = _$SaveRefImageStatusProgressCopyWithImpl;
@override @useResult
$Res call({
 String imageId
});




}
/// @nodoc
class _$SaveRefImageStatusProgressCopyWithImpl<$Res>
    implements $SaveRefImageStatusProgressCopyWith<$Res> {
  _$SaveRefImageStatusProgressCopyWithImpl(this._self, this._then);

  final SaveRefImageStatusProgress _self;
  final $Res Function(SaveRefImageStatusProgress) _then;

/// Create a copy of SaveRefImageStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageId = null,}) {
  return _then(SaveRefImageStatusProgress(
imageId: null == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SaveRefImageStatusCompleted with DiagnosticableTreeMixin implements SaveRefImageStatus {
  const SaveRefImageStatusCompleted({required this.imageId, this.error, final  String? $type}): $type = $type ?? 'completed';
  factory SaveRefImageStatusCompleted.fromJson(Map<String, dynamic> json) => _$SaveRefImageStatusCompletedFromJson(json);

@override final  String imageId;
 final  SaveRefImageStatusError? error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SaveRefImageStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageStatusCompletedCopyWith<SaveRefImageStatusCompleted> get copyWith => _$SaveRefImageStatusCompletedCopyWithImpl<SaveRefImageStatusCompleted>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveRefImageStatusCompletedToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SaveRefImageStatus.completed'))
    ..add(DiagnosticsProperty('imageId', imageId))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageStatusCompleted&&(identical(other.imageId, imageId) || other.imageId == imageId)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageId,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SaveRefImageStatus.completed(imageId: $imageId, error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageStatusCompletedCopyWith<$Res> implements $SaveRefImageStatusCopyWith<$Res> {
  factory $SaveRefImageStatusCompletedCopyWith(SaveRefImageStatusCompleted value, $Res Function(SaveRefImageStatusCompleted) _then) = _$SaveRefImageStatusCompletedCopyWithImpl;
@override @useResult
$Res call({
 String imageId, SaveRefImageStatusError? error
});


$SaveRefImageStatusErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$SaveRefImageStatusCompletedCopyWithImpl<$Res>
    implements $SaveRefImageStatusCompletedCopyWith<$Res> {
  _$SaveRefImageStatusCompletedCopyWithImpl(this._self, this._then);

  final SaveRefImageStatusCompleted _self;
  final $Res Function(SaveRefImageStatusCompleted) _then;

/// Create a copy of SaveRefImageStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageId = null,Object? error = freezed,}) {
  return _then(SaveRefImageStatusCompleted(
imageId: null == imageId ? _self.imageId : imageId // ignore: cast_nullable_to_non_nullable
as String,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SaveRefImageStatusError?,
  ));
}

/// Create a copy of SaveRefImageStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveRefImageStatusErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $SaveRefImageStatusErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

SaveRefImageStatusError _$SaveRefImageStatusErrorFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'saveImage':
          return SaveRefImageStatusErrorSaveImage.fromJson(
            json
          );
                case 'generateThumbnail':
          return SaveRefImageStatusErrorGenerateThumbnail.fromJson(
            json
          );
                case 'saveThumbnail':
          return SaveRefImageStatusErrorSaveThumbnail.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'SaveRefImageStatusError',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$SaveRefImageStatusError implements DiagnosticableTreeMixin {

 Object get error;

  /// Serializes this SaveRefImageStatusError to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SaveRefImageStatusError'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageStatusError&&const DeepCollectionEquality().equals(other.error, error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SaveRefImageStatusError(error: $error)';
}


}

/// @nodoc
class $SaveRefImageStatusErrorCopyWith<$Res>  {
$SaveRefImageStatusErrorCopyWith(SaveRefImageStatusError _, $Res Function(SaveRefImageStatusError) __);
}



/// @nodoc
@JsonSerializable()

class SaveRefImageStatusErrorSaveImage with DiagnosticableTreeMixin implements SaveRefImageStatusError {
  const SaveRefImageStatusErrorSaveImage(this.error, {final  String? $type}): $type = $type ?? 'saveImage';
  factory SaveRefImageStatusErrorSaveImage.fromJson(Map<String, dynamic> json) => _$SaveRefImageStatusErrorSaveImageFromJson(json);

@override final  SaveRefImageError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageStatusErrorSaveImageCopyWith<SaveRefImageStatusErrorSaveImage> get copyWith => _$SaveRefImageStatusErrorSaveImageCopyWithImpl<SaveRefImageStatusErrorSaveImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveRefImageStatusErrorSaveImageToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SaveRefImageStatusError.saveImage'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageStatusErrorSaveImage&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SaveRefImageStatusError.saveImage(error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageStatusErrorSaveImageCopyWith<$Res> implements $SaveRefImageStatusErrorCopyWith<$Res> {
  factory $SaveRefImageStatusErrorSaveImageCopyWith(SaveRefImageStatusErrorSaveImage value, $Res Function(SaveRefImageStatusErrorSaveImage) _then) = _$SaveRefImageStatusErrorSaveImageCopyWithImpl;
@useResult
$Res call({
 SaveRefImageError error
});


$SaveRefImageErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveRefImageStatusErrorSaveImageCopyWithImpl<$Res>
    implements $SaveRefImageStatusErrorSaveImageCopyWith<$Res> {
  _$SaveRefImageStatusErrorSaveImageCopyWithImpl(this._self, this._then);

  final SaveRefImageStatusErrorSaveImage _self;
  final $Res Function(SaveRefImageStatusErrorSaveImage) _then;

/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SaveRefImageStatusErrorSaveImage(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SaveRefImageError,
  ));
}

/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveRefImageErrorCopyWith<$Res> get error {
  
  return $SaveRefImageErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class SaveRefImageStatusErrorGenerateThumbnail with DiagnosticableTreeMixin implements SaveRefImageStatusError {
  const SaveRefImageStatusErrorGenerateThumbnail(this.error, {final  String? $type}): $type = $type ?? 'generateThumbnail';
  factory SaveRefImageStatusErrorGenerateThumbnail.fromJson(Map<String, dynamic> json) => _$SaveRefImageStatusErrorGenerateThumbnailFromJson(json);

@override final  GenerateThumbnailError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageStatusErrorGenerateThumbnailCopyWith<SaveRefImageStatusErrorGenerateThumbnail> get copyWith => _$SaveRefImageStatusErrorGenerateThumbnailCopyWithImpl<SaveRefImageStatusErrorGenerateThumbnail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveRefImageStatusErrorGenerateThumbnailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SaveRefImageStatusError.generateThumbnail'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageStatusErrorGenerateThumbnail&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SaveRefImageStatusError.generateThumbnail(error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageStatusErrorGenerateThumbnailCopyWith<$Res> implements $SaveRefImageStatusErrorCopyWith<$Res> {
  factory $SaveRefImageStatusErrorGenerateThumbnailCopyWith(SaveRefImageStatusErrorGenerateThumbnail value, $Res Function(SaveRefImageStatusErrorGenerateThumbnail) _then) = _$SaveRefImageStatusErrorGenerateThumbnailCopyWithImpl;
@useResult
$Res call({
 GenerateThumbnailError error
});


$GenerateThumbnailErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveRefImageStatusErrorGenerateThumbnailCopyWithImpl<$Res>
    implements $SaveRefImageStatusErrorGenerateThumbnailCopyWith<$Res> {
  _$SaveRefImageStatusErrorGenerateThumbnailCopyWithImpl(this._self, this._then);

  final SaveRefImageStatusErrorGenerateThumbnail _self;
  final $Res Function(SaveRefImageStatusErrorGenerateThumbnail) _then;

/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SaveRefImageStatusErrorGenerateThumbnail(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as GenerateThumbnailError,
  ));
}

/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenerateThumbnailErrorCopyWith<$Res> get error {
  
  return $GenerateThumbnailErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class SaveRefImageStatusErrorSaveThumbnail with DiagnosticableTreeMixin implements SaveRefImageStatusError {
  const SaveRefImageStatusErrorSaveThumbnail(this.error, {final  String? $type}): $type = $type ?? 'saveThumbnail';
  factory SaveRefImageStatusErrorSaveThumbnail.fromJson(Map<String, dynamic> json) => _$SaveRefImageStatusErrorSaveThumbnailFromJson(json);

@override final  SaveThumbnailError error;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveRefImageStatusErrorSaveThumbnailCopyWith<SaveRefImageStatusErrorSaveThumbnail> get copyWith => _$SaveRefImageStatusErrorSaveThumbnailCopyWithImpl<SaveRefImageStatusErrorSaveThumbnail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaveRefImageStatusErrorSaveThumbnailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SaveRefImageStatusError.saveThumbnail'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveRefImageStatusErrorSaveThumbnail&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SaveRefImageStatusError.saveThumbnail(error: $error)';
}


}

/// @nodoc
abstract mixin class $SaveRefImageStatusErrorSaveThumbnailCopyWith<$Res> implements $SaveRefImageStatusErrorCopyWith<$Res> {
  factory $SaveRefImageStatusErrorSaveThumbnailCopyWith(SaveRefImageStatusErrorSaveThumbnail value, $Res Function(SaveRefImageStatusErrorSaveThumbnail) _then) = _$SaveRefImageStatusErrorSaveThumbnailCopyWithImpl;
@useResult
$Res call({
 SaveThumbnailError error
});


$SaveThumbnailErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SaveRefImageStatusErrorSaveThumbnailCopyWithImpl<$Res>
    implements $SaveRefImageStatusErrorSaveThumbnailCopyWith<$Res> {
  _$SaveRefImageStatusErrorSaveThumbnailCopyWithImpl(this._self, this._then);

  final SaveRefImageStatusErrorSaveThumbnail _self;
  final $Res Function(SaveRefImageStatusErrorSaveThumbnail) _then;

/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SaveRefImageStatusErrorSaveThumbnail(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SaveThumbnailError,
  ));
}

/// Create a copy of SaveRefImageStatusError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveThumbnailErrorCopyWith<$Res> get error {
  
  return $SaveThumbnailErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
