// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RefImageState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageState()';
}


}

/// @nodoc
class $RefImageStateCopyWith<$Res>  {
$RefImageStateCopyWith(RefImageState _, $Res Function(RefImageState) __);
}



/// @nodoc


class RefImageStateInitial with DiagnosticableTreeMixin implements RefImageState {
  const RefImageStateInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageState.initial()';
}


}




/// @nodoc


class RefImageStateLoading with DiagnosticableTreeMixin implements RefImageState {
  const RefImageStateLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageState.loading()';
}


}




/// @nodoc


class RefImageStateLoaded with DiagnosticableTreeMixin implements RefImageState {
  const RefImageStateLoaded(this.image);
  

 final  RefImage image;

/// Create a copy of RefImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageStateLoadedCopyWith<RefImageStateLoaded> get copyWith => _$RefImageStateLoadedCopyWithImpl<RefImageStateLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageState.loaded'))
    ..add(DiagnosticsProperty('image', image));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageStateLoaded&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageState.loaded(image: $image)';
}


}

/// @nodoc
abstract mixin class $RefImageStateLoadedCopyWith<$Res> implements $RefImageStateCopyWith<$Res> {
  factory $RefImageStateLoadedCopyWith(RefImageStateLoaded value, $Res Function(RefImageStateLoaded) _then) = _$RefImageStateLoadedCopyWithImpl;
@useResult
$Res call({
 RefImage image
});


$RefImageCopyWith<$Res> get image;

}
/// @nodoc
class _$RefImageStateLoadedCopyWithImpl<$Res>
    implements $RefImageStateLoadedCopyWith<$Res> {
  _$RefImageStateLoadedCopyWithImpl(this._self, this._then);

  final RefImageStateLoaded _self;
  final $Res Function(RefImageStateLoaded) _then;

/// Create a copy of RefImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(RefImageStateLoaded(
null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as RefImage,
  ));
}

/// Create a copy of RefImageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefImageCopyWith<$Res> get image {
  
  return $RefImageCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}

/// @nodoc


class RefImageStateLoadFailed with DiagnosticableTreeMixin implements RefImageState {
  const RefImageStateLoadFailed(this.error);
  

 final  LoadRefImageError error;

/// Create a copy of RefImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefImageStateLoadFailedCopyWith<RefImageStateLoadFailed> get copyWith => _$RefImageStateLoadFailedCopyWithImpl<RefImageStateLoadFailed>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RefImageState.loadFailed'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefImageStateLoadFailed&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RefImageState.loadFailed(error: $error)';
}


}

/// @nodoc
abstract mixin class $RefImageStateLoadFailedCopyWith<$Res> implements $RefImageStateCopyWith<$Res> {
  factory $RefImageStateLoadFailedCopyWith(RefImageStateLoadFailed value, $Res Function(RefImageStateLoadFailed) _then) = _$RefImageStateLoadFailedCopyWithImpl;
@useResult
$Res call({
 LoadRefImageError error
});


$LoadRefImageErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$RefImageStateLoadFailedCopyWithImpl<$Res>
    implements $RefImageStateLoadFailedCopyWith<$Res> {
  _$RefImageStateLoadFailedCopyWithImpl(this._self, this._then);

  final RefImageStateLoadFailed _self;
  final $Res Function(RefImageStateLoadFailed) _then;

/// Create a copy of RefImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(RefImageStateLoadFailed(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as LoadRefImageError,
  ));
}

/// Create a copy of RefImageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadRefImageErrorCopyWith<$Res> get error {
  
  return $LoadRefImageErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc
mixin _$LoadRefImageError implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoadRefImageError'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRefImageError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoadRefImageError()';
}


}

/// @nodoc
class $LoadRefImageErrorCopyWith<$Res>  {
$LoadRefImageErrorCopyWith(LoadRefImageError _, $Res Function(LoadRefImageError) __);
}



/// @nodoc


class LoadRefImageErrorNotFound with DiagnosticableTreeMixin implements LoadRefImageError {
  const LoadRefImageErrorNotFound();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoadRefImageError.notFound'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRefImageErrorNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoadRefImageError.notFound()';
}


}




/// @nodoc


class LoadRefImageErrorStorage with DiagnosticableTreeMixin implements LoadRefImageError {
  const LoadRefImageErrorStorage({this.exception, this.stackTrace});
  

 final  Exception? exception;
 final  StackTrace? stackTrace;

/// Create a copy of LoadRefImageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRefImageErrorStorageCopyWith<LoadRefImageErrorStorage> get copyWith => _$LoadRefImageErrorStorageCopyWithImpl<LoadRefImageErrorStorage>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoadRefImageError.database'))
    ..add(DiagnosticsProperty('exception', exception))..add(DiagnosticsProperty('stackTrace', stackTrace));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRefImageErrorStorage&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoadRefImageError.database(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $LoadRefImageErrorStorageCopyWith<$Res> implements $LoadRefImageErrorCopyWith<$Res> {
  factory $LoadRefImageErrorStorageCopyWith(LoadRefImageErrorStorage value, $Res Function(LoadRefImageErrorStorage) _then) = _$LoadRefImageErrorStorageCopyWithImpl;
@useResult
$Res call({
 Exception? exception, StackTrace? stackTrace
});




}
/// @nodoc
class _$LoadRefImageErrorStorageCopyWithImpl<$Res>
    implements $LoadRefImageErrorStorageCopyWith<$Res> {
  _$LoadRefImageErrorStorageCopyWithImpl(this._self, this._then);

  final LoadRefImageErrorStorage _self;
  final $Res Function(LoadRefImageErrorStorage) _then;

/// Create a copy of LoadRefImageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(LoadRefImageErrorStorage(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class LoadRefImageErrorFs with DiagnosticableTreeMixin implements LoadRefImageError {
  const LoadRefImageErrorFs(this.error);
  

 final  FsError error;

/// Create a copy of LoadRefImageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRefImageErrorFsCopyWith<LoadRefImageErrorFs> get copyWith => _$LoadRefImageErrorFsCopyWithImpl<LoadRefImageErrorFs>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoadRefImageError.fs'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRefImageErrorFs&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoadRefImageError.fs(error: $error)';
}


}

/// @nodoc
abstract mixin class $LoadRefImageErrorFsCopyWith<$Res> implements $LoadRefImageErrorCopyWith<$Res> {
  factory $LoadRefImageErrorFsCopyWith(LoadRefImageErrorFs value, $Res Function(LoadRefImageErrorFs) _then) = _$LoadRefImageErrorFsCopyWithImpl;
@useResult
$Res call({
 FsError error
});


$FsErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$LoadRefImageErrorFsCopyWithImpl<$Res>
    implements $LoadRefImageErrorFsCopyWith<$Res> {
  _$LoadRefImageErrorFsCopyWithImpl(this._self, this._then);

  final LoadRefImageErrorFs _self;
  final $Res Function(LoadRefImageErrorFs) _then;

/// Create a copy of LoadRefImageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LoadRefImageErrorFs(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as FsError,
  ));
}

/// Create a copy of LoadRefImageError
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


class LoadRefImageErrorNoSecureKey with DiagnosticableTreeMixin implements LoadRefImageError {
  const LoadRefImageErrorNoSecureKey();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoadRefImageError.noSecureKey'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRefImageErrorNoSecureKey);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoadRefImageError.noSecureKey()';
}


}




/// @nodoc


class LoadRefImageErrorDecrypt with DiagnosticableTreeMixin implements LoadRefImageError {
  const LoadRefImageErrorDecrypt(this.error);
  

 final  DecryptError error;

/// Create a copy of LoadRefImageError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRefImageErrorDecryptCopyWith<LoadRefImageErrorDecrypt> get copyWith => _$LoadRefImageErrorDecryptCopyWithImpl<LoadRefImageErrorDecrypt>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoadRefImageError.decrypt'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRefImageErrorDecrypt&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoadRefImageError.decrypt(error: $error)';
}


}

/// @nodoc
abstract mixin class $LoadRefImageErrorDecryptCopyWith<$Res> implements $LoadRefImageErrorCopyWith<$Res> {
  factory $LoadRefImageErrorDecryptCopyWith(LoadRefImageErrorDecrypt value, $Res Function(LoadRefImageErrorDecrypt) _then) = _$LoadRefImageErrorDecryptCopyWithImpl;
@useResult
$Res call({
 DecryptError error
});


$DecryptErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$LoadRefImageErrorDecryptCopyWithImpl<$Res>
    implements $LoadRefImageErrorDecryptCopyWith<$Res> {
  _$LoadRefImageErrorDecryptCopyWithImpl(this._self, this._then);

  final LoadRefImageErrorDecrypt _self;
  final $Res Function(LoadRefImageErrorDecrypt) _then;

/// Create a copy of LoadRefImageError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LoadRefImageErrorDecrypt(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DecryptError,
  ));
}

/// Create a copy of LoadRefImageError
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DecryptErrorCopyWith<$Res> get error {
  
  return $DecryptErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
