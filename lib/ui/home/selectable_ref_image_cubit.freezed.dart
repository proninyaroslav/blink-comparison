// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_ref_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectableRefImageItem {
  RefImageInfo get info => throw _privateConstructorUsedError;

  /// Create a copy of SelectableRefImageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectableRefImageItemCopyWith<SelectableRefImageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableRefImageItemCopyWith<$Res> {
  factory $SelectableRefImageItemCopyWith(SelectableRefImageItem value,
          $Res Function(SelectableRefImageItem) then) =
      _$SelectableRefImageItemCopyWithImpl<$Res, SelectableRefImageItem>;
  @useResult
  $Res call({RefImageInfo info});

  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$SelectableRefImageItemCopyWithImpl<$Res,
        $Val extends SelectableRefImageItem>
    implements $SelectableRefImageItemCopyWith<$Res> {
  _$SelectableRefImageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectableRefImageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
    ) as $Val);
  }

  /// Create a copy of SelectableRefImageItem
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
abstract class _$$SelectableRefImageItemImplCopyWith<$Res>
    implements $SelectableRefImageItemCopyWith<$Res> {
  factory _$$SelectableRefImageItemImplCopyWith(
          _$SelectableRefImageItemImpl value,
          $Res Function(_$SelectableRefImageItemImpl) then) =
      __$$SelectableRefImageItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RefImageInfo info});

  @override
  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$SelectableRefImageItemImplCopyWithImpl<$Res>
    extends _$SelectableRefImageItemCopyWithImpl<$Res,
        _$SelectableRefImageItemImpl>
    implements _$$SelectableRefImageItemImplCopyWith<$Res> {
  __$$SelectableRefImageItemImplCopyWithImpl(
      _$SelectableRefImageItemImpl _value,
      $Res Function(_$SelectableRefImageItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectableRefImageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$SelectableRefImageItemImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
    ));
  }
}

/// @nodoc

class _$SelectableRefImageItemImpl implements _SelectableRefImageItem {
  const _$SelectableRefImageItemImpl({required this.info});

  @override
  final RefImageInfo info;

  @override
  String toString() {
    return 'SelectableRefImageItem(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableRefImageItemImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of SelectableRefImageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectableRefImageItemImplCopyWith<_$SelectableRefImageItemImpl>
      get copyWith => __$$SelectableRefImageItemImplCopyWithImpl<
          _$SelectableRefImageItemImpl>(this, _$identity);
}

abstract class _SelectableRefImageItem implements SelectableRefImageItem {
  const factory _SelectableRefImageItem({required final RefImageInfo info}) =
      _$SelectableRefImageItemImpl;

  @override
  RefImageInfo get info;

  /// Create a copy of SelectableRefImageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectableRefImageItemImplCopyWith<_$SelectableRefImageItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
