// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationAction _$NotificationActionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'reportCrash':
      return NotificationActionReportCrash.fromJson(json);
    case 'openRefImageList':
      return NotificationActionOpenRefImageList.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NotificationAction',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NotificationAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrashInfo info) reportCrash,
    required TResult Function() openRefImageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrashInfo info)? reportCrash,
    TResult? Function()? openRefImageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrashInfo info)? reportCrash,
    TResult Function()? openRefImageList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationActionReportCrash value) reportCrash,
    required TResult Function(NotificationActionOpenRefImageList value)
        openRefImageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationActionReportCrash value)? reportCrash,
    TResult? Function(NotificationActionOpenRefImageList value)?
        openRefImageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenRefImageList value)?
        openRefImageList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionCopyWith<$Res> {
  factory $NotificationActionCopyWith(
          NotificationAction value, $Res Function(NotificationAction) then) =
      _$NotificationActionCopyWithImpl<$Res, NotificationAction>;
}

/// @nodoc
class _$NotificationActionCopyWithImpl<$Res, $Val extends NotificationAction>
    implements $NotificationActionCopyWith<$Res> {
  _$NotificationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationActionReportCrashImplCopyWith<$Res> {
  factory _$$NotificationActionReportCrashImplCopyWith(
          _$NotificationActionReportCrashImpl value,
          $Res Function(_$NotificationActionReportCrashImpl) then) =
      __$$NotificationActionReportCrashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrashInfo info});

  $CrashInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$NotificationActionReportCrashImplCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res,
        _$NotificationActionReportCrashImpl>
    implements _$$NotificationActionReportCrashImplCopyWith<$Res> {
  __$$NotificationActionReportCrashImplCopyWithImpl(
      _$NotificationActionReportCrashImpl _value,
      $Res Function(_$NotificationActionReportCrashImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$NotificationActionReportCrashImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CrashInfo,
    ));
  }

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CrashInfoCopyWith<$Res> get info {
    return $CrashInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionReportCrashImpl
    implements NotificationActionReportCrash {
  const _$NotificationActionReportCrashImpl(
      {required this.info, final String? $type})
      : $type = $type ?? 'reportCrash';

  factory _$NotificationActionReportCrashImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationActionReportCrashImplFromJson(json);

  @override
  final CrashInfo info;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationAction.reportCrash(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationActionReportCrashImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationActionReportCrashImplCopyWith<
          _$NotificationActionReportCrashImpl>
      get copyWith => __$$NotificationActionReportCrashImplCopyWithImpl<
          _$NotificationActionReportCrashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrashInfo info) reportCrash,
    required TResult Function() openRefImageList,
  }) {
    return reportCrash(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrashInfo info)? reportCrash,
    TResult? Function()? openRefImageList,
  }) {
    return reportCrash?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrashInfo info)? reportCrash,
    TResult Function()? openRefImageList,
    required TResult orElse(),
  }) {
    if (reportCrash != null) {
      return reportCrash(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationActionReportCrash value) reportCrash,
    required TResult Function(NotificationActionOpenRefImageList value)
        openRefImageList,
  }) {
    return reportCrash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationActionReportCrash value)? reportCrash,
    TResult? Function(NotificationActionOpenRefImageList value)?
        openRefImageList,
  }) {
    return reportCrash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenRefImageList value)?
        openRefImageList,
    required TResult orElse(),
  }) {
    if (reportCrash != null) {
      return reportCrash(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationActionReportCrashImplToJson(
      this,
    );
  }
}

abstract class NotificationActionReportCrash implements NotificationAction {
  const factory NotificationActionReportCrash({required final CrashInfo info}) =
      _$NotificationActionReportCrashImpl;

  factory NotificationActionReportCrash.fromJson(Map<String, dynamic> json) =
      _$NotificationActionReportCrashImpl.fromJson;

  CrashInfo get info;

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationActionReportCrashImplCopyWith<
          _$NotificationActionReportCrashImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationActionOpenRefImageListImplCopyWith<$Res> {
  factory _$$NotificationActionOpenRefImageListImplCopyWith(
          _$NotificationActionOpenRefImageListImpl value,
          $Res Function(_$NotificationActionOpenRefImageListImpl) then) =
      __$$NotificationActionOpenRefImageListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationActionOpenRefImageListImplCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res,
        _$NotificationActionOpenRefImageListImpl>
    implements _$$NotificationActionOpenRefImageListImplCopyWith<$Res> {
  __$$NotificationActionOpenRefImageListImplCopyWithImpl(
      _$NotificationActionOpenRefImageListImpl _value,
      $Res Function(_$NotificationActionOpenRefImageListImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionOpenRefImageListImpl
    implements NotificationActionOpenRefImageList {
  const _$NotificationActionOpenRefImageListImpl({final String? $type})
      : $type = $type ?? 'openRefImageList';

  factory _$NotificationActionOpenRefImageListImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationActionOpenRefImageListImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationAction.openRefImageList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationActionOpenRefImageListImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrashInfo info) reportCrash,
    required TResult Function() openRefImageList,
  }) {
    return openRefImageList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrashInfo info)? reportCrash,
    TResult? Function()? openRefImageList,
  }) {
    return openRefImageList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrashInfo info)? reportCrash,
    TResult Function()? openRefImageList,
    required TResult orElse(),
  }) {
    if (openRefImageList != null) {
      return openRefImageList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationActionReportCrash value) reportCrash,
    required TResult Function(NotificationActionOpenRefImageList value)
        openRefImageList,
  }) {
    return openRefImageList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationActionReportCrash value)? reportCrash,
    TResult? Function(NotificationActionOpenRefImageList value)?
        openRefImageList,
  }) {
    return openRefImageList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenRefImageList value)?
        openRefImageList,
    required TResult orElse(),
  }) {
    if (openRefImageList != null) {
      return openRefImageList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationActionOpenRefImageListImplToJson(
      this,
    );
  }
}

abstract class NotificationActionOpenRefImageList
    implements NotificationAction {
  const factory NotificationActionOpenRefImageList() =
      _$NotificationActionOpenRefImageListImpl;

  factory NotificationActionOpenRefImageList.fromJson(
          Map<String, dynamic> json) =
      _$NotificationActionOpenRefImageListImpl.fromJson;
}
