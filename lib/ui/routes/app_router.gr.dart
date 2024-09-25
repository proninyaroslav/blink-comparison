// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:blink_comparison/core/settings/model.dart' as _i18;
import 'package:blink_comparison/ui/auth/auth_page.dart' as _i2;
import 'package:blink_comparison/ui/auth/encryption_preference_page.dart'
    as _i7;
import 'package:blink_comparison/ui/auth/sign_in_page.dart' as _i13;
import 'package:blink_comparison/ui/auth/sign_up_page.dart' as _i14;
import 'package:blink_comparison/ui/camera_picker/camera_picker_page.dart'
    as _i5;
import 'package:blink_comparison/ui/comparison/blink_comparison_page.dart'
    as _i4;
import 'package:blink_comparison/ui/components/page_not_found.dart' as _i8;
import 'package:blink_comparison/ui/home/ref_image_list_page.dart' as _i9;
import 'package:blink_comparison/ui/preview/ref_image_preview_page.dart'
    as _i10;
import 'package:blink_comparison/ui/settings/appearance_page.dart' as _i1;
import 'package:blink_comparison/ui/settings/behavior_page.dart' as _i3;
import 'package:blink_comparison/ui/settings/camera_page.dart' as _i6;
import 'package:blink_comparison/ui/settings/settings_page.dart' as _i11;
import 'package:blink_comparison/ui/settings/settings_pages_list_page.dart'
    as _i12;
import 'package:cross_file/cross_file.dart' as _i17;
import 'package:flutter/material.dart' as _i16;

/// generated route for
/// [_i1.AppearanceSettingsPage]
class AppearanceSettingsRoute extends _i15.PageRouteInfo<void> {
  const AppearanceSettingsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AppearanceSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceSettingsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppearanceSettingsPage();
    },
  );
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i15.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i16.Key? key,
    _i16.VoidCallback? onAuthSuccess,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            onAuthSuccess: onAuthSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i15.WrappedRoute(
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

  final _i16.Key? key;

  final _i16.VoidCallback? onAuthSuccess;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onAuthSuccess: $onAuthSuccess}';
  }
}

/// generated route for
/// [_i3.BehaviorSettingsPage]
class BehaviorSettingsRoute extends _i15.PageRouteInfo<void> {
  const BehaviorSettingsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          BehaviorSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BehaviorSettingsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.BehaviorSettingsPage();
    },
  );
}

/// generated route for
/// [_i4.BlinkComparisonPage]
class BlinkComparisonRoute
    extends _i15.PageRouteInfo<BlinkComparisonRouteArgs> {
  BlinkComparisonRoute({
    _i16.Key? key,
    required _i16.ImageProvider<Object> refImage,
    required _i16.ImageProvider<Object> takenPhoto,
    required double aspectRatio,
    List<_i15.PageRouteInfo>? children,
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

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BlinkComparisonRouteArgs>();
      return _i15.WrappedRoute(
          child: _i4.BlinkComparisonPage(
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

  final _i16.Key? key;

  final _i16.ImageProvider<Object> refImage;

  final _i16.ImageProvider<Object> takenPhoto;

  final double aspectRatio;

  @override
  String toString() {
    return 'BlinkComparisonRouteArgs{key: $key, refImage: $refImage, takenPhoto: $takenPhoto, aspectRatio: $aspectRatio}';
  }
}

/// generated route for
/// [_i5.CameraPickerPage]
class CameraPickerRoute extends _i15.PageRouteInfo<CameraPickerRouteArgs> {
  CameraPickerRoute({
    _i16.Key? key,
    _i16.ValueChanged<_i17.XFile>? onTakePhoto,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CameraPickerRoute.name,
          args: CameraPickerRouteArgs(
            key: key,
            onTakePhoto: onTakePhoto,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraPickerRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CameraPickerRouteArgs>(
          orElse: () => const CameraPickerRouteArgs());
      return _i15.WrappedRoute(
          child: _i5.CameraPickerPage(
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

  final _i16.Key? key;

  final _i16.ValueChanged<_i17.XFile>? onTakePhoto;

  @override
  String toString() {
    return 'CameraPickerRouteArgs{key: $key, onTakePhoto: $onTakePhoto}';
  }
}

/// generated route for
/// [_i6.CameraSettingsPage]
class CameraSettingsRoute extends _i15.PageRouteInfo<void> {
  const CameraSettingsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CameraSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraSettingsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i6.CameraSettingsPage();
    },
  );
}

/// generated route for
/// [_i7.EncryptionPreferencePage]
class EncryptionPreferenceRoute
    extends _i15.PageRouteInfo<EncryptionPreferenceRouteArgs> {
  EncryptionPreferenceRoute({
    _i16.Key? key,
    required _i16.ValueChanged<_i18.EncryptionPreference> onClick,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          EncryptionPreferenceRoute.name,
          args: EncryptionPreferenceRouteArgs(
            key: key,
            onClick: onClick,
          ),
          initialChildren: children,
        );

  static const String name = 'EncryptionPreferenceRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EncryptionPreferenceRouteArgs>();
      return _i7.EncryptionPreferencePage(
        key: args.key,
        onClick: args.onClick,
      );
    },
  );
}

class EncryptionPreferenceRouteArgs {
  const EncryptionPreferenceRouteArgs({
    this.key,
    required this.onClick,
  });

  final _i16.Key? key;

  final _i16.ValueChanged<_i18.EncryptionPreference> onClick;

  @override
  String toString() {
    return 'EncryptionPreferenceRouteArgs{key: $key, onClick: $onClick}';
  }
}

/// generated route for
/// [_i8.PageNotFound]
class PageNotFountRoute extends _i15.PageRouteInfo<void> {
  const PageNotFountRoute({List<_i15.PageRouteInfo>? children})
      : super(
          PageNotFountRoute.name,
          initialChildren: children,
        );

  static const String name = 'PageNotFountRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i8.PageNotFound();
    },
  );
}

/// generated route for
/// [_i9.RefImageListPage]
class RefImageListRoute extends _i15.PageRouteInfo<void> {
  const RefImageListRoute({List<_i15.PageRouteInfo>? children})
      : super(
          RefImageListRoute.name,
          initialChildren: children,
        );

  static const String name = 'RefImageListRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return _i15.WrappedRoute(child: const _i9.RefImageListPage());
    },
  );
}

/// generated route for
/// [_i10.RefImagePreviewPage]
class RefImagePreviewRoute
    extends _i15.PageRouteInfo<RefImagePreviewRouteArgs> {
  RefImagePreviewRoute({
    _i16.Key? key,
    required String imageId,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          RefImagePreviewRoute.name,
          args: RefImagePreviewRouteArgs(
            key: key,
            imageId: imageId,
          ),
          initialChildren: children,
        );

  static const String name = 'RefImagePreviewRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RefImagePreviewRouteArgs>();
      return _i15.WrappedRoute(
          child: _i10.RefImagePreviewPage(
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

  final _i16.Key? key;

  final String imageId;

  @override
  String toString() {
    return 'RefImagePreviewRouteArgs{key: $key, imageId: $imageId}';
  }
}

/// generated route for
/// [_i11.SettingsPage]
class SettingsRoute extends _i15.PageRouteInfo<void> {
  const SettingsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return _i15.WrappedRoute(child: const _i11.SettingsPage());
    },
  );
}

/// generated route for
/// [_i12.SettingsPagesListPage]
class SettingsRoutesListRoute extends _i15.PageRouteInfo<void> {
  const SettingsRoutesListRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SettingsRoutesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoutesListRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.SettingsPagesListPage();
    },
  );
}

/// generated route for
/// [_i13.SignInPage]
class SignInRoute extends _i15.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i16.Key? key,
    required _i16.VoidCallback onAuthSuccess,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            onAuthSuccess: onAuthSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignInRouteArgs>();
      return _i15.WrappedRoute(
          child: _i13.SignInPage(
        key: args.key,
        onAuthSuccess: args.onAuthSuccess,
      ));
    },
  );
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.onAuthSuccess,
  });

  final _i16.Key? key;

  final _i16.VoidCallback onAuthSuccess;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onAuthSuccess: $onAuthSuccess}';
  }
}

/// generated route for
/// [_i14.SignUpPage]
class SignUpRoute extends _i15.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i16.Key? key,
    required _i16.VoidCallback onAuthSuccess,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            key: key,
            onAuthSuccess: onAuthSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignUpRouteArgs>();
      return _i15.WrappedRoute(
          child: _i14.SignUpPage(
        key: args.key,
        onAuthSuccess: args.onAuthSuccess,
      ));
    },
  );
}

class SignUpRouteArgs {
  const SignUpRouteArgs({
    this.key,
    required this.onAuthSuccess,
  });

  final _i16.Key? key;

  final _i16.VoidCallback onAuthSuccess;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, onAuthSuccess: $onAuthSuccess}';
  }
}
