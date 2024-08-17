// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:blink_comparison/ui/auth/auth_page.dart' as _i2;
import 'package:blink_comparison/ui/camera_picker/camera_picker_page.dart'
    as _i4;
import 'package:blink_comparison/ui/comparison/blink_comparison_page.dart'
    as _i3;
import 'package:blink_comparison/ui/home/ref_image_list_page.dart' as _i7;
import 'package:blink_comparison/ui/preview/ref_image_preview_page.dart' as _i8;
import 'package:blink_comparison/ui/settings/page/appearance_page.dart' as _i1;
import 'package:blink_comparison/ui/settings/page/camera_page.dart' as _i5;
import 'package:blink_comparison/ui/settings/page/settings_pages_list_page.dart'
    as _i10;
import 'package:blink_comparison/ui/settings/settings_page.dart' as _i9;
import 'package:blink_comparison/ui/widget/page_not_found.dart' as _i6;
import 'package:cross_file/cross_file.dart' as _i13;
import 'package:flutter/material.dart' as _i12;

/// generated route for
/// [_i1.AppearanceSettingsPage]
class AppearanceSettingsRoute extends _i11.PageRouteInfo<void> {
  const AppearanceSettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AppearanceSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceSettingsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppearanceSettingsPage();
    },
  );
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i11.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i12.Key? key,
    _i12.VoidCallback? onAuthSuccess,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            onAuthSuccess: onAuthSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i11.WrappedRoute(
          child: _i2.AuthPage(
        key: args.key,
        onAuthSuccess: args.onAuthSuccess,
      ));
    },
  );
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.onAuthSuccess,
  });

  final _i12.Key? key;

  final _i12.VoidCallback? onAuthSuccess;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onAuthSuccess: $onAuthSuccess}';
  }
}

/// generated route for
/// [_i3.BlinkComparisonPage]
class BlinkComparisonRoute
    extends _i11.PageRouteInfo<BlinkComparisonRouteArgs> {
  BlinkComparisonRoute({
    _i12.Key? key,
    required _i12.ImageProvider<Object> refImage,
    required _i12.ImageProvider<Object> takenPhoto,
    required double aspectRatio,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          BlinkComparisonRoute.name,
          args: BlinkComparisonRouteArgs(
            key: key,
            refImage: refImage,
            takenPhoto: takenPhoto,
            aspectRatio: aspectRatio,
          ),
          initialChildren: children,
        );

  static const String name = 'BlinkComparisonRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BlinkComparisonRouteArgs>();
      return _i11.WrappedRoute(
          child: _i3.BlinkComparisonPage(
        key: args.key,
        refImage: args.refImage,
        takenPhoto: args.takenPhoto,
        aspectRatio: args.aspectRatio,
      ));
    },
  );
}

class BlinkComparisonRouteArgs {
  const BlinkComparisonRouteArgs({
    this.key,
    required this.refImage,
    required this.takenPhoto,
    required this.aspectRatio,
  });

  final _i12.Key? key;

  final _i12.ImageProvider<Object> refImage;

  final _i12.ImageProvider<Object> takenPhoto;

  final double aspectRatio;

  @override
  String toString() {
    return 'BlinkComparisonRouteArgs{key: $key, refImage: $refImage, takenPhoto: $takenPhoto, aspectRatio: $aspectRatio}';
  }
}

/// generated route for
/// [_i4.CameraPickerPage]
class CameraPickerRoute extends _i11.PageRouteInfo<CameraPickerRouteArgs> {
  CameraPickerRoute({
    _i12.Key? key,
    _i12.ValueChanged<_i13.XFile>? onTakePhoto,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          CameraPickerRoute.name,
          args: CameraPickerRouteArgs(
            key: key,
            onTakePhoto: onTakePhoto,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraPickerRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CameraPickerRouteArgs>(
          orElse: () => const CameraPickerRouteArgs());
      return _i11.WrappedRoute(
          child: _i4.CameraPickerPage(
        key: args.key,
        onTakePhoto: args.onTakePhoto,
      ));
    },
  );
}

class CameraPickerRouteArgs {
  const CameraPickerRouteArgs({
    this.key,
    this.onTakePhoto,
  });

  final _i12.Key? key;

  final _i12.ValueChanged<_i13.XFile>? onTakePhoto;

  @override
  String toString() {
    return 'CameraPickerRouteArgs{key: $key, onTakePhoto: $onTakePhoto}';
  }
}

/// generated route for
/// [_i5.CameraSettingsPage]
class CameraSettingsRoute extends _i11.PageRouteInfo<void> {
  const CameraSettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CameraSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraSettingsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.CameraSettingsPage();
    },
  );
}

/// generated route for
/// [_i6.PageNotFound]
class RouteNotFound extends _i11.PageRouteInfo<void> {
  const RouteNotFound({List<_i11.PageRouteInfo>? children})
      : super(
          RouteNotFound.name,
          initialChildren: children,
        );

  static const String name = 'RouteNotFound';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.PageNotFound();
    },
  );
}

/// generated route for
/// [_i7.RefImageListPage]
class RefImageListRoute extends _i11.PageRouteInfo<void> {
  const RefImageListRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RefImageListRoute.name,
          initialChildren: children,
        );

  static const String name = 'RefImageListRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return _i11.WrappedRoute(child: const _i7.RefImageListPage());
    },
  );
}

/// generated route for
/// [_i8.RefImagePreviewPage]
class RefImagePreviewRoute
    extends _i11.PageRouteInfo<RefImagePreviewRouteArgs> {
  RefImagePreviewRoute({
    _i12.Key? key,
    required String imageId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          RefImagePreviewRoute.name,
          args: RefImagePreviewRouteArgs(
            key: key,
            imageId: imageId,
          ),
          initialChildren: children,
        );

  static const String name = 'RefImagePreviewRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RefImagePreviewRouteArgs>();
      return _i11.WrappedRoute(
          child: _i8.RefImagePreviewPage(
        key: args.key,
        imageId: args.imageId,
      ));
    },
  );
}

class RefImagePreviewRouteArgs {
  const RefImagePreviewRouteArgs({
    this.key,
    required this.imageId,
  });

  final _i12.Key? key;

  final String imageId;

  @override
  String toString() {
    return 'RefImagePreviewRouteArgs{key: $key, imageId: $imageId}';
  }
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return _i11.WrappedRoute(child: const _i9.SettingsPage());
    },
  );
}

/// generated route for
/// [_i10.SettingsPagesListPage]
class SettingsRoutesListRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoutesListRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsRoutesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoutesListRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.SettingsPagesListPage();
    },
  );
}
