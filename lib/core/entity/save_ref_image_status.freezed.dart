// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_ref_image_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveRefImageStatus _$SaveRefImageStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'inProgress':
      return SaveRefImageStatusProgress.fromJson(json);
    case 'completed':
      return SaveRefImageStatusCompleted.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SaveRefImageStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$SaveRefImageStatusTearOff {
  const _$SaveRefImageStatusTearOff();

  SaveRefImageStatusProgress inProgress({required String imageId}) {
    return SaveRefImageStatusProgress(
      imageId: imageId,
    );
  }

  SaveRefImageStatusCompleted completed(
      {required String imageId, SaveRefImageStatusError? error}) {
    return SaveRefImageStatusCompleted(
      imageId: imageId,
      error: error,
    );
  }

  SaveRefImageStatus fromJson(Map<String, Object?> json) {
    return SaveRefImageStatus.fromJson(json);
  }
}

/// @nodoc
const $SaveRefImageStatus = _$SaveRefImageStatusTearOff();

/// @nodoc
mixin _$SaveRefImageStatus {
  String get imageId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageId) inProgress,
    required TResult Function(String imageId, SaveRefImageStatusError? error)
        completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageId)? inProgress,
    TResult Function(String imageId, SaveRefImageStatusError? error)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageId)? inProgress,
    TResult Function(String imageId, SaveRefImageStatusError? error)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageStatusProgress value) inProgress,
    required TResult Function(SaveRefImageStatusCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageStatusProgress value)? inProgress,
    TResult Function(SaveRefImageStatusCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageStatusProgress value)? inProgress,
    TResult Function(SaveRefImageStatusCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveRefImageStatusCopyWith<SaveRefImageStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageStatusCopyWith<$Res> {
  factory $SaveRefImageStatusCopyWith(
          SaveRefImageStatus value, $Res Function(SaveRefImageStatus) then) =
      _$SaveRefImageStatusCopyWithImpl<$Res>;
  $Res call({String imageId});
}

/// @nodoc
class _$SaveRefImageStatusCopyWithImpl<$Res>
    implements $SaveRefImageStatusCopyWith<$Res> {
  _$SaveRefImageStatusCopyWithImpl(this._value, this._then);

  final SaveRefImageStatus _value;
  // ignore: unused_field
  final $Res Function(SaveRefImageStatus) _then;

  @override
  $Res call({
    Object? imageId = freezed,
  }) {
    return _then(_value.copyWith(
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SaveRefImageStatusProgressCopyWith<$Res>
    implements $SaveRefImageStatusCopyWith<$Res> {
  factory $SaveRefImageStatusProgressCopyWith(SaveRefImageStatusProgress value,
          $Res Function(SaveRefImageStatusProgress) then) =
      _$SaveRefImageStatusProgressCopyWithImpl<$Res>;
  @override
  $Res call({String imageId});
}

/// @nodoc
class _$SaveRefImageStatusProgressCopyWithImpl<$Res>
    extends _$SaveRefImageStatusCopyWithImpl<$Res>
    implements $SaveRefImageStatusProgressCopyWith<$Res> {
  _$SaveRefImageStatusProgressCopyWithImpl(SaveRefImageStatusProgress _value,
      $Res Function(SaveRefImageStatusProgress) _then)
      : super(_value, (v) => _then(v as SaveRefImageStatusProgress));

  @override
  SaveRefImageStatusProgress get _value =>
      super._value as SaveRefImageStatusProgress;

  @override
  $Res call({
    Object? imageId = freezed,
  }) {
    return _then(SaveRefImageStatusProgress(
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusProgress
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusProgress {
  const _$SaveRefImageStatusProgress({required this.imageId, String? $type})
      : $type = $type ?? 'inProgress';

  factory _$SaveRefImageStatusProgress.fromJson(Map<String, dynamic> json) =>
      _$$SaveRefImageStatusProgressFromJson(json);

  @override
  final String imageId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaveRefImageStatus.inProgress(imageId: $imageId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaveRefImageStatus.inProgress'))
      ..add(DiagnosticsProperty('imageId', imageId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageStatusProgress &&
            const DeepCollectionEquality().equals(other.imageId, imageId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageId));

  @JsonKey(ignore: true)
  @override
  $SaveRefImageStatusProgressCopyWith<SaveRefImageStatusProgress>
      get copyWith =>
          _$SaveRefImageStatusProgressCopyWithImpl<SaveRefImageStatusProgress>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageId) inProgress,
    required TResult Function(String imageId, SaveRefImageStatusError? error)
        completed,
  }) {
    return inProgress(imageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageId)? inProgress,
    TResult Function(String imageId, SaveRefImageStatusError? error)? completed,
  }) {
    return inProgress?.call(imageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageId)? inProgress,
    TResult Function(String imageId, SaveRefImageStatusError? error)? completed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(imageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageStatusProgress value) inProgress,
    required TResult Function(SaveRefImageStatusCompleted value) completed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageStatusProgress value)? inProgress,
    TResult Function(SaveRefImageStatusCompleted value)? completed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageStatusProgress value)? inProgress,
    TResult Function(SaveRefImageStatusCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusProgressToJson(this);
  }
}

abstract class SaveRefImageStatusProgress implements SaveRefImageStatus {
  const factory SaveRefImageStatusProgress({required String imageId}) =
      _$SaveRefImageStatusProgress;

  factory SaveRefImageStatusProgress.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageStatusProgress.fromJson;

  @override
  String get imageId;
  @override
  @JsonKey(ignore: true)
  $SaveRefImageStatusProgressCopyWith<SaveRefImageStatusProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageStatusCompletedCopyWith<$Res>
    implements $SaveRefImageStatusCopyWith<$Res> {
  factory $SaveRefImageStatusCompletedCopyWith(
          SaveRefImageStatusCompleted value,
          $Res Function(SaveRefImageStatusCompleted) then) =
      _$SaveRefImageStatusCompletedCopyWithImpl<$Res>;
  @override
  $Res call({String imageId, SaveRefImageStatusError? error});

  $SaveRefImageStatusErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$SaveRefImageStatusCompletedCopyWithImpl<$Res>
    extends _$SaveRefImageStatusCopyWithImpl<$Res>
    implements $SaveRefImageStatusCompletedCopyWith<$Res> {
  _$SaveRefImageStatusCompletedCopyWithImpl(SaveRefImageStatusCompleted _value,
      $Res Function(SaveRefImageStatusCompleted) _then)
      : super(_value, (v) => _then(v as SaveRefImageStatusCompleted));

  @override
  SaveRefImageStatusCompleted get _value =>
      super._value as SaveRefImageStatusCompleted;

  @override
  $Res call({
    Object? imageId = freezed,
    Object? error = freezed,
  }) {
    return _then(SaveRefImageStatusCompleted(
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveRefImageStatusError?,
    ));
  }

  @override
  $SaveRefImageStatusErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $SaveRefImageStatusErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusCompleted
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusCompleted {
  const _$SaveRefImageStatusCompleted(
      {required this.imageId, this.error, String? $type})
      : $type = $type ?? 'completed';

  factory _$SaveRefImageStatusCompleted.fromJson(Map<String, dynamic> json) =>
      _$$SaveRefImageStatusCompletedFromJson(json);

  @override
  final String imageId;
  @override
  final SaveRefImageStatusError? error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaveRefImageStatus.completed(imageId: $imageId, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaveRefImageStatus.completed'))
      ..add(DiagnosticsProperty('imageId', imageId))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageStatusCompleted &&
            const DeepCollectionEquality().equals(other.imageId, imageId) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageId),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveRefImageStatusCompletedCopyWith<SaveRefImageStatusCompleted>
      get copyWith => _$SaveRefImageStatusCompletedCopyWithImpl<
          SaveRefImageStatusCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageId) inProgress,
    required TResult Function(String imageId, SaveRefImageStatusError? error)
        completed,
  }) {
    return completed(imageId, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageId)? inProgress,
    TResult Function(String imageId, SaveRefImageStatusError? error)? completed,
  }) {
    return completed?.call(imageId, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageId)? inProgress,
    TResult Function(String imageId, SaveRefImageStatusError? error)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(imageId, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageStatusProgress value) inProgress,
    required TResult Function(SaveRefImageStatusCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageStatusProgress value)? inProgress,
    TResult Function(SaveRefImageStatusCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageStatusProgress value)? inProgress,
    TResult Function(SaveRefImageStatusCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusCompletedToJson(this);
  }
}

abstract class SaveRefImageStatusCompleted implements SaveRefImageStatus {
  const factory SaveRefImageStatusCompleted(
      {required String imageId,
      SaveRefImageStatusError? error}) = _$SaveRefImageStatusCompleted;

  factory SaveRefImageStatusCompleted.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageStatusCompleted.fromJson;

  @override
  String get imageId;
  SaveRefImageStatusError? get error;
  @override
  @JsonKey(ignore: true)
  $SaveRefImageStatusCompletedCopyWith<SaveRefImageStatusCompleted>
      get copyWith => throw _privateConstructorUsedError;
}

SaveRefImageStatusError _$SaveRefImageStatusErrorFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'saveImage':
      return SaveRefImageStatusErrorSaveImage.fromJson(json);
    case 'generateThumbnail':
      return SaveRefImageStatusErrorGenerateThumbnail.fromJson(json);
    case 'saveThumbnail':
      return SaveRefImageStatusErrorSaveThumbnail.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'SaveRefImageStatusError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$SaveRefImageStatusErrorTearOff {
  const _$SaveRefImageStatusErrorTearOff();

  SaveRefImageStatusErrorSaveImage saveImage(SaveRefImageError error) {
    return SaveRefImageStatusErrorSaveImage(
      error,
    );
  }

  SaveRefImageStatusErrorGenerateThumbnail generateThumbnail(
      GenerateThumbnailError error) {
    return SaveRefImageStatusErrorGenerateThumbnail(
      error,
    );
  }

  SaveRefImageStatusErrorSaveThumbnail saveThumbnail(SaveThumbnailError error) {
    return SaveRefImageStatusErrorSaveThumbnail(
      error,
    );
  }

  SaveRefImageStatusError fromJson(Map<String, Object?> json) {
    return SaveRefImageStatusError.fromJson(json);
  }
}

/// @nodoc
const $SaveRefImageStatusError = _$SaveRefImageStatusErrorTearOff();

/// @nodoc
mixin _$SaveRefImageStatusError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageStatusErrorSaveImage value) saveImage,
    required TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)
        generateThumbnail,
    required TResult Function(SaveRefImageStatusErrorSaveThumbnail value)
        saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageStatusErrorSaveImage value)? saveImage,
    TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)?
        generateThumbnail,
    TResult Function(SaveRefImageStatusErrorSaveThumbnail value)? saveThumbnail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageStatusErrorSaveImage value)? saveImage,
    TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)?
        generateThumbnail,
    TResult Function(SaveRefImageStatusErrorSaveThumbnail value)? saveThumbnail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageStatusErrorCopyWith<$Res> {
  factory $SaveRefImageStatusErrorCopyWith(SaveRefImageStatusError value,
          $Res Function(SaveRefImageStatusError) then) =
      _$SaveRefImageStatusErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveRefImageStatusErrorCopyWithImpl<$Res>
    implements $SaveRefImageStatusErrorCopyWith<$Res> {
  _$SaveRefImageStatusErrorCopyWithImpl(this._value, this._then);

  final SaveRefImageStatusError _value;
  // ignore: unused_field
  final $Res Function(SaveRefImageStatusError) _then;
}

/// @nodoc
abstract class $SaveRefImageStatusErrorSaveImageCopyWith<$Res> {
  factory $SaveRefImageStatusErrorSaveImageCopyWith(
          SaveRefImageStatusErrorSaveImage value,
          $Res Function(SaveRefImageStatusErrorSaveImage) then) =
      _$SaveRefImageStatusErrorSaveImageCopyWithImpl<$Res>;
  $Res call({SaveRefImageError error});

  $SaveRefImageErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveRefImageStatusErrorSaveImageCopyWithImpl<$Res>
    extends _$SaveRefImageStatusErrorCopyWithImpl<$Res>
    implements $SaveRefImageStatusErrorSaveImageCopyWith<$Res> {
  _$SaveRefImageStatusErrorSaveImageCopyWithImpl(
      SaveRefImageStatusErrorSaveImage _value,
      $Res Function(SaveRefImageStatusErrorSaveImage) _then)
      : super(_value, (v) => _then(v as SaveRefImageStatusErrorSaveImage));

  @override
  SaveRefImageStatusErrorSaveImage get _value =>
      super._value as SaveRefImageStatusErrorSaveImage;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SaveRefImageStatusErrorSaveImage(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveRefImageError,
    ));
  }

  @override
  $SaveRefImageErrorCopyWith<$Res> get error {
    return $SaveRefImageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusErrorSaveImage
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusErrorSaveImage {
  const _$SaveRefImageStatusErrorSaveImage(this.error, {String? $type})
      : $type = $type ?? 'saveImage';

  factory _$SaveRefImageStatusErrorSaveImage.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveRefImageStatusErrorSaveImageFromJson(json);

  @override
  final SaveRefImageError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaveRefImageStatusError.saveImage(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaveRefImageStatusError.saveImage'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageStatusErrorSaveImage &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveRefImageStatusErrorSaveImageCopyWith<SaveRefImageStatusErrorSaveImage>
      get copyWith => _$SaveRefImageStatusErrorSaveImageCopyWithImpl<
          SaveRefImageStatusErrorSaveImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) {
    return saveImage(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
  }) {
    return saveImage?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (saveImage != null) {
      return saveImage(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageStatusErrorSaveImage value) saveImage,
    required TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)
        generateThumbnail,
    required TResult Function(SaveRefImageStatusErrorSaveThumbnail value)
        saveThumbnail,
  }) {
    return saveImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageStatusErrorSaveImage value)? saveImage,
    TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)?
        generateThumbnail,
    TResult Function(SaveRefImageStatusErrorSaveThumbnail value)? saveThumbnail,
  }) {
    return saveImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageStatusErrorSaveImage value)? saveImage,
    TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)?
        generateThumbnail,
    TResult Function(SaveRefImageStatusErrorSaveThumbnail value)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (saveImage != null) {
      return saveImage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusErrorSaveImageToJson(this);
  }
}

abstract class SaveRefImageStatusErrorSaveImage
    implements SaveRefImageStatusError {
  const factory SaveRefImageStatusErrorSaveImage(SaveRefImageError error) =
      _$SaveRefImageStatusErrorSaveImage;

  factory SaveRefImageStatusErrorSaveImage.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageStatusErrorSaveImage.fromJson;

  SaveRefImageError get error;
  @JsonKey(ignore: true)
  $SaveRefImageStatusErrorSaveImageCopyWith<SaveRefImageStatusErrorSaveImage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageStatusErrorGenerateThumbnailCopyWith<$Res> {
  factory $SaveRefImageStatusErrorGenerateThumbnailCopyWith(
          SaveRefImageStatusErrorGenerateThumbnail value,
          $Res Function(SaveRefImageStatusErrorGenerateThumbnail) then) =
      _$SaveRefImageStatusErrorGenerateThumbnailCopyWithImpl<$Res>;
  $Res call({GenerateThumbnailError error});

  $GenerateThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveRefImageStatusErrorGenerateThumbnailCopyWithImpl<$Res>
    extends _$SaveRefImageStatusErrorCopyWithImpl<$Res>
    implements $SaveRefImageStatusErrorGenerateThumbnailCopyWith<$Res> {
  _$SaveRefImageStatusErrorGenerateThumbnailCopyWithImpl(
      SaveRefImageStatusErrorGenerateThumbnail _value,
      $Res Function(SaveRefImageStatusErrorGenerateThumbnail) _then)
      : super(_value,
            (v) => _then(v as SaveRefImageStatusErrorGenerateThumbnail));

  @override
  SaveRefImageStatusErrorGenerateThumbnail get _value =>
      super._value as SaveRefImageStatusErrorGenerateThumbnail;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SaveRefImageStatusErrorGenerateThumbnail(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as GenerateThumbnailError,
    ));
  }

  @override
  $GenerateThumbnailErrorCopyWith<$Res> get error {
    return $GenerateThumbnailErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusErrorGenerateThumbnail
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusErrorGenerateThumbnail {
  const _$SaveRefImageStatusErrorGenerateThumbnail(this.error, {String? $type})
      : $type = $type ?? 'generateThumbnail';

  factory _$SaveRefImageStatusErrorGenerateThumbnail.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveRefImageStatusErrorGenerateThumbnailFromJson(json);

  @override
  final GenerateThumbnailError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaveRefImageStatusError.generateThumbnail(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SaveRefImageStatusError.generateThumbnail'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageStatusErrorGenerateThumbnail &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveRefImageStatusErrorGenerateThumbnailCopyWith<
          SaveRefImageStatusErrorGenerateThumbnail>
      get copyWith => _$SaveRefImageStatusErrorGenerateThumbnailCopyWithImpl<
          SaveRefImageStatusErrorGenerateThumbnail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) {
    return generateThumbnail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
  }) {
    return generateThumbnail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (generateThumbnail != null) {
      return generateThumbnail(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageStatusErrorSaveImage value) saveImage,
    required TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)
        generateThumbnail,
    required TResult Function(SaveRefImageStatusErrorSaveThumbnail value)
        saveThumbnail,
  }) {
    return generateThumbnail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageStatusErrorSaveImage value)? saveImage,
    TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)?
        generateThumbnail,
    TResult Function(SaveRefImageStatusErrorSaveThumbnail value)? saveThumbnail,
  }) {
    return generateThumbnail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageStatusErrorSaveImage value)? saveImage,
    TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)?
        generateThumbnail,
    TResult Function(SaveRefImageStatusErrorSaveThumbnail value)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (generateThumbnail != null) {
      return generateThumbnail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusErrorGenerateThumbnailToJson(this);
  }
}

abstract class SaveRefImageStatusErrorGenerateThumbnail
    implements SaveRefImageStatusError {
  const factory SaveRefImageStatusErrorGenerateThumbnail(
          GenerateThumbnailError error) =
      _$SaveRefImageStatusErrorGenerateThumbnail;

  factory SaveRefImageStatusErrorGenerateThumbnail.fromJson(
          Map<String, dynamic> json) =
      _$SaveRefImageStatusErrorGenerateThumbnail.fromJson;

  GenerateThumbnailError get error;
  @JsonKey(ignore: true)
  $SaveRefImageStatusErrorGenerateThumbnailCopyWith<
          SaveRefImageStatusErrorGenerateThumbnail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageStatusErrorSaveThumbnailCopyWith<$Res> {
  factory $SaveRefImageStatusErrorSaveThumbnailCopyWith(
          SaveRefImageStatusErrorSaveThumbnail value,
          $Res Function(SaveRefImageStatusErrorSaveThumbnail) then) =
      _$SaveRefImageStatusErrorSaveThumbnailCopyWithImpl<$Res>;
  $Res call({SaveThumbnailError error});

  $SaveThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$SaveRefImageStatusErrorSaveThumbnailCopyWithImpl<$Res>
    extends _$SaveRefImageStatusErrorCopyWithImpl<$Res>
    implements $SaveRefImageStatusErrorSaveThumbnailCopyWith<$Res> {
  _$SaveRefImageStatusErrorSaveThumbnailCopyWithImpl(
      SaveRefImageStatusErrorSaveThumbnail _value,
      $Res Function(SaveRefImageStatusErrorSaveThumbnail) _then)
      : super(_value, (v) => _then(v as SaveRefImageStatusErrorSaveThumbnail));

  @override
  SaveRefImageStatusErrorSaveThumbnail get _value =>
      super._value as SaveRefImageStatusErrorSaveThumbnail;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SaveRefImageStatusErrorSaveThumbnail(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveThumbnailError,
    ));
  }

  @override
  $SaveThumbnailErrorCopyWith<$Res> get error {
    return $SaveThumbnailErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusErrorSaveThumbnail
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusErrorSaveThumbnail {
  const _$SaveRefImageStatusErrorSaveThumbnail(this.error, {String? $type})
      : $type = $type ?? 'saveThumbnail';

  factory _$SaveRefImageStatusErrorSaveThumbnail.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveRefImageStatusErrorSaveThumbnailFromJson(json);

  @override
  final SaveThumbnailError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaveRefImageStatusError.saveThumbnail(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SaveRefImageStatusError.saveThumbnail'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveRefImageStatusErrorSaveThumbnail &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SaveRefImageStatusErrorSaveThumbnailCopyWith<
          SaveRefImageStatusErrorSaveThumbnail>
      get copyWith => _$SaveRefImageStatusErrorSaveThumbnailCopyWithImpl<
          SaveRefImageStatusErrorSaveThumbnail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SaveRefImageError error) saveImage,
    required TResult Function(GenerateThumbnailError error) generateThumbnail,
    required TResult Function(SaveThumbnailError error) saveThumbnail,
  }) {
    return saveThumbnail(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
  }) {
    return saveThumbnail?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SaveRefImageError error)? saveImage,
    TResult Function(GenerateThumbnailError error)? generateThumbnail,
    TResult Function(SaveThumbnailError error)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (saveThumbnail != null) {
      return saveThumbnail(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveRefImageStatusErrorSaveImage value) saveImage,
    required TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)
        generateThumbnail,
    required TResult Function(SaveRefImageStatusErrorSaveThumbnail value)
        saveThumbnail,
  }) {
    return saveThumbnail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveRefImageStatusErrorSaveImage value)? saveImage,
    TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)?
        generateThumbnail,
    TResult Function(SaveRefImageStatusErrorSaveThumbnail value)? saveThumbnail,
  }) {
    return saveThumbnail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveRefImageStatusErrorSaveImage value)? saveImage,
    TResult Function(SaveRefImageStatusErrorGenerateThumbnail value)?
        generateThumbnail,
    TResult Function(SaveRefImageStatusErrorSaveThumbnail value)? saveThumbnail,
    required TResult orElse(),
  }) {
    if (saveThumbnail != null) {
      return saveThumbnail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusErrorSaveThumbnailToJson(this);
  }
}

abstract class SaveRefImageStatusErrorSaveThumbnail
    implements SaveRefImageStatusError {
  const factory SaveRefImageStatusErrorSaveThumbnail(SaveThumbnailError error) =
      _$SaveRefImageStatusErrorSaveThumbnail;

  factory SaveRefImageStatusErrorSaveThumbnail.fromJson(
          Map<String, dynamic> json) =
      _$SaveRefImageStatusErrorSaveThumbnail.fromJson;

  SaveThumbnailError get error;
  @JsonKey(ignore: true)
  $SaveRefImageStatusErrorSaveThumbnailCopyWith<
          SaveRefImageStatusErrorSaveThumbnail>
      get copyWith => throw _privateConstructorUsedError;
}
