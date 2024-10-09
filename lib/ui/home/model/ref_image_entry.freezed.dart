// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ref_image_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefImageEntry {
  RefImageInfo get info => throw _privateConstructorUsedError;
  Thumbnail get thumbnail => throw _privateConstructorUsedError;

  /// Create a copy of RefImageEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefImageEntryCopyWith<RefImageEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefImageEntryCopyWith<$Res> {
  factory $RefImageEntryCopyWith(
          RefImageEntry value, $Res Function(RefImageEntry) then) =
      _$RefImageEntryCopyWithImpl<$Res, RefImageEntry>;
  @useResult
  $Res call({RefImageInfo info, Thumbnail thumbnail});

  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$RefImageEntryCopyWithImpl<$Res, $Val extends RefImageEntry>
    implements $RefImageEntryCopyWith<$Res> {
  _$RefImageEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefImageEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ) as $Val);
  }

  /// Create a copy of RefImageEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefImageInfoCopyWith<$Res> get info {
    return $RefImageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefImageEntryImplCopyWith<$Res>
    implements $RefImageEntryCopyWith<$Res> {
  factory _$$RefImageEntryImplCopyWith(
          _$RefImageEntryImpl value, $Res Function(_$RefImageEntryImpl) then) =
      __$$RefImageEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RefImageInfo info, Thumbnail thumbnail});

  @override
  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$RefImageEntryImplCopyWithImpl<$Res>
    extends _$RefImageEntryCopyWithImpl<$Res, _$RefImageEntryImpl>
    implements _$$RefImageEntryImplCopyWith<$Res> {
  __$$RefImageEntryImplCopyWithImpl(
      _$RefImageEntryImpl _value, $Res Function(_$RefImageEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefImageEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? thumbnail = null,
  }) {
    return _then(_$RefImageEntryImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ));
  }
}

/// @nodoc

class _$RefImageEntryImpl
    with DiagnosticableTreeMixin
    implements _RefImageEntry {
  const _$RefImageEntryImpl({required this.info, required this.thumbnail});

  @override
  final RefImageInfo info;
  @override
  final Thumbnail thumbnail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RefImageEntry(info: $info, thumbnail: $thumbnail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RefImageEntry'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('thumbnail', thumbnail));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefImageEntryImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info, thumbnail);

  /// Create a copy of RefImageEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefImageEntryImplCopyWith<_$RefImageEntryImpl> get copyWith =>
      __$$RefImageEntryImplCopyWithImpl<_$RefImageEntryImpl>(this, _$identity);
}

abstract class _RefImageEntry implements RefImageEntry {
  const factory _RefImageEntry(
      {required final RefImageInfo info,
      required final Thumbnail thumbnail}) = _$RefImageEntryImpl;

  @override
  RefImageInfo get info;
  @override
  Thumbnail get thumbnail;

  /// Create a copy of RefImageEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefImageEntryImplCopyWith<_$RefImageEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
