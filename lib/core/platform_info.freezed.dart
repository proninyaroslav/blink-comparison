// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppInfo {
  String get packageName => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppInfoCopyWith<AppInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res, AppInfo>;
  @useResult
  $Res call(
      {String packageName, String appName, String version, String buildNumber});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res, $Val extends AppInfo>
    implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? appName = null,
    Object? version = null,
    Object? buildNumber = null,
  }) {
    return _then(_value.copyWith(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppInfoImplCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$$AppInfoImplCopyWith(
          _$AppInfoImpl value, $Res Function(_$AppInfoImpl) then) =
      __$$AppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String packageName, String appName, String version, String buildNumber});
}

/// @nodoc
class __$$AppInfoImplCopyWithImpl<$Res>
    extends _$AppInfoCopyWithImpl<$Res, _$AppInfoImpl>
    implements _$$AppInfoImplCopyWith<$Res> {
  __$$AppInfoImplCopyWithImpl(
      _$AppInfoImpl _value, $Res Function(_$AppInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? appName = null,
    Object? version = null,
    Object? buildNumber = null,
  }) {
    return _then(_$AppInfoImpl(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppInfoImpl with DiagnosticableTreeMixin implements _AppInfo {
  const _$AppInfoImpl(
      {required this.packageName,
      required this.appName,
      required this.version,
      required this.buildNumber});

  @override
  final String packageName;
  @override
  final String appName;
  @override
  final String version;
  @override
  final String buildNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppInfo(packageName: $packageName, appName: $appName, version: $version, buildNumber: $buildNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppInfo'))
      ..add(DiagnosticsProperty('packageName', packageName))
      ..add(DiagnosticsProperty('appName', appName))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('buildNumber', buildNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoImpl &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, packageName, appName, version, buildNumber);

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      __$$AppInfoImplCopyWithImpl<_$AppInfoImpl>(this, _$identity);
}

abstract class _AppInfo implements AppInfo {
  const factory _AppInfo(
      {required final String packageName,
      required final String appName,
      required final String version,
      required final String buildNumber}) = _$AppInfoImpl;

  @override
  String get packageName;
  @override
  String get appName;
  @override
  String get version;
  @override
  String get buildNumber;

  /// Create a copy of AppInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeviceInfo {}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res, DeviceInfo>;
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res, $Val extends DeviceInfo>
    implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeviceInfoUnknownImplCopyWith<$Res> {
  factory _$$DeviceInfoUnknownImplCopyWith(_$DeviceInfoUnknownImpl value,
          $Res Function(_$DeviceInfoUnknownImpl) then) =
      __$$DeviceInfoUnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeviceInfoUnknownImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoUnknownImpl>
    implements _$$DeviceInfoUnknownImplCopyWith<$Res> {
  __$$DeviceInfoUnknownImplCopyWithImpl(_$DeviceInfoUnknownImpl _value,
      $Res Function(_$DeviceInfoUnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeviceInfoUnknownImpl
    with DiagnosticableTreeMixin
    implements DeviceInfoUnknown {
  const _$DeviceInfoUnknownImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.unknown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DeviceInfo.unknown'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeviceInfoUnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class DeviceInfoUnknown implements DeviceInfo {
  const factory DeviceInfoUnknown() = _$DeviceInfoUnknownImpl;
}

/// @nodoc
abstract class _$$DeviceInfoAndroidImplCopyWith<$Res> {
  factory _$$DeviceInfoAndroidImplCopyWith(_$DeviceInfoAndroidImpl value,
          $Res Function(_$DeviceInfoAndroidImpl) then) =
      __$$DeviceInfoAndroidImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? systemVersion,
      List<String?> supportedAbis,
      String? brand,
      String? device,
      String? model,
      String? hardware,
      String? product});
}

/// @nodoc
class __$$DeviceInfoAndroidImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoAndroidImpl>
    implements _$$DeviceInfoAndroidImplCopyWith<$Res> {
  __$$DeviceInfoAndroidImplCopyWithImpl(_$DeviceInfoAndroidImpl _value,
      $Res Function(_$DeviceInfoAndroidImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemVersion = freezed,
    Object? supportedAbis = null,
    Object? brand = freezed,
    Object? device = freezed,
    Object? model = freezed,
    Object? hardware = freezed,
    Object? product = freezed,
  }) {
    return _then(_$DeviceInfoAndroidImpl(
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedAbis: null == supportedAbis
          ? _value._supportedAbis
          : supportedAbis // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      hardware: freezed == hardware
          ? _value.hardware
          : hardware // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceInfoAndroidImpl
    with DiagnosticableTreeMixin
    implements DeviceInfoAndroid {
  const _$DeviceInfoAndroidImpl(
      {this.systemVersion,
      final List<String?> supportedAbis = const [],
      this.brand,
      this.device,
      this.model,
      this.hardware,
      this.product})
      : _supportedAbis = supportedAbis;

  @override
  final String? systemVersion;

  /// An ordered list of ABIs supported by this device.
  final List<String?> _supportedAbis;

  /// An ordered list of ABIs supported by this device.
  @override
  @JsonKey()
  List<String?> get supportedAbis {
    if (_supportedAbis is EqualUnmodifiableListView) return _supportedAbis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedAbis);
  }

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  @override
  final String? brand;

  /// The name of the industrial design.
  @override
  final String? device;

  /// The end-user-visible name for the end product.
  @override
  final String? model;

  /// The name of the hardware (from the kernel command line or /proc).
  @override
  final String? hardware;

  /// The name of the overall product.
  @override
  final String? product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.android(systemVersion: $systemVersion, supportedAbis: $supportedAbis, brand: $brand, device: $device, model: $model, hardware: $hardware, product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.android'))
      ..add(DiagnosticsProperty('systemVersion', systemVersion))
      ..add(DiagnosticsProperty('supportedAbis', supportedAbis))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('device', device))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('hardware', hardware))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoAndroidImpl &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion) &&
            const DeepCollectionEquality()
                .equals(other._supportedAbis, _supportedAbis) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.hardware, hardware) ||
                other.hardware == hardware) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      systemVersion,
      const DeepCollectionEquality().hash(_supportedAbis),
      brand,
      device,
      model,
      hardware,
      product);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoAndroidImplCopyWith<_$DeviceInfoAndroidImpl> get copyWith =>
      __$$DeviceInfoAndroidImplCopyWithImpl<_$DeviceInfoAndroidImpl>(
          this, _$identity);
}

abstract class DeviceInfoAndroid implements DeviceInfo {
  const factory DeviceInfoAndroid(
      {final String? systemVersion,
      final List<String?> supportedAbis,
      final String? brand,
      final String? device,
      final String? model,
      final String? hardware,
      final String? product}) = _$DeviceInfoAndroidImpl;

  String? get systemVersion;

  /// An ordered list of ABIs supported by this device.
  List<String?> get supportedAbis;

  /// The consumer-visible brand with which
  /// the product/hardware will be associated, if any.
  String? get brand;

  /// The name of the industrial design.
  String? get device;

  /// The end-user-visible name for the end product.
  String? get model;

  /// The name of the hardware (from the kernel command line or /proc).
  String? get hardware;

  /// The name of the overall product.
  String? get product;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoAndroidImplCopyWith<_$DeviceInfoAndroidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceInfoIOSImplCopyWith<$Res> {
  factory _$$DeviceInfoIOSImplCopyWith(
          _$DeviceInfoIOSImpl value, $Res Function(_$DeviceInfoIOSImpl) then) =
      __$$DeviceInfoIOSImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? deviceName,
      String? deviceModel,
      String? systemName,
      String? systemVersion});
}

/// @nodoc
class __$$DeviceInfoIOSImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoIOSImpl>
    implements _$$DeviceInfoIOSImplCopyWith<$Res> {
  __$$DeviceInfoIOSImplCopyWithImpl(
      _$DeviceInfoIOSImpl _value, $Res Function(_$DeviceInfoIOSImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceName = freezed,
    Object? deviceModel = freezed,
    Object? systemName = freezed,
    Object? systemVersion = freezed,
  }) {
    return _then(_$DeviceInfoIOSImpl(
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      systemName: freezed == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceInfoIOSImpl
    with DiagnosticableTreeMixin
    implements DeviceInfoIOS {
  const _$DeviceInfoIOSImpl(
      {this.deviceName, this.deviceModel, this.systemName, this.systemVersion});

  @override
  final String? deviceName;
  @override
  final String? deviceModel;
  @override
  final String? systemName;
  @override
  final String? systemVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.iOS(deviceName: $deviceName, deviceModel: $deviceModel, systemName: $systemName, systemVersion: $systemVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.iOS'))
      ..add(DiagnosticsProperty('deviceName', deviceName))
      ..add(DiagnosticsProperty('deviceModel', deviceModel))
      ..add(DiagnosticsProperty('systemName', systemName))
      ..add(DiagnosticsProperty('systemVersion', systemVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoIOSImpl &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.systemName, systemName) ||
                other.systemName == systemName) &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, deviceName, deviceModel, systemName, systemVersion);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoIOSImplCopyWith<_$DeviceInfoIOSImpl> get copyWith =>
      __$$DeviceInfoIOSImplCopyWithImpl<_$DeviceInfoIOSImpl>(this, _$identity);
}

abstract class DeviceInfoIOS implements DeviceInfo {
  const factory DeviceInfoIOS(
      {final String? deviceName,
      final String? deviceModel,
      final String? systemName,
      final String? systemVersion}) = _$DeviceInfoIOSImpl;

  String? get deviceName;
  String? get deviceModel;
  String? get systemName;
  String? get systemVersion;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoIOSImplCopyWith<_$DeviceInfoIOSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceInfoLinuxImplCopyWith<$Res> {
  factory _$$DeviceInfoLinuxImplCopyWith(_$DeviceInfoLinuxImpl value,
          $Res Function(_$DeviceInfoLinuxImpl) then) =
      __$$DeviceInfoLinuxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String osName, String kernelVersion, String? osVersion});
}

/// @nodoc
class __$$DeviceInfoLinuxImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoLinuxImpl>
    implements _$$DeviceInfoLinuxImplCopyWith<$Res> {
  __$$DeviceInfoLinuxImplCopyWithImpl(
      _$DeviceInfoLinuxImpl _value, $Res Function(_$DeviceInfoLinuxImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? osName = null,
    Object? kernelVersion = null,
    Object? osVersion = freezed,
  }) {
    return _then(_$DeviceInfoLinuxImpl(
      osName: null == osName
          ? _value.osName
          : osName // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceInfoLinuxImpl
    with DiagnosticableTreeMixin
    implements DeviceInfoLinux {
  const _$DeviceInfoLinuxImpl(
      {required this.osName, required this.kernelVersion, this.osVersion});

  @override
  final String osName;
  @override
  final String kernelVersion;
  @override
  final String? osVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.linux(osName: $osName, kernelVersion: $kernelVersion, osVersion: $osVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.linux'))
      ..add(DiagnosticsProperty('osName', osName))
      ..add(DiagnosticsProperty('kernelVersion', kernelVersion))
      ..add(DiagnosticsProperty('osVersion', osVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoLinuxImpl &&
            (identical(other.osName, osName) || other.osName == osName) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, osName, kernelVersion, osVersion);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoLinuxImplCopyWith<_$DeviceInfoLinuxImpl> get copyWith =>
      __$$DeviceInfoLinuxImplCopyWithImpl<_$DeviceInfoLinuxImpl>(
          this, _$identity);
}

abstract class DeviceInfoLinux implements DeviceInfo {
  const factory DeviceInfoLinux(
      {required final String osName,
      required final String kernelVersion,
      final String? osVersion}) = _$DeviceInfoLinuxImpl;

  String get osName;
  String get kernelVersion;
  String? get osVersion;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoLinuxImplCopyWith<_$DeviceInfoLinuxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceInfoWindowsImplCopyWith<$Res> {
  factory _$$DeviceInfoWindowsImplCopyWith(_$DeviceInfoWindowsImpl value,
          $Res Function(_$DeviceInfoWindowsImpl) then) =
      __$$DeviceInfoWindowsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String osVersion});
}

/// @nodoc
class __$$DeviceInfoWindowsImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoWindowsImpl>
    implements _$$DeviceInfoWindowsImplCopyWith<$Res> {
  __$$DeviceInfoWindowsImplCopyWithImpl(_$DeviceInfoWindowsImpl _value,
      $Res Function(_$DeviceInfoWindowsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? osVersion = null,
  }) {
    return _then(_$DeviceInfoWindowsImpl(
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeviceInfoWindowsImpl
    with DiagnosticableTreeMixin
    implements DeviceInfoWindows {
  const _$DeviceInfoWindowsImpl({required this.osVersion});

  @override
  final String osVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.windows(osVersion: $osVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.windows'))
      ..add(DiagnosticsProperty('osVersion', osVersion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoWindowsImpl &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, osVersion);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoWindowsImplCopyWith<_$DeviceInfoWindowsImpl> get copyWith =>
      __$$DeviceInfoWindowsImplCopyWithImpl<_$DeviceInfoWindowsImpl>(
          this, _$identity);
}

abstract class DeviceInfoWindows implements DeviceInfo {
  const factory DeviceInfoWindows({required final String osVersion}) =
      _$DeviceInfoWindowsImpl;

  String get osVersion;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoWindowsImplCopyWith<_$DeviceInfoWindowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceInfoMacOSImplCopyWith<$Res> {
  factory _$$DeviceInfoMacOSImplCopyWith(_$DeviceInfoMacOSImpl value,
          $Res Function(_$DeviceInfoMacOSImpl) then) =
      __$$DeviceInfoMacOSImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String arch, String kernelVersion, String osVersion, String model});
}

/// @nodoc
class __$$DeviceInfoMacOSImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoMacOSImpl>
    implements _$$DeviceInfoMacOSImplCopyWith<$Res> {
  __$$DeviceInfoMacOSImplCopyWithImpl(
      _$DeviceInfoMacOSImpl _value, $Res Function(_$DeviceInfoMacOSImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arch = null,
    Object? kernelVersion = null,
    Object? osVersion = null,
    Object? model = null,
  }) {
    return _then(_$DeviceInfoMacOSImpl(
      arch: null == arch
          ? _value.arch
          : arch // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeviceInfoMacOSImpl
    with DiagnosticableTreeMixin
    implements DeviceInfoMacOS {
  const _$DeviceInfoMacOSImpl(
      {required this.arch,
      required this.kernelVersion,
      required this.osVersion,
      required this.model});

  @override
  final String arch;
  @override
  final String kernelVersion;
  @override
  final String osVersion;
  @override
  final String model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.macOS(arch: $arch, kernelVersion: $kernelVersion, osVersion: $osVersion, model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.macOS'))
      ..add(DiagnosticsProperty('arch', arch))
      ..add(DiagnosticsProperty('kernelVersion', kernelVersion))
      ..add(DiagnosticsProperty('osVersion', osVersion))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoMacOSImpl &&
            (identical(other.arch, arch) || other.arch == arch) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, arch, kernelVersion, osVersion, model);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoMacOSImplCopyWith<_$DeviceInfoMacOSImpl> get copyWith =>
      __$$DeviceInfoMacOSImplCopyWithImpl<_$DeviceInfoMacOSImpl>(
          this, _$identity);
}

abstract class DeviceInfoMacOS implements DeviceInfo {
  const factory DeviceInfoMacOS(
      {required final String arch,
      required final String kernelVersion,
      required final String osVersion,
      required final String model}) = _$DeviceInfoMacOSImpl;

  String get arch;
  String get kernelVersion;
  String get osVersion;
  String get model;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoMacOSImplCopyWith<_$DeviceInfoMacOSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceInfoWebImplCopyWith<$Res> {
  factory _$$DeviceInfoWebImplCopyWith(
          _$DeviceInfoWebImpl value, $Res Function(_$DeviceInfoWebImpl) then) =
      __$$DeviceInfoWebImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String browserName, String? platform, String? vendor});
}

/// @nodoc
class __$$DeviceInfoWebImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoWebImpl>
    implements _$$DeviceInfoWebImplCopyWith<$Res> {
  __$$DeviceInfoWebImplCopyWithImpl(
      _$DeviceInfoWebImpl _value, $Res Function(_$DeviceInfoWebImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? browserName = null,
    Object? platform = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_$DeviceInfoWebImpl(
      browserName: null == browserName
          ? _value.browserName
          : browserName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceInfoWebImpl
    with DiagnosticableTreeMixin
    implements DeviceInfoWeb {
  const _$DeviceInfoWebImpl(
      {required this.browserName, this.platform, this.vendor});

  @override
  final String browserName;

  /// A DOMString identifying the platform on which the browser is running
  @override
  final String? platform;

  /// The vendor name of the current browser
  @override
  final String? vendor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceInfo.web(browserName: $browserName, platform: $platform, vendor: $vendor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceInfo.web'))
      ..add(DiagnosticsProperty('browserName', browserName))
      ..add(DiagnosticsProperty('platform', platform))
      ..add(DiagnosticsProperty('vendor', vendor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoWebImpl &&
            (identical(other.browserName, browserName) ||
                other.browserName == browserName) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, browserName, platform, vendor);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoWebImplCopyWith<_$DeviceInfoWebImpl> get copyWith =>
      __$$DeviceInfoWebImplCopyWithImpl<_$DeviceInfoWebImpl>(this, _$identity);
}

abstract class DeviceInfoWeb implements DeviceInfo {
  const factory DeviceInfoWeb(
      {required final String browserName,
      final String? platform,
      final String? vendor}) = _$DeviceInfoWebImpl;

  String get browserName;

  /// A DOMString identifying the platform on which the browser is running
  String? get platform;

  /// The vendor name of the current browser
  String? get vendor;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoWebImplCopyWith<_$DeviceInfoWebImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
