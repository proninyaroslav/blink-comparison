// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:blink_comparison/core/settings/model.dart' as _i21;
import 'package:blink_comparison/ui/auth/auth_page.dart' as _i2;
import 'package:blink_comparison/ui/auth/encryption_preference_page.dart'
    as _i8;
import 'package:blink_comparison/ui/auth/sign_in_page.dart' as _i14;
import 'package:blink_comparison/ui/auth/sign_up_page.dart' as _i15;
import 'package:blink_comparison/ui/camera_picker/camera_confirmation_page.dart'
    as _i5;
import 'package:blink_comparison/ui/camera_picker/camera_picker_page.dart'
    as _i6;
import 'package:blink_comparison/ui/camera_picker/model/camera_picker_metadata.dart'
    as _i19;
import 'package:blink_comparison/ui/comparison/blink_comparison_page.dart'
    as _i4;
import 'package:blink_comparison/ui/components/page_not_found.dart' as _i9;
import 'package:blink_comparison/ui/home/ref_image_list_page.dart' as _i10;
import 'package:blink_comparison/ui/model/xfile_image.dart' as _i18;
import 'package:blink_comparison/ui/preview/ref_image_preview_page.dart'
    as _i11;
import 'package:blink_comparison/ui/settings/appearance_page.dart' as _i1;
import 'package:blink_comparison/ui/settings/behavior_page.dart' as _i3;
import 'package:blink_comparison/ui/settings/camera_page.dart' as _i7;
import 'package:blink_comparison/ui/settings/settings_page.dart' as _i12;
import 'package:blink_comparison/ui/settings/settings_pages_list_page.dart'
    as _i13;
import 'package:cross_file/cross_file.dart' as _i20;
import 'package:flutter/material.dart' as _i17;

/// generated route for
/// [_i1.AppearanceSettingsPage]
class AppearanceSettingsRoute extends _i16.PageRouteInfo<void> {
  const AppearanceSettingsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AppearanceSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppearanceSettingsRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppearanceSettingsPage();
    },
  );
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i16.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i17.Key? key,
    _i17.VoidCallback? onAuthSuccess,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            onAuthSuccess: onAuthSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i16.WrappedRoute(
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

  final _i17.Key? key;

  final _i17.VoidCallback? onAuthSuccess;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onAuthSuccess: $onAuthSuccess}';
  }
}

/// generated route for
/// [_i3.BehaviorSettingsPage]
class BehaviorSettingsRoute extends _i16.PageRouteInfo<void> {
  const BehaviorSettingsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          BehaviorSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BehaviorSettingsRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i3.BehaviorSettingsPage();
    },
  );
}

/// generated route for
/// [_i4.BlinkComparisonPage]
class BlinkComparisonRoute
    extends _i16.PageRouteInfo<BlinkComparisonRouteArgs> {
  BlinkComparisonRoute({
    _i17.Key? key,
    required _i17.ImageProvider<Object> refImage,
    required _i18.XFileImage takenPhoto,
    required double aspectRatio,
    List<_i16.PageRouteInfo>? children,
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

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BlinkComparisonRouteArgs>();
      return _i16.WrappedRoute(
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

  final _i17.Key? key;

  final _i17.ImageProvider<Object> refImage;

  final _i18.XFileImage takenPhoto;

  final double aspectRatio;

  @override
  String toString() {
    return 'BlinkComparisonRouteArgs{key: $key, refImage: $refImage, takenPhoto: $takenPhoto, aspectRatio: $aspectRatio}';
  }
}

/// generated route for
/// [_i5.CameraConfirmationPage]
class CameraConfirmationRoute
    extends _i16.PageRouteInfo<CameraConfirmationRouteArgs> {
  CameraConfirmationRoute({
    _i17.Key? key,
    required _i18.XFileImage image,
    required _i17.VoidCallback onRetry,
    required _i17.ValueChanged<_i19.CameraPickerMetadata> onAccept,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          CameraConfirmationRoute.name,
          args: CameraConfirmationRouteArgs(
            key: key,
            image: image,
            onRetry: onRetry,
            onAccept: onAccept,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraConfirmationRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CameraConfirmationRouteArgs>();
      return _i5.CameraConfirmationPage(
        key: args.key,
        image: args.image,
        onRetry: args.onRetry,
        onAccept: args.onAccept,
      );
    },
  );
}

class CameraConfirmationRouteArgs {
  const CameraConfirmationRouteArgs({
    this.key,
    required this.image,
    required this.onRetry,
    required this.onAccept,
  });

  final _i17.Key? key;

  final _i18.XFileImage image;

  final _i17.VoidCallback onRetry;

  final _i17.ValueChanged<_i19.CameraPickerMetadata> onAccept;

  @override
  String toString() {
    return 'CameraConfirmationRouteArgs{key: $key, image: $image, onRetry: $onRetry, onAccept: $onAccept}';
  }
}

/// generated route for
/// [_i6.CameraPickerPage]
class CameraPickerRoute extends _i16.PageRouteInfo<CameraPickerRouteArgs> {
  CameraPickerRoute({
    _i17.Key? key,
    void Function(
      _i20.XFile,
      _i19.CameraPickerMetadata,
    )? onTakePhoto,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          CameraPickerRoute.name,
          args: CameraPickerRouteArgs(
            key: key,
            onTakePhoto: onTakePhoto,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraPickerRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CameraPickerRouteArgs>(
          orElse: () => const CameraPickerRouteArgs());
      return _i16.WrappedRoute(
          child: _i6.CameraPickerPage(
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

  final _i17.Key? key;

  final void Function(
    _i20.XFile,
    _i19.CameraPickerMetadata,
  )? onTakePhoto;

  @override
  String toString() {
    return 'CameraPickerRouteArgs{key: $key, onTakePhoto: $onTakePhoto}';
  }
}

/// generated route for
/// [_i7.CameraSettingsPage]
class CameraSettingsRoute extends _i16.PageRouteInfo<void> {
  const CameraSettingsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CameraSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraSettingsRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i7.CameraSettingsPage();
    },
  );
}

/// generated route for
/// [_i8.EncryptionPreferencePage]
class EncryptionPreferenceRoute
    extends _i16.PageRouteInfo<EncryptionPreferenceRouteArgs> {
  EncryptionPreferenceRoute({
    _i17.Key? key,
    required _i17.ValueChanged<_i21.EncryptionPreference> onClick,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          EncryptionPreferenceRoute.name,
          args: EncryptionPreferenceRouteArgs(
            key: key,
            onClick: onClick,
          ),
          initialChildren: children,
        );

  static const String name = 'EncryptionPreferenceRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EncryptionPreferenceRouteArgs>();
      return _i8.EncryptionPreferencePage(
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

  final _i17.Key? key;

  final _i17.ValueChanged<_i21.EncryptionPreference> onClick;

  @override
  String toString() {
    return 'EncryptionPreferenceRouteArgs{key: $key, onClick: $onClick}';
  }
}

/// generated route for
/// [_i9.PageNotFound]
class PageNotFountRoute extends _i16.PageRouteInfo<void> {
  const PageNotFountRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PageNotFountRoute.name,
          initialChildren: children,
        );

  static const String name = 'PageNotFountRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i9.PageNotFound();
    },
  );
}

/// generated route for
/// [_i10.RefImageListPage]
class RefImageListRoute extends _i16.PageRouteInfo<void> {
  const RefImageListRoute({List<_i16.PageRouteInfo>? children})
      : super(
          RefImageListRoute.name,
          initialChildren: children,
        );

  static const String name = 'RefImageListRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return _i16.WrappedRoute(child: const _i10.RefImageListPage());
    },
  );
}

/// generated route for
/// [_i11.RefImagePreviewPage]
class RefImagePreviewRoute
    extends _i16.PageRouteInfo<RefImagePreviewRouteArgs> {
  RefImagePreviewRoute({
    _i17.Key? key,
    required String imageId,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          RefImagePreviewRoute.name,
          args: RefImagePreviewRouteArgs(
            key: key,
            imageId: imageId,
          ),
          initialChildren: children,
        );

  static const String name = 'RefImagePreviewRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RefImagePreviewRouteArgs>();
      return _i16.WrappedRoute(
          child: _i11.RefImagePreviewPage(
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

  final _i17.Key? key;

  final String imageId;

  @override
  String toString() {
    return 'RefImagePreviewRouteArgs{key: $key, imageId: $imageId}';
  }
}

/// generated route for
/// [_i12.SettingsPage]
class SettingsRoute extends _i16.PageRouteInfo<void> {
  const SettingsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return _i16.WrappedRoute(child: const _i12.SettingsPage());
    },
  );
}

/// generated route for
/// [_i13.SettingsPagesListPage]
class SettingsRoutesListRoute extends _i16.PageRouteInfo<void> {
  const SettingsRoutesListRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SettingsRoutesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoutesListRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i13.SettingsPagesListPage();
    },
  );
}

/// generated route for
/// [_i14.SignInPage]
class SignInRoute extends _i16.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i17.Key? key,
    required _i17.VoidCallback onAuthSuccess,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            onAuthSuccess: onAuthSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignInRouteArgs>();
      return _i16.WrappedRoute(
          child: _i14.SignInPage(
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

  final _i17.Key? key;

  final _i17.VoidCallback onAuthSuccess;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onAuthSuccess: $onAuthSuccess}';
  }
}

/// generated route for
/// [_i15.SignUpPage]
class SignUpRoute extends _i16.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i17.Key? key,
    required _i17.VoidCallback onAuthSuccess,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            key: key,
            onAuthSuccess: onAuthSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignUpRouteArgs>();
      return _i16.WrappedRoute(
          child: _i15.SignUpPage(
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

  final _i17.Key? key;

  final _i17.VoidCallback onAuthSuccess;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, onAuthSuccess: $onAuthSuccess}';
  }
}
