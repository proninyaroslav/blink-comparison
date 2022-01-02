// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_ref_image_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientMessage _$ClientMessageFromJson(Map<String, dynamic> json) {
  return ClientMessageInfo.fromJson(json);
}

/// @nodoc
class _$ClientMessageTearOff {
  const _$ClientMessageTearOff();

  ClientMessageInfo info(
      {required RefImageInfo info,
      required String srcPath,
      required SecureKey key}) {
    return ClientMessageInfo(
      info: info,
      srcPath: srcPath,
      key: key,
    );
  }

  ClientMessage fromJson(Map<String, Object> json) {
    return ClientMessage.fromJson(json);
  }
}

/// @nodoc
const $ClientMessage = _$ClientMessageTearOff();

/// @nodoc
mixin _$ClientMessage {
  RefImageInfo get info => throw _privateConstructorUsedError;
  String get srcPath => throw _privateConstructorUsedError;
  SecureKey get key => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageInfo info, String srcPath, SecureKey key)
        info,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefImageInfo info, String srcPath, SecureKey key)? info,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageInfo info, String srcPath, SecureKey key)? info,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientMessageInfo value) info,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientMessageInfo value)? info,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientMessageInfo value)? info,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientMessageCopyWith<ClientMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientMessageCopyWith<$Res> {
  factory $ClientMessageCopyWith(
          ClientMessage value, $Res Function(ClientMessage) then) =
      _$ClientMessageCopyWithImpl<$Res>;
  $Res call({RefImageInfo info, String srcPath, SecureKey key});

  $RefImageInfoCopyWith<$Res> get info;
  $SecureKeyCopyWith<$Res> get key;
}

/// @nodoc
class _$ClientMessageCopyWithImpl<$Res>
    implements $ClientMessageCopyWith<$Res> {
  _$ClientMessageCopyWithImpl(this._value, this._then);

  final ClientMessage _value;
  // ignore: unused_field
  final $Res Function(ClientMessage) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? srcPath = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      srcPath: srcPath == freezed
          ? _value.srcPath
          : srcPath // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as SecureKey,
    ));
  }

  @override
  $RefImageInfoCopyWith<$Res> get info {
    return $RefImageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $SecureKeyCopyWith<$Res> get key {
    return $SecureKeyCopyWith<$Res>(_value.key, (value) {
      return _then(_value.copyWith(key: value));
    });
  }
}

/// @nodoc
abstract class $ClientMessageInfoCopyWith<$Res>
    implements $ClientMessageCopyWith<$Res> {
  factory $ClientMessageInfoCopyWith(
          ClientMessageInfo value, $Res Function(ClientMessageInfo) then) =
      _$ClientMessageInfoCopyWithImpl<$Res>;
  @override
  $Res call({RefImageInfo info, String srcPath, SecureKey key});

  @override
  $RefImageInfoCopyWith<$Res> get info;
  @override
  $SecureKeyCopyWith<$Res> get key;
}

/// @nodoc
class _$ClientMessageInfoCopyWithImpl<$Res>
    extends _$ClientMessageCopyWithImpl<$Res>
    implements $ClientMessageInfoCopyWith<$Res> {
  _$ClientMessageInfoCopyWithImpl(
      ClientMessageInfo _value, $Res Function(ClientMessageInfo) _then)
      : super(_value, (v) => _then(v as ClientMessageInfo));

  @override
  ClientMessageInfo get _value => super._value as ClientMessageInfo;

  @override
  $Res call({
    Object? info = freezed,
    Object? srcPath = freezed,
    Object? key = freezed,
  }) {
    return _then(ClientMessageInfo(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as RefImageInfo,
      srcPath: srcPath == freezed
          ? _value.srcPath
          : srcPath // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as SecureKey,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientMessageInfo
    with DiagnosticableTreeMixin
    implements ClientMessageInfo {
  const _$ClientMessageInfo(
      {required this.info, required this.srcPath, required this.key});

  factory _$ClientMessageInfo.fromJson(Map<String, dynamic> json) =>
      _$$ClientMessageInfoFromJson(json);

  @override
  final RefImageInfo info;
  @override
  final String srcPath;
  @override
  final SecureKey key;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientMessage.info(info: $info, srcPath: $srcPath, key: $key)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientMessage.info'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('srcPath', srcPath))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientMessageInfo &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.srcPath, srcPath) ||
                const DeepCollectionEquality()
                    .equals(other.srcPath, srcPath)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(srcPath) ^
      const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  $ClientMessageInfoCopyWith<ClientMessageInfo> get copyWith =>
      _$ClientMessageInfoCopyWithImpl<ClientMessageInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RefImageInfo info, String srcPath, SecureKey key)
        info,
  }) {
    return info(this.info, srcPath, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RefImageInfo info, String srcPath, SecureKey key)? info,
  }) {
    return info?.call(this.info, srcPath, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RefImageInfo info, String srcPath, SecureKey key)? info,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this.info, srcPath, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientMessageInfo value) info,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientMessageInfo value)? info,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientMessageInfo value)? info,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientMessageInfoToJson(this);
  }
}

abstract class ClientMessageInfo implements ClientMessage {
  const factory ClientMessageInfo(
      {required RefImageInfo info,
      required String srcPath,
      required SecureKey key}) = _$ClientMessageInfo;

  factory ClientMessageInfo.fromJson(Map<String, dynamic> json) =
      _$ClientMessageInfo.fromJson;

  @override
  RefImageInfo get info => throw _privateConstructorUsedError;
  @override
  String get srcPath => throw _privateConstructorUsedError;
  @override
  SecureKey get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ClientMessageInfoCopyWith<ClientMessageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceMessage _$ServiceMessageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'requestInfo':
      return ServiceMessageRequestInfo.fromJson(json);
    case 'updateStatus':
      return ServiceMessageUpdateStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ServiceMessage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ServiceMessageTearOff {
  const _$ServiceMessageTearOff();

  ServiceMessageRequestInfo requestInfo() {
    return const ServiceMessageRequestInfo();
  }

  ServiceMessageUpdateStatus updateStatus(SaveRefImageStatus status) {
    return ServiceMessageUpdateStatus(
      status,
    );
  }

  ServiceMessage fromJson(Map<String, Object> json) {
    return ServiceMessage.fromJson(json);
  }
}

/// @nodoc
const $ServiceMessage = _$ServiceMessageTearOff();

/// @nodoc
mixin _$ServiceMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestInfo,
    required TResult Function(SaveRefImageStatus status) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestInfo,
    TResult Function(SaveRefImageStatus status)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestInfo,
    TResult Function(SaveRefImageStatus status)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceMessageRequestInfo value) requestInfo,
    required TResult Function(ServiceMessageUpdateStatus value) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceMessageRequestInfo value)? requestInfo,
    TResult Function(ServiceMessageUpdateStatus value)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceMessageRequestInfo value)? requestInfo,
    TResult Function(ServiceMessageUpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceMessageCopyWith<$Res> {
  factory $ServiceMessageCopyWith(
          ServiceMessage value, $Res Function(ServiceMessage) then) =
      _$ServiceMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceMessageCopyWithImpl<$Res>
    implements $ServiceMessageCopyWith<$Res> {
  _$ServiceMessageCopyWithImpl(this._value, this._then);

  final ServiceMessage _value;
  // ignore: unused_field
  final $Res Function(ServiceMessage) _then;
}

/// @nodoc
abstract class $ServiceMessageRequestInfoCopyWith<$Res> {
  factory $ServiceMessageRequestInfoCopyWith(ServiceMessageRequestInfo value,
          $Res Function(ServiceMessageRequestInfo) then) =
      _$ServiceMessageRequestInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceMessageRequestInfoCopyWithImpl<$Res>
    extends _$ServiceMessageCopyWithImpl<$Res>
    implements $ServiceMessageRequestInfoCopyWith<$Res> {
  _$ServiceMessageRequestInfoCopyWithImpl(ServiceMessageRequestInfo _value,
      $Res Function(ServiceMessageRequestInfo) _then)
      : super(_value, (v) => _then(v as ServiceMessageRequestInfo));

  @override
  ServiceMessageRequestInfo get _value =>
      super._value as ServiceMessageRequestInfo;
}

/// @nodoc
@JsonSerializable()
class _$ServiceMessageRequestInfo
    with DiagnosticableTreeMixin
    implements ServiceMessageRequestInfo {
  const _$ServiceMessageRequestInfo();

  factory _$ServiceMessageRequestInfo.fromJson(Map<String, dynamic> json) =>
      _$$ServiceMessageRequestInfoFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceMessage.requestInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServiceMessage.requestInfo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServiceMessageRequestInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestInfo,
    required TResult Function(SaveRefImageStatus status) updateStatus,
  }) {
    return requestInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestInfo,
    TResult Function(SaveRefImageStatus status)? updateStatus,
  }) {
    return requestInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestInfo,
    TResult Function(SaveRefImageStatus status)? updateStatus,
    required TResult orElse(),
  }) {
    if (requestInfo != null) {
      return requestInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceMessageRequestInfo value) requestInfo,
    required TResult Function(ServiceMessageUpdateStatus value) updateStatus,
  }) {
    return requestInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceMessageRequestInfo value)? requestInfo,
    TResult Function(ServiceMessageUpdateStatus value)? updateStatus,
  }) {
    return requestInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceMessageRequestInfo value)? requestInfo,
    TResult Function(ServiceMessageUpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (requestInfo != null) {
      return requestInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceMessageRequestInfoToJson(this)
      ..['runtimeType'] = 'requestInfo';
  }
}

abstract class ServiceMessageRequestInfo implements ServiceMessage {
  const factory ServiceMessageRequestInfo() = _$ServiceMessageRequestInfo;

  factory ServiceMessageRequestInfo.fromJson(Map<String, dynamic> json) =
      _$ServiceMessageRequestInfo.fromJson;
}

/// @nodoc
abstract class $ServiceMessageUpdateStatusCopyWith<$Res> {
  factory $ServiceMessageUpdateStatusCopyWith(ServiceMessageUpdateStatus value,
          $Res Function(ServiceMessageUpdateStatus) then) =
      _$ServiceMessageUpdateStatusCopyWithImpl<$Res>;
  $Res call({SaveRefImageStatus status});

  $SaveRefImageStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ServiceMessageUpdateStatusCopyWithImpl<$Res>
    extends _$ServiceMessageCopyWithImpl<$Res>
    implements $ServiceMessageUpdateStatusCopyWith<$Res> {
  _$ServiceMessageUpdateStatusCopyWithImpl(ServiceMessageUpdateStatus _value,
      $Res Function(ServiceMessageUpdateStatus) _then)
      : super(_value, (v) => _then(v as ServiceMessageUpdateStatus));

  @override
  ServiceMessageUpdateStatus get _value =>
      super._value as ServiceMessageUpdateStatus;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(ServiceMessageUpdateStatus(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SaveRefImageStatus,
    ));
  }

  @override
  $SaveRefImageStatusCopyWith<$Res> get status {
    return $SaveRefImageStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceMessageUpdateStatus
    with DiagnosticableTreeMixin
    implements ServiceMessageUpdateStatus {
  const _$ServiceMessageUpdateStatus(this.status);

  factory _$ServiceMessageUpdateStatus.fromJson(Map<String, dynamic> json) =>
      _$$ServiceMessageUpdateStatusFromJson(json);

  @override
  final SaveRefImageStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceMessage.updateStatus(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceMessage.updateStatus'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceMessageUpdateStatus &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $ServiceMessageUpdateStatusCopyWith<ServiceMessageUpdateStatus>
      get copyWith =>
          _$ServiceMessageUpdateStatusCopyWithImpl<ServiceMessageUpdateStatus>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestInfo,
    required TResult Function(SaveRefImageStatus status) updateStatus,
  }) {
    return updateStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestInfo,
    TResult Function(SaveRefImageStatus status)? updateStatus,
  }) {
    return updateStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestInfo,
    TResult Function(SaveRefImageStatus status)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceMessageRequestInfo value) requestInfo,
    required TResult Function(ServiceMessageUpdateStatus value) updateStatus,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceMessageRequestInfo value)? requestInfo,
    TResult Function(ServiceMessageUpdateStatus value)? updateStatus,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceMessageRequestInfo value)? requestInfo,
    TResult Function(ServiceMessageUpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceMessageUpdateStatusToJson(this)
      ..['runtimeType'] = 'updateStatus';
  }
}

abstract class ServiceMessageUpdateStatus implements ServiceMessage {
  const factory ServiceMessageUpdateStatus(SaveRefImageStatus status) =
      _$ServiceMessageUpdateStatus;

  factory ServiceMessageUpdateStatus.fromJson(Map<String, dynamic> json) =
      _$ServiceMessageUpdateStatus.fromJson;

  SaveRefImageStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceMessageUpdateStatusCopyWith<ServiceMessageUpdateStatus>
      get copyWith => throw _privateConstructorUsedError;
}
