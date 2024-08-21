// Copyright (C) 2022-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
//
// This file is part of Blink Comparison.
//
// Blink Comparison is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Blink Comparison is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Blink Comparison.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:io' as io;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

part 'platform_info.freezed.dart';

abstract class PlatformInfo {
  /// Path to a directory where the application may place data that is
  /// user-generated, or that cannot otherwise be recreated by your application.
  Future<String> getApplicationDocumentsDirectory();

  Future<io.Directory> getApplicationDocumentsDirectoryFile();

  bool get isAndroid;

  bool get isIOS;

  bool get isLinux;

  bool get isWindows;

  bool get isMacOS;

  bool get isWeb;

  Future<AppInfo> get appInfo;

  Future<DeviceInfo> get deviceInfo;

  Future<String?> get currentLocale;
}

@freezed
class AppInfo with _$AppInfo {
  const factory AppInfo({
    required String packageName,
    required String appName,
    required String version,
    required String buildNumber,
  }) = _AppInfo;
}

@freezed
class DeviceInfo with _$DeviceInfo {
  const factory DeviceInfo.unknown() = UnknownDeviceInfo;

  const factory DeviceInfo.android({
    String? systemVersion,

    /// An ordered list of ABIs supported by this device.
    @Default([]) List<String?> supportedAbis,

    /// The consumer-visible brand with which
    /// the product/hardware will be associated, if any.
    String? brand,

    /// The name of the industrial design.
    String? device,

    /// The end-user-visible name for the end product.
    String? model,

    /// The name of the hardware (from the kernel command line or /proc).
    String? hardware,

    /// The name of the overall product.
    String? product,
  }) = AndroidDeviceInfo;

  const factory DeviceInfo.iOS({
    String? deviceName,
    String? deviceModel,
    String? systemName,
    String? systemVersion,
  }) = IOSDeviceInfo;

  const factory DeviceInfo.linux({
    required String osName,
    required String kernelVersion,
    String? osVersion,
  }) = LinuxDeviceInfo;

  const factory DeviceInfo.windows({
    required String osVersion,
  }) = WindowsDeviceInfo;

  const factory DeviceInfo.macOS({
    required String arch,
    required String kernelVersion,
    required String osVersion,
    required String model,
  }) = MacOSDeviceInfo;

  const factory DeviceInfo.web({
    required String browserName,

    /// A DOMString identifying the platform on which the browser is running
    String? platform,

    /// The vendor name of the current browser
    String? vendor,
  }) = WebDeviceInfo;
}

@Injectable(as: PlatformInfo)
class PlatformInfoImpl implements PlatformInfo {
  @override
  Future<String> getApplicationDocumentsDirectory() => path_provider
      .getApplicationDocumentsDirectory()
      .then((value) => value.path);

  @override
  Future<io.Directory> getApplicationDocumentsDirectoryFile() =>
      path_provider.getApplicationDocumentsDirectory();

  @override
  bool get isAndroid => io.Platform.isAndroid;

  @override
  bool get isIOS => io.Platform.isIOS;

  @override
  bool get isLinux => io.Platform.isLinux;

  @override
  bool get isMacOS => io.Platform.isMacOS;

  @override
  bool get isWindows => io.Platform.isWindows;

  @override
  bool get isWeb => kIsWeb;

  @override
  Future<AppInfo> get appInfo async {
    final info = await PackageInfo.fromPlatform();
    return AppInfo(
      packageName: info.packageName,
      appName: info.appName,
      version: info.version,
      buildNumber: info.buildNumber,
    );
  }

  @override
  Future<DeviceInfo> get deviceInfo async {
    final plugin = DeviceInfoPlugin();
    if (isAndroid) {
      final androidInfo = await plugin.androidInfo;
      return DeviceInfo.android(
        systemVersion: androidInfo.version.release,
        supportedAbis: androidInfo.supportedAbis,
        brand: androidInfo.brand,
        device: androidInfo.device,
        model: androidInfo.model,
        hardware: androidInfo.hardware,
        product: androidInfo.product,
      );
    } else if (isIOS) {
      final iOSInfo = await plugin.iosInfo;
      return DeviceInfo.iOS(
        deviceName: iOSInfo.name,
        deviceModel: iOSInfo.model,
        systemName: iOSInfo.systemName,
        systemVersion: iOSInfo.systemVersion,
      );
    } else if (isLinux) {
      final linuxInfo = await plugin.linuxInfo;
      return DeviceInfo.linux(
        osName: linuxInfo.name,
        kernelVersion: io.Platform.operatingSystemVersion,
        osVersion: linuxInfo.version,
      );
    } else if (isWindows) {
      return DeviceInfo.windows(
        osVersion: io.Platform.operatingSystemVersion,
      );
    } else if (isMacOS) {
      final macOsInfo = await plugin.macOsInfo;
      return DeviceInfo.macOS(
        arch: macOsInfo.arch,
        kernelVersion: macOsInfo.kernelVersion,
        osVersion: macOsInfo.osRelease,
        model: macOsInfo.model,
      );
    } else if (isWeb) {
      final webInfo = await plugin.webBrowserInfo;
      return DeviceInfo.web(
        browserName: webInfo.browserName.name,
        platform: webInfo.platform,
        vendor: webInfo.vendor,
      );
    }

    return const DeviceInfo.unknown();
  }

  // TODO: Windows/macOS support
  @override
  Future<String?> get currentLocale async {
    final locale = await Devicelocale.currentLocale;
    // Some returned locales have the sharp (#) character in the subtag,
    // for example en_US_#u-fw-mon-mu-celsius.
    // It needs to be removed to bring it to Unicode format.
    return locale?.replaceAll('#', '');
  }
}
