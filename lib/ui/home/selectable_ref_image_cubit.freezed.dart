// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selectable_ref_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectableRefImageItemTearOff {
  const _$SelectableRefImageItemTearOff();

  _SelectableRefImageItem call({required RefImageInfo info}) {
    return _SelectableRefImageItem(
      info: info,
    );
  }
}

/// @nodoc
const $SelectableRefImageItem = _$SelectableRefImageItemTearOff();

/// @nodoc
mixin _$SelectableRefImageItem {
  RefImageInfo get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectableRefImageItemCopyWith<SelectableRefImageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableRefImageItemCopyWith<$Res> {
  factory $SelectableRefImageItemCopyWith(SelectableRefImageItem value,
          $Res Function(SelectableRefImageItem) then) =
      _$SelectableRefImageItemCopyWithImpl<$Res>;
  $Res call({RefImageInfo info});

  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$SelectableRefImageItemCopyWithImpl<$Res>
    implements $SelectableRefImageItemCopyWith<$Res> {
  _$SelectableRefImageItemCopyWithImpl(this._value, this._then);

  final SelectableRefImageItem _value;
  // ignore: unused_field
  final $Res Function(SelectableRefImageItem) _then;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
    ));
  }

  @override
  $RefImageInfoCopyWith<$Res> get info {
    return $RefImageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$SelectableRefImageItemCopyWith<$Res>
    implements $SelectableRefImageItemCopyWith<$Res> {
  factory _$SelectableRefImageItemCopyWith(_SelectableRefImageItem value,
          $Res Function(_SelectableRefImageItem) then) =
      __$SelectableRefImageItemCopyWithImpl<$Res>;
  @override
  $Res call({RefImageInfo info});

  @override
  $RefImageInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$SelectableRefImageItemCopyWithImpl<$Res>
    extends _$SelectableRefImageItemCopyWithImpl<$Res>
    implements _$SelectableRefImageItemCopyWith<$Res> {
  __$SelectableRefImageItemCopyWithImpl(_SelectableRefImageItem _value,
      $Res Function(_SelectableRefImageItem) _then)
      : super(_value, (v) => _then(v as _SelectableRefImageItem));

  @override
  _SelectableRefImageItem get _value => super._value as _SelectableRefImageItem;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_SelectableRefImageItem(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
    ));
  }
}

/// @nodoc

class _$_SelectableRefImageItem implements _SelectableRefImageItem {
  const _$_SelectableRefImageItem({required this.info});

  @override
  final RefImageInfo info;

  @override
  String toString() {
    return 'SelectableRefImageItem(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectableRefImageItem &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  _$SelectableRefImageItemCopyWith<_SelectableRefImageItem> get copyWith =>
      __$SelectableRefImageItemCopyWithImpl<_SelectableRefImageItem>(
          this, _$identity);
}

abstract class _SelectableRefImageItem implements SelectableRefImageItem {
  const factory _SelectableRefImageItem({required RefImageInfo info}) =
      _$_SelectableRefImageItem;

  @override
  RefImageInfo get info;
  @override
  @JsonKey(ignore: true)
  _$SelectableRefImageItemCopyWith<_SelectableRefImageItem> get copyWith =>
      throw _privateConstructorUsedError;
}
