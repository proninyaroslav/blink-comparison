// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_images_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefImagesState {}

/// @nodoc
abstract class $RefImagesStateCopyWith<$Res> {
  factory $RefImagesStateCopyWith(
          RefImagesState value, $Res Function(RefImagesState) then) =
      _$RefImagesStateCopyWithImpl<$Res, RefImagesState>;
}

/// @nodoc
class _$RefImagesStateCopyWithImpl<$Res, $Val extends RefImagesState>
    implements $RefImagesStateCopyWith<$Res> {
  _$RefImagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RefImagesStateInitialImplCopyWith<$Res> {
  factory _$$RefImagesStateInitialImplCopyWith(
          _$RefImagesStateInitialImpl value,
          $Res Function(_$RefImagesStateInitialImpl) then) =
      __$$RefImagesStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefImagesStateInitialImplCopyWithImpl<$Res>
    extends _$RefImagesStateCopyWithImpl<$Res, _$RefImagesStateInitialImpl>
    implements _$$RefImagesStateInitialImplCopyWith<$Res> {
  __$$RefImagesStateInitialImplCopyWithImpl(_$RefImagesStateInitialImpl _value,
      $Res Function(_$RefImagesStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefImagesStateInitialImpl
    with DiagnosticableTreeMixin
    implements RefImagesStateInitial {
  const _$RefImagesStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImagesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RefImagesState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImagesStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class RefImagesStateInitial implements RefImagesState {
  const factory RefImagesStateInitial() = _$RefImagesStateInitialImpl;
}

/// @nodoc
abstract class _$$RefImagesStateLoadedImplCopyWith<$Res> {
  factory _$$RefImagesStateLoadedImplCopyWith(_$RefImagesStateLoadedImpl value,
          $Res Function(_$RefImagesStateLoadedImpl) then) =
      __$$RefImagesStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RefImageEntry> entries});
}

/// @nodoc
class __$$RefImagesStateLoadedImplCopyWithImpl<$Res>
    extends _$RefImagesStateCopyWithImpl<$Res, _$RefImagesStateLoadedImpl>
    implements _$$RefImagesStateLoadedImplCopyWith<$Res> {
  __$$RefImagesStateLoadedImplCopyWithImpl(_$RefImagesStateLoadedImpl _value,
      $Res Function(_$RefImagesStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
  }) {
    return _then(_$RefImagesStateLoadedImpl(
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<RefImageEntry>,
    ));
  }
}

/// @nodoc

class _$RefImagesStateLoadedImpl
    with DiagnosticableTreeMixin
    implements RefImagesStateLoaded {
  const _$RefImagesStateLoadedImpl({required final List<RefImageEntry> entries})
      : _entries = entries;

  final List<RefImageEntry> _entries;
  @override
  List<RefImageEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImagesState.loaded(entries: $entries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImagesState.loaded'))
      ..add(DiagnosticsProperty('entries', entries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImagesStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entries));

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImagesStateLoadedImplCopyWith<_$RefImagesStateLoadedImpl>
      get copyWith =>
          __$$RefImagesStateLoadedImplCopyWithImpl<_$RefImagesStateLoadedImpl>(
              this, _$identity);
}

abstract class RefImagesStateLoaded implements RefImagesState {
  const factory RefImagesStateLoaded(
          {required final List<RefImageEntry> entries}) =
      _$RefImagesStateLoadedImpl;

  List<RefImageEntry> get entries;

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImagesStateLoadedImplCopyWith<_$RefImagesStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefImagesStateLoadingFailedImplCopyWith<$Res> {
  factory _$$RefImagesStateLoadingFailedImplCopyWith(
          _$RefImagesStateLoadingFailedImpl value,
          $Res Function(_$RefImagesStateLoadingFailedImpl) then) =
      __$$RefImagesStateLoadingFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StorageError? error});

  $StorageErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$RefImagesStateLoadingFailedImplCopyWithImpl<$Res>
    extends _$RefImagesStateCopyWithImpl<$Res,
        _$RefImagesStateLoadingFailedImpl>
    implements _$$RefImagesStateLoadingFailedImplCopyWith<$Res> {
  __$$RefImagesStateLoadingFailedImplCopyWithImpl(
      _$RefImagesStateLoadingFailedImpl _value,
      $Res Function(_$RefImagesStateLoadingFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$RefImagesStateLoadingFailedImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as StorageError?,
    ));
  }

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $StorageErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$RefImagesStateLoadingFailedImpl
    with DiagnosticableTreeMixin
    implements RefImagesStateLoadingFailed {
  const _$RefImagesStateLoadingFailedImpl({this.error});

  @override
  final StorageError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImagesState.loadingFailed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImagesState.loadingFailed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImagesStateLoadingFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImagesStateLoadingFailedImplCopyWith<_$RefImagesStateLoadingFailedImpl>
      get copyWith => __$$RefImagesStateLoadingFailedImplCopyWithImpl<
          _$RefImagesStateLoadingFailedImpl>(this, _$identity);
}

abstract class RefImagesStateLoadingFailed implements RefImagesState {
  const factory RefImagesStateLoadingFailed({final StorageError? error}) =
      _$RefImagesStateLoadingFailedImpl;

  StorageError? get error;

  /// Create a copy of RefImagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImagesStateLoadingFailedImplCopyWith<_$RefImagesStateLoadingFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
