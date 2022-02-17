// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:blink_comparison/ui/camera/confirmation_dialog.dart';
import 'package:blink_comparison/ui/cubit/error_report_cubit.dart';
import 'package:blink_comparison/ui/widget/widget.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wakelock/wakelock.dart';

import '../../injector.dart';
import '../../locale.dart';
import '../../logger.dart';
import 'camera_provider_cubit.dart';

class CameraView extends StatefulWidget {
  final Widget? overlayChild;
  final ValueChanged<XFile>? onTakePhoto;
  final bool showConfirmationDialog;

  const CameraView({
    Key? key,
    this.overlayChild,
    this.onTakePhoto,
    this.showConfirmationDialog = true,
  }) : super(key: key);

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  @override
  void initState() {
    super.initState();

    Wakelock.enable();
    context.read<CameraProviderCubit>().loadAvailableCameras();
  }

  @override
  void dispose() {
    super.dispose();

    Wakelock.disable();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraProviderCubit, CameraProviderState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (primaryCamera, otherCameras, enableFlashByDefault) {
            return _Preview(
              camera: primaryCamera,
              otherCameras: otherCameras,
              overlayChild: widget.overlayChild,
              onTakePhoto: widget.onTakePhoto,
              enableFlashByDefault: enableFlashByDefault,
              showConfirmationDialog: widget.showConfirmationDialog,
            );
          },
          loadFailed: (e, stackTrace) {
            return _OpenCameraError(
              error: _CameraInitializationError(
                exception: e,
                stackTrace: stackTrace,
              ),
            );
          },
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
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
    Key? key,
    required this.camera,
    required this.otherCameras,
    this.overlayChild,
    this.onTakePhoto,
    required this.enableFlashByDefault,
    required this.showConfirmationDialog,
  }) : super(key: key);

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<_Preview> with WidgetsBindingObserver {
  CameraController? _controller;
  final _takePictureFlashKey = GlobalKey<_TakePictureFlashState>();
  late final _audioPlayer = AudioPlayer();
  _CameraInitializationError? _initializeError;
  bool _disposed = true;
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

    WidgetsBinding.instance?.addObserver(this);
    _initController();
  }

  @override
  void didUpdateWidget(covariant _Preview oldWidget) {
    if (oldWidget.camera != widget.camera) {
      _initController();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // App state changed before we got the chance to initialize.
    if (_controller == null || !_controller!.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      _disposed = true;
      _controller?.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initController();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    _disposed = true;
    _controller?.dispose();
    _audioPlayer.dispose();

    super.dispose();
  }

  Future<void> _initController() async {
    _initializeError = null;
    if (_controller != null) {
      _disposed = true;
      await _controller?.dispose();
    }
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.max,
      enableAudio: false,
    );
    CameraController cameraController = _controller!;
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
        setState(() {
          _disposed = false;
        });
      }
    });
    try {
      await cameraController.initialize();
    } on CameraException catch (e, stackTrace) {
      log().e('Unable to initialize the camera', e, stackTrace);
      if (mounted) {
        setState(() {
          _initializeError = _CameraInitializationError(
            exception: e,
            stackTrace: stackTrace,
          );
        });
      }
      return;
    }
    try {
      await _switchFlash(_keepFlash);
      _maxAvailableZoom = await cameraController.getMaxZoomLevel();
      _minAvailableZoom = await cameraController.getMinZoomLevel();
    } on CameraException catch (e, stackTrace) {
      log().e('Unable to initialize the camera', e, stackTrace);
    }

    if (mounted) {
      setState(() {
        _disposed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_initializeError != null) {
      _switchFlash(false);
      return _OpenCameraError(error: _initializeError!);
    } else if (!_initialized) {
      return Container();
    } else if (_capturedPhoto != null) {
      _switchFlash(false);
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
    _switchFlash(_keepFlash);

    CameraController cameraController = _controller!;

    return Listener(
      onPointerDown: (_) => _pointers++,
      onPointerUp: (_) => _pointers--,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
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
      _controller?.setFlashMode(
        enable ? FlashMode.torch : FlashMode.off,
      );
    } on CameraException catch (e, stackTrace) {
      _errorSnackbar(
        context,
        msg: S.of(context).switchCameraFlashError,
        report: true,
        reportMsg: 'Failed to switch flash mode',
        error: e,
        stackTrace: stackTrace,
      );
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
      log().e('Unable to change focus point', e, stackTrace);
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
      !_disposed && _controller != null && _controller!.value.isInitialized;
}

@immutable
class _CameraInitializationError {
  final CameraException exception;
  final StackTrace? stackTrace;

  const _CameraInitializationError({
    required this.exception,
    this.stackTrace,
  });
}

class _FlashButton extends StatefulWidget {
  final ValueChanged<bool>? onSwitch;
  final bool initialFlashEnabled;

  const _FlashButton({
    Key? key,
    this.onSwitch,
    required this.initialFlashEnabled,
  }) : super(key: key);

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
    Key? key,
    required this.show,
    this.onTap,
  }) : super(key: key);

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
    Key? key,
    this.onTap,
  }) : super(key: key);

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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 4.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _OpenCameraError extends StatelessWidget {
  final _CameraInitializationError error;

  const _OpenCameraError({
    Key? key,
    required this.error,
  }) : super(key: key);

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
              color: theme.errorColor,
              size: 64,
            ),
            const SizedBox(height: 8.0),
            Text(
              S.of(context).openCameraError,
              style: theme.textTheme.headline6!.copyWith(
                color: theme.errorColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () => _errorDialog(
                context,
                reportMsg: 'Unable to initialize the camera',
                exception: error.exception,
                stackTrace: error.stackTrace,
              ),
              child: Text(S.of(context).showError),
            ),
          ],
        ),
      ),
    );
  }
}

class _TakePictureFlash extends StatefulWidget {
  const _TakePictureFlash({Key? key}) : super(key: key);

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
    Key? key,
    this.onFlipCamera,
    this.onSwitchFlashButton,
    this.onTakePhoto,
    required this.showFlipCamera,
    required this.initialFlashEnabled,
  }) : super(key: key);

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
  log().e(reportMsg, exception, stackTrace);

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
