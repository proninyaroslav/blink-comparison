// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'platform_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppInfo implements DiagnosticableTreeMixin {

 String get packageName; String get appName; String get version; String get buildNumber;
/// Create a copy of AppInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppInfoCopyWith<AppInfo> get copyWith => _$AppInfoCopyWithImpl<AppInfo>(this as AppInfo, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppInfo'))
    ..add(DiagnosticsProperty('packageName', packageName))..add(DiagnosticsProperty('appName', appName))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('buildNumber', buildNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppInfo&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber));
}


@override
int get hashCode => Object.hash(runtimeType,packageName,appName,version,buildNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppInfo(packageName: $packageName, appName: $appName, version: $version, buildNumber: $buildNumber)';
}


}

/// @nodoc
abstract mixin class $AppInfoCopyWith<$Res>  {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) _then) = _$AppInfoCopyWithImpl;
@useResult
$Res call({
 String packageName, String appName, String version, String buildNumber
});




}
/// @nodoc
class _$AppInfoCopyWithImpl<$Res>
    implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._self, this._then);

  final AppInfo _self;
  final $Res Function(AppInfo) _then;

/// Create a copy of AppInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageName = null,Object? appName = null,Object? version = null,Object? buildNumber = null,}) {
  return _then(_self.copyWith(
packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc


class _AppInfo with DiagnosticableTreeMixin implements AppInfo {
  const _AppInfo({required this.packageName, required this.appName, required this.version, required this.buildNumber});
  

@override final  String packageName;
@override final  String appName;
@override final  String version;
@override final  String buildNumber;

/// Create a copy of AppInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppInfoCopyWith<_AppInfo> get copyWith => __$AppInfoCopyWithImpl<_AppInfo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppInfo'))
    ..add(DiagnosticsProperty('packageName', packageName))..add(DiagnosticsProperty('appName', appName))..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('buildNumber', buildNumber));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppInfo&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber));
}


@override
int get hashCode => Object.hash(runtimeType,packageName,appName,version,buildNumber);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppInfo(packageName: $packageName, appName: $appName, version: $version, buildNumber: $buildNumber)';
}


}

/// @nodoc
abstract mixin class _$AppInfoCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$AppInfoCopyWith(_AppInfo value, $Res Function(_AppInfo) _then) = __$AppInfoCopyWithImpl;
@override @useResult
$Res call({
 String packageName, String appName, String version, String buildNumber
});




}
/// @nodoc
class __$AppInfoCopyWithImpl<$Res>
    implements _$AppInfoCopyWith<$Res> {
  __$AppInfoCopyWithImpl(this._self, this._then);

  final _AppInfo _self;
  final $Res Function(_AppInfo) _then;

/// Create a copy of AppInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageName = null,Object? appName = null,Object? version = null,Object? buildNumber = null,}) {
  return _then(_AppInfo(
packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeviceInfo implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeviceInfo'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeviceInfo()';
}


}

/// @nodoc
class $DeviceInfoCopyWith<$Res>  {
$DeviceInfoCopyWith(DeviceInfo _, $Res Function(DeviceInfo) __);
}



/// @nodoc


class DeviceInfoUnknown with DiagnosticableTreeMixin implements DeviceInfo {
  const DeviceInfoUnknown();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeviceInfo.unknown'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoUnknown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeviceInfo.unknown()';
}


}




/// @nodoc


class DeviceInfoAndroid with DiagnosticableTreeMixin implements DeviceInfo {
  const DeviceInfoAndroid({this.systemVersion, final  List<String?> supportedAbis = const [], this.brand, this.device, this.model, this.hardware, this.product}): _supportedAbis = supportedAbis;
  

 final  String? systemVersion;
/// An ordered list of ABIs supported by this device.
 final  List<String?> _supportedAbis;
/// An ordered list of ABIs supported by this device.
@JsonKey() List<String?> get supportedAbis {
  if (_supportedAbis is EqualUnmodifiableListView) return _supportedAbis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_supportedAbis);
}

/// The consumer-visible brand with which
/// the product/hardware will be associated, if any.
 final  String? brand;
/// The name of the industrial design.
 final  String? device;
/// The end-user-visible name for the end product.
 final  String? model;
/// The name of the hardware (from the kernel command line or /proc).
 final  String? hardware;
/// The name of the overall product.
 final  String? product;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInfoAndroidCopyWith<DeviceInfoAndroid> get copyWith => _$DeviceInfoAndroidCopyWithImpl<DeviceInfoAndroid>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeviceInfo.android'))
    ..add(DiagnosticsProperty('systemVersion', systemVersion))..add(DiagnosticsProperty('supportedAbis', supportedAbis))..add(DiagnosticsProperty('brand', brand))..add(DiagnosticsProperty('device', device))..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('hardware', hardware))..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoAndroid&&(identical(other.systemVersion, systemVersion) || other.systemVersion == systemVersion)&&const DeepCollectionEquality().equals(other._supportedAbis, _supportedAbis)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.device, device) || other.device == device)&&(identical(other.model, model) || other.model == model)&&(identical(other.hardware, hardware) || other.hardware == hardware)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,systemVersion,const DeepCollectionEquality().hash(_supportedAbis),brand,device,model,hardware,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeviceInfo.android(systemVersion: $systemVersion, supportedAbis: $supportedAbis, brand: $brand, device: $device, model: $model, hardware: $hardware, product: $product)';
}


}

/// @nodoc
abstract mixin class $DeviceInfoAndroidCopyWith<$Res> implements $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoAndroidCopyWith(DeviceInfoAndroid value, $Res Function(DeviceInfoAndroid) _then) = _$DeviceInfoAndroidCopyWithImpl;
@useResult
$Res call({
 String? systemVersion, List<String?> supportedAbis, String? brand, String? device, String? model, String? hardware, String? product
});




}
/// @nodoc
class _$DeviceInfoAndroidCopyWithImpl<$Res>
    implements $DeviceInfoAndroidCopyWith<$Res> {
  _$DeviceInfoAndroidCopyWithImpl(this._self, this._then);

  final DeviceInfoAndroid _self;
  final $Res Function(DeviceInfoAndroid) _then;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? systemVersion = freezed,Object? supportedAbis = null,Object? brand = freezed,Object? device = freezed,Object? model = freezed,Object? hardware = freezed,Object? product = freezed,}) {
  return _then(DeviceInfoAndroid(
systemVersion: freezed == systemVersion ? _self.systemVersion : systemVersion // ignore: cast_nullable_to_non_nullable
as String?,supportedAbis: null == supportedAbis ? _self._supportedAbis : supportedAbis // ignore: cast_nullable_to_non_nullable
as List<String?>,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,hardware: freezed == hardware ? _self.hardware : hardware // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DeviceInfoIOS with DiagnosticableTreeMixin implements DeviceInfo {
  const DeviceInfoIOS({this.deviceName, this.deviceModel, this.systemName, this.systemVersion});
  

 final  String? deviceName;
 final  String? deviceModel;
 final  String? systemName;
 final  String? systemVersion;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInfoIOSCopyWith<DeviceInfoIOS> get copyWith => _$DeviceInfoIOSCopyWithImpl<DeviceInfoIOS>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeviceInfo.iOS'))
    ..add(DiagnosticsProperty('deviceName', deviceName))..add(DiagnosticsProperty('deviceModel', deviceModel))..add(DiagnosticsProperty('systemName', systemName))..add(DiagnosticsProperty('systemVersion', systemVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoIOS&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.deviceModel, deviceModel) || other.deviceModel == deviceModel)&&(identical(other.systemName, systemName) || other.systemName == systemName)&&(identical(other.systemVersion, systemVersion) || other.systemVersion == systemVersion));
}


@override
int get hashCode => Object.hash(runtimeType,deviceName,deviceModel,systemName,systemVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeviceInfo.iOS(deviceName: $deviceName, deviceModel: $deviceModel, systemName: $systemName, systemVersion: $systemVersion)';
}


}

/// @nodoc
abstract mixin class $DeviceInfoIOSCopyWith<$Res> implements $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoIOSCopyWith(DeviceInfoIOS value, $Res Function(DeviceInfoIOS) _then) = _$DeviceInfoIOSCopyWithImpl;
@useResult
$Res call({
 String? deviceName, String? deviceModel, String? systemName, String? systemVersion
});




}
/// @nodoc
class _$DeviceInfoIOSCopyWithImpl<$Res>
    implements $DeviceInfoIOSCopyWith<$Res> {
  _$DeviceInfoIOSCopyWithImpl(this._self, this._then);

  final DeviceInfoIOS _self;
  final $Res Function(DeviceInfoIOS) _then;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deviceName = freezed,Object? deviceModel = freezed,Object? systemName = freezed,Object? systemVersion = freezed,}) {
  return _then(DeviceInfoIOS(
deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,deviceModel: freezed == deviceModel ? _self.deviceModel : deviceModel // ignore: cast_nullable_to_non_nullable
as String?,systemName: freezed == systemName ? _self.systemName : systemName // ignore: cast_nullable_to_non_nullable
as String?,systemVersion: freezed == systemVersion ? _self.systemVersion : systemVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DeviceInfoLinux with DiagnosticableTreeMixin implements DeviceInfo {
  const DeviceInfoLinux({required this.osName, required this.kernelVersion, this.osVersion});
  

 final  String osName;
 final  String kernelVersion;
 final  String? osVersion;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInfoLinuxCopyWith<DeviceInfoLinux> get copyWith => _$DeviceInfoLinuxCopyWithImpl<DeviceInfoLinux>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeviceInfo.linux'))
    ..add(DiagnosticsProperty('osName', osName))..add(DiagnosticsProperty('kernelVersion', kernelVersion))..add(DiagnosticsProperty('osVersion', osVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoLinux&&(identical(other.osName, osName) || other.osName == osName)&&(identical(other.kernelVersion, kernelVersion) || other.kernelVersion == kernelVersion)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion));
}


@override
int get hashCode => Object.hash(runtimeType,osName,kernelVersion,osVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeviceInfo.linux(osName: $osName, kernelVersion: $kernelVersion, osVersion: $osVersion)';
}


}

/// @nodoc
abstract mixin class $DeviceInfoLinuxCopyWith<$Res> implements $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoLinuxCopyWith(DeviceInfoLinux value, $Res Function(DeviceInfoLinux) _then) = _$DeviceInfoLinuxCopyWithImpl;
@useResult
$Res call({
 String osName, String kernelVersion, String? osVersion
});




}
/// @nodoc
class _$DeviceInfoLinuxCopyWithImpl<$Res>
    implements $DeviceInfoLinuxCopyWith<$Res> {
  _$DeviceInfoLinuxCopyWithImpl(this._self, this._then);

  final DeviceInfoLinux _self;
  final $Res Function(DeviceInfoLinux) _then;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? osName = null,Object? kernelVersion = null,Object? osVersion = freezed,}) {
  return _then(DeviceInfoLinux(
osName: null == osName ? _self.osName : osName // ignore: cast_nullable_to_non_nullable
as String,kernelVersion: null == kernelVersion ? _self.kernelVersion : kernelVersion // ignore: cast_nullable_to_non_nullable
as String,osVersion: freezed == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class DeviceInfoWindows with DiagnosticableTreeMixin implements DeviceInfo {
  const DeviceInfoWindows({required this.osVersion});
  

 final  String osVersion;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInfoWindowsCopyWith<DeviceInfoWindows> get copyWith => _$DeviceInfoWindowsCopyWithImpl<DeviceInfoWindows>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeviceInfo.windows'))
    ..add(DiagnosticsProperty('osVersion', osVersion));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoWindows&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion));
}


@override
int get hashCode => Object.hash(runtimeType,osVersion);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeviceInfo.windows(osVersion: $osVersion)';
}


}

/// @nodoc
abstract mixin class $DeviceInfoWindowsCopyWith<$Res> implements $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoWindowsCopyWith(DeviceInfoWindows value, $Res Function(DeviceInfoWindows) _then) = _$DeviceInfoWindowsCopyWithImpl;
@useResult
$Res call({
 String osVersion
});




}
/// @nodoc
class _$DeviceInfoWindowsCopyWithImpl<$Res>
    implements $DeviceInfoWindowsCopyWith<$Res> {
  _$DeviceInfoWindowsCopyWithImpl(this._self, this._then);

  final DeviceInfoWindows _self;
  final $Res Function(DeviceInfoWindows) _then;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? osVersion = null,}) {
  return _then(DeviceInfoWindows(
osVersion: null == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeviceInfoMacOS with DiagnosticableTreeMixin implements DeviceInfo {
  const DeviceInfoMacOS({required this.arch, required this.kernelVersion, required this.osVersion, required this.model});
  

 final  String arch;
 final  String kernelVersion;
 final  String osVersion;
 final  String model;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInfoMacOSCopyWith<DeviceInfoMacOS> get copyWith => _$DeviceInfoMacOSCopyWithImpl<DeviceInfoMacOS>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeviceInfo.macOS'))
    ..add(DiagnosticsProperty('arch', arch))..add(DiagnosticsProperty('kernelVersion', kernelVersion))..add(DiagnosticsProperty('osVersion', osVersion))..add(DiagnosticsProperty('model', model));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoMacOS&&(identical(other.arch, arch) || other.arch == arch)&&(identical(other.kernelVersion, kernelVersion) || other.kernelVersion == kernelVersion)&&(identical(other.osVersion, osVersion) || other.osVersion == osVersion)&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,arch,kernelVersion,osVersion,model);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeviceInfo.macOS(arch: $arch, kernelVersion: $kernelVersion, osVersion: $osVersion, model: $model)';
}


}

/// @nodoc
abstract mixin class $DeviceInfoMacOSCopyWith<$Res> implements $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoMacOSCopyWith(DeviceInfoMacOS value, $Res Function(DeviceInfoMacOS) _then) = _$DeviceInfoMacOSCopyWithImpl;
@useResult
$Res call({
 String arch, String kernelVersion, String osVersion, String model
});




}
/// @nodoc
class _$DeviceInfoMacOSCopyWithImpl<$Res>
    implements $DeviceInfoMacOSCopyWith<$Res> {
  _$DeviceInfoMacOSCopyWithImpl(this._self, this._then);

  final DeviceInfoMacOS _self;
  final $Res Function(DeviceInfoMacOS) _then;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? arch = null,Object? kernelVersion = null,Object? osVersion = null,Object? model = null,}) {
  return _then(DeviceInfoMacOS(
arch: null == arch ? _self.arch : arch // ignore: cast_nullable_to_non_nullable
as String,kernelVersion: null == kernelVersion ? _self.kernelVersion : kernelVersion // ignore: cast_nullable_to_non_nullable
as String,osVersion: null == osVersion ? _self.osVersion : osVersion // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeviceInfoWeb with DiagnosticableTreeMixin implements DeviceInfo {
  const DeviceInfoWeb({required this.browserName, this.platform, this.vendor});
  

 final  String browserName;
/// A DOMString identifying the platform on which the browser is running
 final  String? platform;
/// The vendor name of the current browser
 final  String? vendor;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInfoWebCopyWith<DeviceInfoWeb> get copyWith => _$DeviceInfoWebCopyWithImpl<DeviceInfoWeb>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DeviceInfo.web'))
    ..add(DiagnosticsProperty('browserName', browserName))..add(DiagnosticsProperty('platform', platform))..add(DiagnosticsProperty('vendor', vendor));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoWeb&&(identical(other.browserName, browserName) || other.browserName == browserName)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.vendor, vendor) || other.vendor == vendor));
}


@override
int get hashCode => Object.hash(runtimeType,browserName,platform,vendor);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DeviceInfo.web(browserName: $browserName, platform: $platform, vendor: $vendor)';
}


}

/// @nodoc
abstract mixin class $DeviceInfoWebCopyWith<$Res> implements $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoWebCopyWith(DeviceInfoWeb value, $Res Function(DeviceInfoWeb) _then) = _$DeviceInfoWebCopyWithImpl;
@useResult
$Res call({
 String browserName, String? platform, String? vendor
});




}
/// @nodoc
class _$DeviceInfoWebCopyWithImpl<$Res>
    implements $DeviceInfoWebCopyWith<$Res> {
  _$DeviceInfoWebCopyWithImpl(this._self, this._then);

  final DeviceInfoWeb _self;
  final $Res Function(DeviceInfoWeb) _then;

/// Create a copy of DeviceInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? browserName = null,Object? platform = freezed,Object? vendor = freezed,}) {
  return _then(DeviceInfoWeb(
browserName: null == browserName ? _self.browserName : browserName // ignore: cast_nullable_to_non_nullable
as String,platform: freezed == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String?,vendor: freezed == vendor ? _self.vendor : vendor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
