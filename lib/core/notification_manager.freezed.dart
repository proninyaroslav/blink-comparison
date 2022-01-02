// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
class _$NotificationActionTearOff {
  const _$NotificationActionTearOff();

  NotificationActionReportCrash reportCrash({required CrashInfo info}) {
    return NotificationActionReportCrash(
      info: info,
    );
  }

  NotificationActionOpenRefImageList openRefImageList() {
    return const NotificationActionOpenRefImageList();
  }

  NotificationAction fromJson(Map<String, Object?> json) {
    return NotificationAction.fromJson(json);
  }
}

/// @nodoc
const $NotificationAction = _$NotificationActionTearOff();

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
    TResult Function(CrashInfo info)? reportCrash,
    TResult Function()? openRefImageList,
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
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenRefImageList value)?
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionCopyWith<$Res> {
  factory $NotificationActionCopyWith(
          NotificationAction value, $Res Function(NotificationAction) then) =
      _$NotificationActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationActionCopyWithImpl<$Res>
    implements $NotificationActionCopyWith<$Res> {
  _$NotificationActionCopyWithImpl(this._value, this._then);

  final NotificationAction _value;
  // ignore: unused_field
  final $Res Function(NotificationAction) _then;
}

/// @nodoc
abstract class $NotificationActionReportCrashCopyWith<$Res> {
  factory $NotificationActionReportCrashCopyWith(
          NotificationActionReportCrash value,
          $Res Function(NotificationActionReportCrash) then) =
      _$NotificationActionReportCrashCopyWithImpl<$Res>;
  $Res call({CrashInfo info});

  $CrashInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$NotificationActionReportCrashCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res>
    implements $NotificationActionReportCrashCopyWith<$Res> {
  _$NotificationActionReportCrashCopyWithImpl(
      NotificationActionReportCrash _value,
      $Res Function(NotificationActionReportCrash) _then)
      : super(_value, (v) => _then(v as NotificationActionReportCrash));

  @override
  NotificationActionReportCrash get _value =>
      super._value as NotificationActionReportCrash;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(NotificationActionReportCrash(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CrashInfo,
    ));
  }

  @override
  $CrashInfoCopyWith<$Res> get info {
    return $CrashInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionReportCrash implements NotificationActionReportCrash {
  const _$NotificationActionReportCrash({required this.info, String? $type})
      : $type = $type ?? 'reportCrash';

  factory _$NotificationActionReportCrash.fromJson(Map<String, dynamic> json) =>
      _$$NotificationActionReportCrashFromJson(json);

  @override
  final CrashInfo info;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationAction.reportCrash(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationActionReportCrash &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  $NotificationActionReportCrashCopyWith<NotificationActionReportCrash>
      get copyWith => _$NotificationActionReportCrashCopyWithImpl<
          NotificationActionReportCrash>(this, _$identity);

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
    TResult Function(CrashInfo info)? reportCrash,
    TResult Function()? openRefImageList,
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
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenRefImageList value)?
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
    return _$$NotificationActionReportCrashToJson(this);
  }
}

abstract class NotificationActionReportCrash implements NotificationAction {
  const factory NotificationActionReportCrash({required CrashInfo info}) =
      _$NotificationActionReportCrash;

  factory NotificationActionReportCrash.fromJson(Map<String, dynamic> json) =
      _$NotificationActionReportCrash.fromJson;

  CrashInfo get info;
  @JsonKey(ignore: true)
  $NotificationActionReportCrashCopyWith<NotificationActionReportCrash>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionOpenRefImageListCopyWith<$Res> {
  factory $NotificationActionOpenRefImageListCopyWith(
          NotificationActionOpenRefImageList value,
          $Res Function(NotificationActionOpenRefImageList) then) =
      _$NotificationActionOpenRefImageListCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationActionOpenRefImageListCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res>
    implements $NotificationActionOpenRefImageListCopyWith<$Res> {
  _$NotificationActionOpenRefImageListCopyWithImpl(
      NotificationActionOpenRefImageList _value,
      $Res Function(NotificationActionOpenRefImageList) _then)
      : super(_value, (v) => _then(v as NotificationActionOpenRefImageList));

  @override
  NotificationActionOpenRefImageList get _value =>
      super._value as NotificationActionOpenRefImageList;
}

/// @nodoc
@JsonSerializable()
class _$NotificationActionOpenRefImageList
    implements NotificationActionOpenRefImageList {
  const _$NotificationActionOpenRefImageList({String? $type})
      : $type = $type ?? 'openRefImageList';

  factory _$NotificationActionOpenRefImageList.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationActionOpenRefImageListFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NotificationAction.openRefImageList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationActionOpenRefImageList);
  }

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
    TResult Function(CrashInfo info)? reportCrash,
    TResult Function()? openRefImageList,
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
    TResult Function(NotificationActionReportCrash value)? reportCrash,
    TResult Function(NotificationActionOpenRefImageList value)?
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
    return _$$NotificationActionOpenRefImageListToJson(this);
  }
}

abstract class NotificationActionOpenRefImageList
    implements NotificationAction {
  const factory NotificationActionOpenRefImageList() =
      _$NotificationActionOpenRefImageList;

  factory NotificationActionOpenRefImageList.fromJson(
          Map<String, dynamic> json) =
      _$NotificationActionOpenRefImageList.fromJson;
}
