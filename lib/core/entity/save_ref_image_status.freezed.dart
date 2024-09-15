// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_ref_image_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
mixin _$SaveRefImageStatus {
  String get imageId => throw _privateConstructorUsedError;

  /// Serializes this SaveRefImageStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveRefImageStatusCopyWith<SaveRefImageStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageStatusCopyWith<$Res> {
  factory $SaveRefImageStatusCopyWith(
          SaveRefImageStatus value, $Res Function(SaveRefImageStatus) then) =
      _$SaveRefImageStatusCopyWithImpl<$Res, SaveRefImageStatus>;
  @useResult
  $Res call({String imageId});
}

/// @nodoc
class _$SaveRefImageStatusCopyWithImpl<$Res, $Val extends SaveRefImageStatus>
    implements $SaveRefImageStatusCopyWith<$Res> {
  _$SaveRefImageStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
  }) {
    return _then(_value.copyWith(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveRefImageStatusProgressImplCopyWith<$Res>
    implements $SaveRefImageStatusCopyWith<$Res> {
  factory _$$SaveRefImageStatusProgressImplCopyWith(
          _$SaveRefImageStatusProgressImpl value,
          $Res Function(_$SaveRefImageStatusProgressImpl) then) =
      __$$SaveRefImageStatusProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageId});
}

/// @nodoc
class __$$SaveRefImageStatusProgressImplCopyWithImpl<$Res>
    extends _$SaveRefImageStatusCopyWithImpl<$Res,
        _$SaveRefImageStatusProgressImpl>
    implements _$$SaveRefImageStatusProgressImplCopyWith<$Res> {
  __$$SaveRefImageStatusProgressImplCopyWithImpl(
      _$SaveRefImageStatusProgressImpl _value,
      $Res Function(_$SaveRefImageStatusProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
  }) {
    return _then(_$SaveRefImageStatusProgressImpl(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusProgressImpl
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusProgress {
  const _$SaveRefImageStatusProgressImpl(
      {required this.imageId, final String? $type})
      : $type = $type ?? 'inProgress';

  factory _$SaveRefImageStatusProgressImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveRefImageStatusProgressImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageStatusProgressImpl &&
            (identical(other.imageId, imageId) || other.imageId == imageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageId);

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRefImageStatusProgressImplCopyWith<_$SaveRefImageStatusProgressImpl>
      get copyWith => __$$SaveRefImageStatusProgressImplCopyWithImpl<
          _$SaveRefImageStatusProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusProgressImplToJson(
      this,
    );
  }
}

abstract class SaveRefImageStatusProgress implements SaveRefImageStatus {
  const factory SaveRefImageStatusProgress({required final String imageId}) =
      _$SaveRefImageStatusProgressImpl;

  factory SaveRefImageStatusProgress.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageStatusProgressImpl.fromJson;

  @override
  String get imageId;

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRefImageStatusProgressImplCopyWith<_$SaveRefImageStatusProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveRefImageStatusCompletedImplCopyWith<$Res>
    implements $SaveRefImageStatusCopyWith<$Res> {
  factory _$$SaveRefImageStatusCompletedImplCopyWith(
          _$SaveRefImageStatusCompletedImpl value,
          $Res Function(_$SaveRefImageStatusCompletedImpl) then) =
      __$$SaveRefImageStatusCompletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageId, SaveRefImageStatusError? error});

  $SaveRefImageStatusErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$SaveRefImageStatusCompletedImplCopyWithImpl<$Res>
    extends _$SaveRefImageStatusCopyWithImpl<$Res,
        _$SaveRefImageStatusCompletedImpl>
    implements _$$SaveRefImageStatusCompletedImplCopyWith<$Res> {
  __$$SaveRefImageStatusCompletedImplCopyWithImpl(
      _$SaveRefImageStatusCompletedImpl _value,
      $Res Function(_$SaveRefImageStatusCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? error = freezed,
  }) {
    return _then(_$SaveRefImageStatusCompletedImpl(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveRefImageStatusError?,
    ));
  }

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
class _$SaveRefImageStatusCompletedImpl
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusCompleted {
  const _$SaveRefImageStatusCompletedImpl(
      {required this.imageId, this.error, final String? $type})
      : $type = $type ?? 'completed';

  factory _$SaveRefImageStatusCompletedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveRefImageStatusCompletedImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageStatusCompletedImpl &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageId, error);

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRefImageStatusCompletedImplCopyWith<_$SaveRefImageStatusCompletedImpl>
      get copyWith => __$$SaveRefImageStatusCompletedImplCopyWithImpl<
          _$SaveRefImageStatusCompletedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusCompletedImplToJson(
      this,
    );
  }
}

abstract class SaveRefImageStatusCompleted implements SaveRefImageStatus {
  const factory SaveRefImageStatusCompleted(
          {required final String imageId,
          final SaveRefImageStatusError? error}) =
      _$SaveRefImageStatusCompletedImpl;

  factory SaveRefImageStatusCompleted.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageStatusCompletedImpl.fromJson;

  @override
  String get imageId;
  SaveRefImageStatusError? get error;

  /// Create a copy of SaveRefImageStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRefImageStatusCompletedImplCopyWith<_$SaveRefImageStatusCompletedImpl>
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
mixin _$SaveRefImageStatusError {
  Object get error => throw _privateConstructorUsedError;

  /// Serializes this SaveRefImageStatusError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveRefImageStatusErrorCopyWith<$Res> {
  factory $SaveRefImageStatusErrorCopyWith(SaveRefImageStatusError value,
          $Res Function(SaveRefImageStatusError) then) =
      _$SaveRefImageStatusErrorCopyWithImpl<$Res, SaveRefImageStatusError>;
}

/// @nodoc
class _$SaveRefImageStatusErrorCopyWithImpl<$Res,
        $Val extends SaveRefImageStatusError>
    implements $SaveRefImageStatusErrorCopyWith<$Res> {
  _$SaveRefImageStatusErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveRefImageStatusErrorSaveImageImplCopyWith<$Res> {
  factory _$$SaveRefImageStatusErrorSaveImageImplCopyWith(
          _$SaveRefImageStatusErrorSaveImageImpl value,
          $Res Function(_$SaveRefImageStatusErrorSaveImageImpl) then) =
      __$$SaveRefImageStatusErrorSaveImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SaveRefImageError error});

  $SaveRefImageErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SaveRefImageStatusErrorSaveImageImplCopyWithImpl<$Res>
    extends _$SaveRefImageStatusErrorCopyWithImpl<$Res,
        _$SaveRefImageStatusErrorSaveImageImpl>
    implements _$$SaveRefImageStatusErrorSaveImageImplCopyWith<$Res> {
  __$$SaveRefImageStatusErrorSaveImageImplCopyWithImpl(
      _$SaveRefImageStatusErrorSaveImageImpl _value,
      $Res Function(_$SaveRefImageStatusErrorSaveImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SaveRefImageStatusErrorSaveImageImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveRefImageError,
    ));
  }

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaveRefImageErrorCopyWith<$Res> get error {
    return $SaveRefImageErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusErrorSaveImageImpl
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusErrorSaveImage {
  const _$SaveRefImageStatusErrorSaveImageImpl(this.error,
      {final String? $type})
      : $type = $type ?? 'saveImage';

  factory _$SaveRefImageStatusErrorSaveImageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveRefImageStatusErrorSaveImageImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageStatusErrorSaveImageImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRefImageStatusErrorSaveImageImplCopyWith<
          _$SaveRefImageStatusErrorSaveImageImpl>
      get copyWith => __$$SaveRefImageStatusErrorSaveImageImplCopyWithImpl<
          _$SaveRefImageStatusErrorSaveImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusErrorSaveImageImplToJson(
      this,
    );
  }
}

abstract class SaveRefImageStatusErrorSaveImage
    implements SaveRefImageStatusError {
  const factory SaveRefImageStatusErrorSaveImage(
      final SaveRefImageError error) = _$SaveRefImageStatusErrorSaveImageImpl;

  factory SaveRefImageStatusErrorSaveImage.fromJson(Map<String, dynamic> json) =
      _$SaveRefImageStatusErrorSaveImageImpl.fromJson;

  @override
  SaveRefImageError get error;

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRefImageStatusErrorSaveImageImplCopyWith<
          _$SaveRefImageStatusErrorSaveImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWith<$Res> {
  factory _$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWith(
          _$SaveRefImageStatusErrorGenerateThumbnailImpl value,
          $Res Function(_$SaveRefImageStatusErrorGenerateThumbnailImpl) then) =
      __$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenerateThumbnailError error});

  $GenerateThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWithImpl<$Res>
    extends _$SaveRefImageStatusErrorCopyWithImpl<$Res,
        _$SaveRefImageStatusErrorGenerateThumbnailImpl>
    implements _$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWith<$Res> {
  __$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWithImpl(
      _$SaveRefImageStatusErrorGenerateThumbnailImpl _value,
      $Res Function(_$SaveRefImageStatusErrorGenerateThumbnailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SaveRefImageStatusErrorGenerateThumbnailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as GenerateThumbnailError,
    ));
  }

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenerateThumbnailErrorCopyWith<$Res> get error {
    return $GenerateThumbnailErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusErrorGenerateThumbnailImpl
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusErrorGenerateThumbnail {
  const _$SaveRefImageStatusErrorGenerateThumbnailImpl(this.error,
      {final String? $type})
      : $type = $type ?? 'generateThumbnail';

  factory _$SaveRefImageStatusErrorGenerateThumbnailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveRefImageStatusErrorGenerateThumbnailImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageStatusErrorGenerateThumbnailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWith<
          _$SaveRefImageStatusErrorGenerateThumbnailImpl>
      get copyWith =>
          __$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWithImpl<
              _$SaveRefImageStatusErrorGenerateThumbnailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusErrorGenerateThumbnailImplToJson(
      this,
    );
  }
}

abstract class SaveRefImageStatusErrorGenerateThumbnail
    implements SaveRefImageStatusError {
  const factory SaveRefImageStatusErrorGenerateThumbnail(
          final GenerateThumbnailError error) =
      _$SaveRefImageStatusErrorGenerateThumbnailImpl;

  factory SaveRefImageStatusErrorGenerateThumbnail.fromJson(
          Map<String, dynamic> json) =
      _$SaveRefImageStatusErrorGenerateThumbnailImpl.fromJson;

  @override
  GenerateThumbnailError get error;

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRefImageStatusErrorGenerateThumbnailImplCopyWith<
          _$SaveRefImageStatusErrorGenerateThumbnailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveRefImageStatusErrorSaveThumbnailImplCopyWith<$Res> {
  factory _$$SaveRefImageStatusErrorSaveThumbnailImplCopyWith(
          _$SaveRefImageStatusErrorSaveThumbnailImpl value,
          $Res Function(_$SaveRefImageStatusErrorSaveThumbnailImpl) then) =
      __$$SaveRefImageStatusErrorSaveThumbnailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SaveThumbnailError error});

  $SaveThumbnailErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SaveRefImageStatusErrorSaveThumbnailImplCopyWithImpl<$Res>
    extends _$SaveRefImageStatusErrorCopyWithImpl<$Res,
        _$SaveRefImageStatusErrorSaveThumbnailImpl>
    implements _$$SaveRefImageStatusErrorSaveThumbnailImplCopyWith<$Res> {
  __$$SaveRefImageStatusErrorSaveThumbnailImplCopyWithImpl(
      _$SaveRefImageStatusErrorSaveThumbnailImpl _value,
      $Res Function(_$SaveRefImageStatusErrorSaveThumbnailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SaveRefImageStatusErrorSaveThumbnailImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as SaveThumbnailError,
    ));
  }

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SaveThumbnailErrorCopyWith<$Res> get error {
    return $SaveThumbnailErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveRefImageStatusErrorSaveThumbnailImpl
    with DiagnosticableTreeMixin
    implements SaveRefImageStatusErrorSaveThumbnail {
  const _$SaveRefImageStatusErrorSaveThumbnailImpl(this.error,
      {final String? $type})
      : $type = $type ?? 'saveThumbnail';

  factory _$SaveRefImageStatusErrorSaveThumbnailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveRefImageStatusErrorSaveThumbnailImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveRefImageStatusErrorSaveThumbnailImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveRefImageStatusErrorSaveThumbnailImplCopyWith<
          _$SaveRefImageStatusErrorSaveThumbnailImpl>
      get copyWith => __$$SaveRefImageStatusErrorSaveThumbnailImplCopyWithImpl<
          _$SaveRefImageStatusErrorSaveThumbnailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveRefImageStatusErrorSaveThumbnailImplToJson(
      this,
    );
  }
}

abstract class SaveRefImageStatusErrorSaveThumbnail
    implements SaveRefImageStatusError {
  const factory SaveRefImageStatusErrorSaveThumbnail(
          final SaveThumbnailError error) =
      _$SaveRefImageStatusErrorSaveThumbnailImpl;

  factory SaveRefImageStatusErrorSaveThumbnail.fromJson(
          Map<String, dynamic> json) =
      _$SaveRefImageStatusErrorSaveThumbnailImpl.fromJson;

  @override
  SaveThumbnailError get error;

  /// Create a copy of SaveRefImageStatusError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveRefImageStatusErrorSaveThumbnailImplCopyWith<
          _$SaveRefImageStatusErrorSaveThumbnailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
