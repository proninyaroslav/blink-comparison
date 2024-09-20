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

import 'dart:async';

import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/ui/camera_picker/components/confirmation_dialog.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_controller_wrapper.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_initialization_error.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_provider_cubit.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_provider_state.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:multi_border/multi_border.dart';
import 'package:open_settings_plus/open_settings_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../injector.dart';
import '../../../locale.dart';
import '../../../logger.dart';

class CameraView extends StatefulWidget {
  final Widget? overlayChild;
  final ValueChanged<XFile>? onTakePhoto;
  final bool showConfirmationDialog;

  const CameraView({
    super.key,
    this.overlayChild,
    this.onTakePhoto,
    this.showConfirmationDialog = true,
  });

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  @override
  void initState() {
    super.initState();

    WakelockPlus.enable();
    context.read<CameraProviderCubit>().loadAvailableCameras();
  }

  @override
  void dispose() {
    super.dispose();

    WakelockPlus.disable();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraProviderCubit, CameraProviderState>(
      builder: (context, state) {
        return switch (state) {
          CameraProviderStateLoaded(
            :final primaryCamera,
            :final otherCameras,
            :final enableFlashByDefault
          ) =>
            _Preview(
              camera: primaryCamera,
              otherCameras: otherCameras,
              overlayChild: widget.overlayChild,
              onTakePhoto: widget.onTakePhoto,
              enableFlashByDefault: enableFlashByDefault,
              showConfirmationDialog: widget.showConfirmationDialog,
            ),
          CameraProviderStateLoadFailed(:final error, :final stackTrace) =>
            _OpenCameraError(
              error: CameraInitializationError.exception(
                exception: error,
                stackTrace: stackTrace,
              ),
            ),
          _ => const CircularProgressIndicator(),
        };
      },
    );
  }
}

class _Preview extends StatefulWidget {
  final CameraDescription camera;
  final List<CameraDescription> otherCameras;
  final Widget? overlayChild;
  final ValueChanged<XFile>? onTakePhoto;
  final bool enableFlashByDefault;
  final bool showConfirmationDialog;

  const _Preview({
    required this.camera,
    required this.otherCameras,
    this.overlayChild,
    this.onTakePhoto,
    required this.enableFlashByDefault,
    required this.showConfirmationDialog,
  });

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<_Preview> with WidgetsBindingObserver {
  CameraControllerWrapper? _controller;
  final _takePictureFlashKey = GlobalKey<_TakePictureFlashState>();
  late final _audioPlayer = AudioPlayer();
  CameraInitializationError? _initializeError;
  late bool _keepFlash = widget.enableFlashByDefault;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;
  double _currentScale = 1.0;
  double _baseScale = 1.0;
  int _pointers = 0;
  XFile? _capturedPhoto;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initController();
    });
  }

  @override
  void didUpdateWidget(covariant _Preview oldWidget) {
    if (oldWidget.camera != widget.camera) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await _disposeController();
        await _initController();
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused) {
      await _disposeController();
    } else if (state == AppLifecycleState.resumed) {
      await _initController();
    }
  }

  @override
  void dispose() {
    super.dispose();

    WidgetsBinding.instance.removeObserver(this);

    _disposeController();
    _audioPlayer.dispose();
  }

  Future<void> _initController() async {
    if (_controller != null) {
      return;
    }
    _initializeError = null;
    _controller = CameraControllerWrapper(
      widget.camera,
      ResolutionPreset.max,
      enableAudio: false,
    );
    CameraControllerWrapper cameraController = _controller!;
    cameraController.addListener(() {
      if (cameraController.value.hasError) {
        final errorDescription = cameraController.value.errorDescription;
        if (errorDescription != null) {
          _errorSnackbar(
            context,
            msg: S.of(context).cameraErrorReason(errorDescription),
            report: true,
            error: errorDescription,
          );
        }
      }
      if (mounted) {
        setState(() {});
      }
    });
    try {
      await cameraController.initialize();
    } on CameraException catch (e, stackTrace) {
      log().e(
        'Unable to initialize the camera',
        error: e,
        stackTrace: stackTrace,
      );

      if (mounted) {
        setState(() {
          _initializeError = switch (e.code) {
            'CameraAccessDenied' =>
              const CameraInitializationError.accessDenied(),
            _ => CameraInitializationError.exception(
                exception: e,
                stackTrace: stackTrace,
              )
          };
        });
      }
      return;
    } on FlutterError catch (e, stackTrace) {
      log().e(
        'Unable to initialize the camera',
        error: e,
        stackTrace: stackTrace,
      );
    }

    try {
      await _switchFlash(_keepFlash);
      _maxAvailableZoom = await cameraController.getMaxZoomLevel();
      _minAvailableZoom = await cameraController.getMinZoomLevel();
    } on CameraException catch (e, stackTrace) {
      log().e('Unable to initialize the camera',
          error: e, stackTrace: stackTrace);
    }

    if (mounted) {
      setState(() {});
    }
  }

  Future<void> _disposeController() async {
    await _controller?.dispose();
    _controller = null;
  }

  Future<void> _openAppPermisisons() async {
    await switch (OpenSettingsPlus.shared) {
      OpenSettingsPlusAndroid settings => settings.applicationDetails(),
      OpenSettingsPlusIOS settings => settings.privacy(),
      _ => throw Exception('Platform not supported'),
    };
  }

  @override
  Widget build(BuildContext context) {
    if (_initializeError != null) {
      return _OpenCameraError(
        error: _initializeError!,
        onOpenAppPermissions: () async {
          await _openAppPermisisons();
        },
      );
    } else if (!_initialized) {
      return Container();
    } else if (_capturedPhoto != null) {
      if (widget.showConfirmationDialog) {
        return ConfirmationDialog(
          photoFile: _capturedPhoto!,
          onRetry: () {
            setState(() {
              _capturedPhoto = null;
            });
          },
          onAccept: () {
            if (_capturedPhoto != null) {
              widget.onTakePhoto?.call(_capturedPhoto!);
            }
          },
        );
      } else {
        widget.onTakePhoto?.call(_capturedPhoto!);
      }
    }

    CameraController cameraController = _controller!;

    return Listener(
      onPointerDown: (_) => _pointers++,
      onPointerUp: (_) => _pointers--,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return GestureDetector(
                  onScaleStart: _handleScaleStart,
                  onScaleUpdate: _handleScaleUpdate,
                  onTapDown: (details) {
                    _onViewFinderTap(details, constraints);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: CameraPreview(
                    cameraController,
                    child: widget.overlayChild,
                  ),
                );
              },
            ),
          ),
          _TakePictureFlash(
            key: _takePictureFlashKey,
          ),
          PortraitOnlyWidget(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: _ButtonBar(
                  showFlipCamera: widget.otherCameras.isNotEmpty,
                  initialFlashEnabled: _keepFlash,
                  onFlipCamera: _onFlipCamera,
                  onSwitchFlashButton: _onSwitchFlashButton,
                  onTakePhoto: _onTakePhoto,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleScaleStart(ScaleStartDetails details) {
    _baseScale = _currentScale;
  }

  Future<void> _handleScaleUpdate(ScaleUpdateDetails details) async {
    // When there are not exactly two fingers on screen don't scale
    if (_controller == null || _pointers != 2) {
      return;
    }

    _currentScale = (_baseScale * details.scale)
        .clamp(_minAvailableZoom, _maxAvailableZoom);

    await _controller!.setZoomLevel(_currentScale);
  }

  void _onFlipCamera() {
    final camera = widget.otherCameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front,
      orElse: () => widget.otherCameras.first,
    );
    context.read<CameraProviderCubit>().switchCamera(camera);
  }

  Future<void> _onSwitchFlashButton(bool enable) async {
    _keepFlash = enable;
    await _switchFlash(enable);
  }

  Future<void> _switchFlash(bool enable) async {
    if (!_initialized) {
      return;
    }

    try {
      await _controller?.setFlashMode(
        enable ? FlashMode.torch : FlashMode.off,
      );
    } on CameraException catch (e, stackTrace) {
      final c = context;
      if (c.mounted) {
        _errorSnackbar(
          c,
          msg: S.of(c).switchCameraFlashError,
          report: true,
          reportMsg: 'Failed to switch flash mode',
          error: e,
          stackTrace: stackTrace,
        );
      }
    }
  }

  void _onViewFinderTap(TapDownDetails details, BoxConstraints constraints) {
    if (_controller == null) {
      return;
    }

    final CameraController cameraController = _controller!;

    final offset = Offset(
      details.localPosition.dx / constraints.maxWidth,
      details.localPosition.dy / constraints.maxHeight,
    );
    try {
      cameraController.setExposurePoint(offset);
      cameraController.setFocusPoint(offset);
    } on CameraException catch (e, stackTrace) {
      log().e('Unable to change focus point', error: e, stackTrace: stackTrace);
    }
  }

  Future<void> _onTakePhoto() async {
    final file = await _takePicture();
    if (file != null) {
      setState(() {
        _capturedPhoto = file;
      });
    }
  }

  Future<XFile?> _takePicture() async {
    if (!_initialized) {
      _errorSnackbar(context, msg: S.of(context).noSelectedCameraError);
      return null;
    }

    CameraController cameraController = _controller!;

    if (cameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    _playCameraShooter();
    _takePictureFlashKey.currentState?.startFlash();

    try {
      return await cameraController.takePicture();
    } on CameraException catch (e, stackTrace) {
      _errorSnackbar(
        context,
        msg: S.of(context).takePhotoError,
        report: true,
        reportMsg: 'Unable to take a photo',
        error: e,
        stackTrace: stackTrace,
      );
      return null;
    }
  }

  Future<void> _playCameraShooter() async {
    try {
      await _audioPlayer.setAsset('assets/audio/camera_shutter.mp3');
      await _audioPlayer.play();
    } on PlayerInterruptedException {
      log().e('Unable to play shutter sound');
    }
  }

  bool get _initialized =>
      _controller != null &&
      !_controller!.disposed &&
      _controller!.value.isInitialized;
}

class _FlashButton extends StatefulWidget {
  final ValueChanged<bool>? onSwitch;
  final bool initialFlashEnabled;

  const _FlashButton({
    this.onSwitch,
    required this.initialFlashEnabled,
  });

  @override
  State<_FlashButton> createState() => _FlashButtonState();
}

class _FlashButtonState extends State<_FlashButton> {
  late bool _enabled = widget.initialFlashEnabled;

  @override
  Widget build(BuildContext context) {
    return PortraitOnlyWidget(
      direction: RotateDirection.clockwise,
      child: Material(
        shape: const CircleBorder(),
        color: Colors.black38,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            _enabled = !_enabled;
            widget.onSwitch?.call(_enabled);
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              _enabled ? Icons.flash_on : Icons.flash_off,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _FlipCameraButton extends StatelessWidget {
  final bool show;
  final VoidCallback? onTap;

  const _FlipCameraButton({
    required this.show,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (!show) {
      return const SizedBox(
        width: 40.0,
        height: 40.0,
      );
    }
    return PortraitOnlyWidget(
      direction: RotateDirection.clockwise,
      child: Material(
        shape: const CircleBorder(),
        color: Colors.black38,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              getIt<PlatformInfo>().isAndroid
                  ? Icons.flip_camera_android
                  : Icons.flip_camera_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _TakePhotoButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _TakePhotoButton({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      color: Colors.black38,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 80.0,
          height: 80.0,
          child: Center(
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: MultiBorderDecoration(
                borderSides: [
                  BorderSide(
                    color: Theme.of(context).colorScheme.surface,
                    width: 3.0,
                  ),
                  BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 4.0,
                  ),
                ],
                innerRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _OpenCameraError extends StatelessWidget {
  final CameraInitializationError error;
  final VoidCallback? onOpenAppPermissions;

  const _OpenCameraError({
    required this.error,
    this.onOpenAppPermissions,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline_rounded,
              color: theme.colorScheme.error,
              size: 64,
            ),
            const SizedBox(height: 8.0),
            Text(
              switch (error) {
                CameraInitializationErrorAccessDenied() =>
                  S.of(context).cameraAccessDenied,
                CameraInitializationErrorException() =>
                  S.of(context).openCameraError,
              },
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.error,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () {
                switch (error) {
                  case CameraInitializationErrorAccessDenied():
                    onOpenAppPermissions?.call();
                  case CameraInitializationErrorException(
                      :final exception,
                      :final stackTrace
                    ):
                    _errorDialog(
                      context,
                      reportMsg: 'Unable to initialize the camera',
                      exception: exception,
                      stackTrace: stackTrace,
                    );
                }
              },
              child: switch (error) {
                CameraInitializationErrorAccessDenied() =>
                  Text(S.of(context).openAppSettings),
                CameraInitializationErrorException() =>
                  Text(S.of(context).showError),
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _TakePictureFlash extends StatefulWidget {
  const _TakePictureFlash({super.key});

  @override
  _TakePictureFlashState createState() => _TakePictureFlashState();
}

class _TakePictureFlashState extends State<_TakePictureFlash>
    with SingleTickerProviderStateMixin {
  static const _animationDuration = Duration(milliseconds: 100);
  late final _controller = AnimationController(
    duration: _animationDuration,
    vsync: this,
  )..addStatusListener(_statusListener);
  bool _hide = true;

  late final _opacityAnimation = Tween(
    begin: 0.0,
    end: 0.5,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ),
  );

  void _statusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _controller.reverse();
    } else if (status == AnimationStatus.reverse) {
      setState(() {
        _hide = true;
      });
    }
  }

  void startFlash() {
    setState(() {
      _hide = false;
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.removeStatusListener(_statusListener);
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: _hide,
      child: FadeTransition(
        opacity: _opacityAnimation,
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}

class _ButtonBar extends StatelessWidget {
  final VoidCallback? onFlipCamera;
  final ValueChanged<bool>? onSwitchFlashButton;
  final VoidCallback? onTakePhoto;
  final bool showFlipCamera;
  final bool initialFlashEnabled;

  const _ButtonBar({
    this.onFlipCamera,
    this.onSwitchFlashButton,
    this.onTakePhoto,
    required this.showFlipCamera,
    required this.initialFlashEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        return SizedBox(
          width: _getAdaptiveWidth(sizingInfo),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _FlipCameraButton(
                show: showFlipCamera,
                onTap: onFlipCamera,
              ),
              _TakePhotoButton(
                onTap: onTakePhoto,
              ),
              _FlashButton(
                onSwitch: onSwitchFlashButton,
                initialFlashEnabled: initialFlashEnabled,
              ),
            ],
          ),
        );
      },
    );
  }

  double? _getAdaptiveWidth(SizingInformation sizingInfo) {
    if (sizingInfo.isMobile) {
      return null;
    } else {
      return sizingInfo.screenSize.width / 3;
    }
  }
}

void _errorDialog(
  BuildContext context, {
  required String reportMsg,
  Object? exception,
  StackTrace? stackTrace,
}) {
  log().e(reportMsg, error: exception, stackTrace: stackTrace);

  final reportCubit = context.read<ErrorReportCubit>();
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(S.of(context).error),
        content: exception == null ? null : Text('$exception'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              MaterialLocalizations.of(context).okButtonLabel,
              textAlign: TextAlign.end,
            ),
          ),
          if (exception != null)
            TextButton(
              onPressed: () {
                reportCubit.sendReport(
                  error: exception,
                  stackTrace: stackTrace,
                  message: reportMsg,
                );
              },
              child: Text(
                S.of(context).crashDialogReport,
                textAlign: TextAlign.end,
              ),
            ),
        ],
      );
    },
  );
}

void _errorSnackbar(
  BuildContext context, {
  required String msg,
  bool report = false,
  String? reportMsg,
  Object? error,
  StackTrace? stackTrace,
}) {
  if (report) {
    assert(error != null);
  }
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(msg),
      action: report
          ? SnackBarAction(
              label: S.of(context).crashDialogReport,
              onPressed: () {
                context.read<ErrorReportCubit>().sendReport(
                      error: error!,
                      stackTrace: stackTrace,
                      message: reportMsg,
                    );
              },
            )
          : null,
    ),
  );
}
