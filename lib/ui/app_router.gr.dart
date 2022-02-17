// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:cross_file/cross_file.dart' as _i12;
import 'package:flutter/material.dart' as _i10;

import 'auth/auth_page.dart' as _i2;
import 'auth_guard.dart' as _i11;
import 'camera_picker/camera_picker_page.dart' as _i4;
import 'comparison/blink_comparison_page.dart' as _i5;
import 'home/ref_image_list_page.dart' as _i1;
import 'preview/ref_image_preview_page.dart' as _i3;
import 'settings/page/settings_pages_list_page.dart' as _i8;
import 'settings/settings.dart' as _i6;
import 'widget/page_not_found.dart' as _i7;

class AppRouter extends _i9.RootStackRouter {
  AppRouter(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    RefImageListRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RefImageListPage());
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i2.AuthPage(key: args.key, onAuthSuccess: args.onAuthSuccess));
    },
    RefImagePreviewRoute.name: (routeData) {
      final args = routeData.argsAs<RefImagePreviewRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.RefImagePreviewPage(key: args.key, imageId: args.imageId));
    },
    CameraPickerRoute.name: (routeData) {
      final args = routeData.argsAs<CameraPickerRouteArgs>(
          orElse: () => const CameraPickerRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.CameraPickerPage(
              key: args.key, onTakePhoto: args.onTakePhoto));
    },
    BlinkComparisonRoute.name: (routeData) {
      final args = routeData.argsAs<BlinkComparisonRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.BlinkComparisonPage(
              key: args.key,
              refImage: args.refImage,
              takenPhoto: args.takenPhoto,
              aspectRatio: args.aspectRatio));
    },
    SettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    },
    RouteNotFound.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PageNotFound());
    },
    SettingsRoutesListRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SettingsPagesListPage());
    },
    AppearanceSettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AppearanceSettingsPage());
    },
    CameraSettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CameraSettingsPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(RefImageListRoute.name, path: '/', guards: [authGuard]),
        _i9.RouteConfig(AuthRoute.name, path: '/auth'),
        _i9.RouteConfig(RefImagePreviewRoute.name,
            path: '/photo-preview', guards: [authGuard]),
        _i9.RouteConfig(CameraPickerRoute.name, path: '/camera-picker'),
        _i9.RouteConfig(BlinkComparisonRoute.name,
            path: '/blink-comparison', guards: [authGuard]),
        _i9.RouteConfig(SettingsRoute.name, path: '/settings', children: [
          _i9.RouteConfig(SettingsRoutesListRoute.name,
              path: '', parent: SettingsRoute.name),
          _i9.RouteConfig(AppearanceSettingsRoute.name,
              path: 'appearance', parent: SettingsRoute.name),
          _i9.RouteConfig(CameraSettingsRoute.name,
              path: 'camera', parent: SettingsRoute.name)
        ]),
        _i9.RouteConfig(RouteNotFound.name, path: '*')
      ];
}

/// generated route for
/// [_i1.RefImageListPage]
class RefImageListRoute extends _i9.PageRouteInfo<void> {
  const RefImageListRoute() : super(RefImageListRoute.name, path: '/');

  static const String name = 'RefImageListRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i9.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({_i10.Key? key, void Function()? onAuthSuccess})
      : super(AuthRoute.name,
            path: '/auth',
            args: AuthRouteArgs(key: key, onAuthSuccess: onAuthSuccess));

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, this.onAuthSuccess});

  final _i10.Key? key;

  final void Function()? onAuthSuccess;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onAuthSuccess: $onAuthSuccess}';
  }
}

/// generated route for
/// [_i3.RefImagePreviewPage]
class RefImagePreviewRoute extends _i9.PageRouteInfo<RefImagePreviewRouteArgs> {
  RefImagePreviewRoute({_i10.Key? key, required String imageId})
      : super(RefImagePreviewRoute.name,
            path: '/photo-preview',
            args: RefImagePreviewRouteArgs(key: key, imageId: imageId));

  static const String name = 'RefImagePreviewRoute';
}

class RefImagePreviewRouteArgs {
  const RefImagePreviewRouteArgs({this.key, required this.imageId});

  final _i10.Key? key;

  final String imageId;

  @override
  String toString() {
    return 'RefImagePreviewRouteArgs{key: $key, imageId: $imageId}';
  }
}

/// generated route for
/// [_i4.CameraPickerPage]
class CameraPickerRoute extends _i9.PageRouteInfo<CameraPickerRouteArgs> {
  CameraPickerRoute({_i10.Key? key, void Function(_i12.XFile)? onTakePhoto})
      : super(CameraPickerRoute.name,
            path: '/camera-picker',
            args: CameraPickerRouteArgs(key: key, onTakePhoto: onTakePhoto));

  static const String name = 'CameraPickerRoute';
}

class CameraPickerRouteArgs {
  const CameraPickerRouteArgs({this.key, this.onTakePhoto});

  final _i10.Key? key;

  final void Function(_i12.XFile)? onTakePhoto;

  @override
  String toString() {
    return 'CameraPickerRouteArgs{key: $key, onTakePhoto: $onTakePhoto}';
  }
}

/// generated route for
/// [_i5.BlinkComparisonPage]
class BlinkComparisonRoute extends _i9.PageRouteInfo<BlinkComparisonRouteArgs> {
  BlinkComparisonRoute(
      {_i10.Key? key,
      required _i10.ImageProvider<Object> refImage,
      required _i10.ImageProvider<Object> takenPhoto,
      required double aspectRatio})
      : super(BlinkComparisonRoute.name,
            path: '/blink-comparison',
            args: BlinkComparisonRouteArgs(
                key: key,
                refImage: refImage,
                takenPhoto: takenPhoto,
                aspectRatio: aspectRatio));

  static const String name = 'BlinkComparisonRoute';
}

class BlinkComparisonRouteArgs {
  const BlinkComparisonRouteArgs(
      {this.key,
      required this.refImage,
      required this.takenPhoto,
      required this.aspectRatio});

  final _i10.Key? key;

  final _i10.ImageProvider<Object> refImage;

  final _i10.ImageProvider<Object> takenPhoto;

  final double aspectRatio;

  @override
  String toString() {
    return 'BlinkComparisonRouteArgs{key: $key, refImage: $refImage, takenPhoto: $takenPhoto, aspectRatio: $aspectRatio}';
  }
}

/// generated route for
/// [_i6.SettingsPage]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute({List<_i9.PageRouteInfo>? children})
      : super(SettingsRoute.name, path: '/settings', initialChildren: children);

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i7.PageNotFound]
class RouteNotFound extends _i9.PageRouteInfo<void> {
  const RouteNotFound() : super(RouteNotFound.name, path: '*');

  static const String name = 'RouteNotFound';
}

/// generated route for
/// [_i8.SettingsPagesListPage]
class SettingsRoutesListRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoutesListRoute()
      : super(SettingsRoutesListRoute.name, path: '');

  static const String name = 'SettingsRoutesListRoute';
}

/// generated route for
/// [_i6.AppearanceSettingsPage]
class AppearanceSettingsRoute extends _i9.PageRouteInfo<void> {
  const AppearanceSettingsRoute()
      : super(AppearanceSettingsRoute.name, path: 'appearance');

  static const String name = 'AppearanceSettingsRoute';
}

/// generated route for
/// [_i6.CameraSettingsPage]
class CameraSettingsRoute extends _i9.PageRouteInfo<void> {
  const CameraSettingsRoute() : super(CameraSettingsRoute.name, path: 'camera');

  static const String name = 'CameraSettingsRoute';
}
