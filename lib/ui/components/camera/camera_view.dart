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

import 'package:blink_comparison/ui/components/camera/buttons_bar.dart';
import 'package:blink_comparison/ui/components/camera/camera_pause_progress.dart';
import 'package:blink_comparison/ui/components/camera/camera_preview_placeholder.dart';
import 'package:blink_comparison/ui/components/camera/flash_button.dart';
import 'package:blink_comparison/ui/components/camera/flip_camera_button.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_controller_wrapper.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_initialization_error.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_provider_cubit.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_provider_state.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_view_controller.dart';
import 'package:blink_comparison/ui/components/camera/open_camera_error.dart';
import 'package:blink_comparison/ui/components/camera/take_photo_button.dart';
import 'package:blink_comparison/ui/components/camera/take_picture_flash.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:open_settings_plus/open_settings_plus.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../locale.dart';
import '../../../logger.dart';

class CameraView extends StatefulWidget {
  final Widget? overlayChild;
  final ValueChanged<XFile>? onTakePhoto;
  late final CameraViewController _controller;

  CameraView({
    CameraViewController? controller,
    super.key,
    this.overlayChild,
    this.onTakePhoto,
  }) {
    _controller = controller ?? CameraViewController();
  }

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> with WidgetsBindingObserver {
  final _takePictureFlashKey = GlobalKey<TakePictureFlashState>();

  CameraControllerWrapper? _cameraController;
  bool? _flashEnabled;
  CameraInitializationError? _initializeError;
  double _currentScale = 1.0;
  double _baseScale = 1.0;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;
  int _pointers = 0;
  late final _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();

    WakelockPlus.enable();
    context.read<CameraProviderCubit>().loadAvailableCameras();

    final controller = widget._controller;
    controller.addListener(() {
      if (controller.paused) {
        _switchFlash(false);
      } else if (_flashEnabled != null) {
        _switchFlash(_flashEnabled!);
      }
    });

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused) {
      await _disposeController();
    } else if (state == AppLifecycleState.resumed) {
      final cubit = context.read<CameraProviderCubit>();
      if (cubit.state case CameraProviderStateLoaded(:final primaryCamera)) {
        await _initController(camera: primaryCamera);
      }
    }
  }

  @override
  void dispose() {
    super.dispose();

    WakelockPlus.disable();

    WidgetsBinding.instance.removeObserver(this);

    _disposeController();
    _audioPlayer.dispose();
  }

  Future<void> _initController({required CameraDescription camera}) async {
    if (_cameraController != null) {
      return;
    }
    _initializeError = null;
    _cameraController = CameraControllerWrapper(
      camera,
      ResolutionPreset.max,
      enableAudio: false,
    );
    CameraControllerWrapper cameraController = _cameraController!;
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
      if (!widget._controller.paused) {
        await _switchFlash(_flashEnabled!);
      }
      await Future.wait(<Future<Object?>>[
        cameraController
            .getMaxZoomLevel()
            .then((double value) => _maxAvailableZoom = value),
        cameraController
            .getMinZoomLevel()
            .then((double value) => _minAvailableZoom = value),
      ]);
      await cameraController.setZoomLevel(_currentScale);
    } on CameraException catch (e, stackTrace) {
      log().e('Unable to initialize the camera',
          error: e, stackTrace: stackTrace);
    }
  }

  Future<void> _disposeController() async {
    await _cameraController?.dispose();
    _cameraController = null;
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
    return Listener(
      onPointerDown: (_) => _pointers++,
      onPointerUp: (_) => _pointers--,
      child: Stack(
        children: [
          if (_initializeError == null)
            const Align(
              alignment: Alignment.center,
              child: CameraPreviewPlaceholder(),
            ),
          Align(
            alignment: Alignment.center,
            child: BlocConsumer<CameraProviderCubit, CameraProviderState>(
              listener: _listener,
              builder: _builder,
            ),
          ),
          ListenableBuilder(
            listenable: widget._controller,
            builder: (context, child) {
              return Align(
                alignment: Alignment.center,
                child: CameraPauseProgress(
                  visible: widget._controller.paused,
                ),
              );
            },
          ),
          ListenableBuilder(
            listenable: widget._controller,
            builder: _buttonsBarBuilder,
          ),
        ],
      ),
    );
  }

  void _listener(context, state) async {
    switch (state) {
      case CameraProviderStateLoaded(
          :final primaryCamera,
          :final enableFlashByDefault
        ):
        _flashEnabled ??= enableFlashByDefault;
        await _disposeController();
        await _initController(camera: primaryCamera);
      case _:
        break;
    }
  }

  Widget _builder(context, state) {
    return switch (state) {
      CameraProviderStateLoaded() => LayoutBuilder(
          builder: (context, constraints) {
            if (_initializeError != null) {
              return OpenCameraError(
                error: _initializeError!,
                onOpenAppPermissions: () async {
                  await _openAppPermisisons();
                },
              );
            } else if (!_initialized) {
              return const SizedBox.shrink();
            }

            return GestureDetector(
              onScaleStart: _handleScaleStart,
              onScaleUpdate: _handleScaleUpdate,
              onTapDown: (details) {
                _onViewFinderTap(details, constraints);
              },
              behavior: HitTestBehavior.opaque,
              child: CameraPreview(
                _cameraController!,
                child: Stack(
                  children: [
                    if (widget.overlayChild != null) widget.overlayChild!,
                    TakePictureFlash(
                      key: _takePictureFlashKey,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      CameraProviderStateLoadFailed(:final error, :final stackTrace) =>
        OpenCameraError(
          error: CameraInitializationError.exception(
            exception: error,
            stackTrace: stackTrace,
          ),
        ),
      _ => const SizedBox.shrink()
    };
  }

  Widget _buttonsBarBuilder(context, child) {
    return BlocBuilder<CameraProviderCubit, CameraProviderState>(
      builder: (context, state) {
        return ButtonsBar(
          flipCameraButton: FlipCameraButton(
            show: switch (state) {
              CameraProviderStateLoaded(:final otherCameras) =>
                otherCameras.isNotEmpty,
              _ => false,
            },
            onTap: () => _onFlipCamera(state),
          ),
          flashButton: FlashButton(
            enabled: _flashEnabled ?? false,
            onSwitch: _onSwitchFlashButton,
          ),
          takePhotoButton: TakePhotoButton(
            onTap: _initialized && !widget._controller.paused
                ? _onTakePhoto
                : null,
          ),
        );
      },
    );
  }

  void _handleScaleStart(ScaleStartDetails details) {
    _baseScale = _currentScale;
  }

  Future<void> _handleScaleUpdate(ScaleUpdateDetails details) async {
    // When there are not exactly two fingers on screen don't scale
    if (!_initialized || _pointers != 2) {
      return;
    }

    try {
      _currentScale = (_baseScale * details.scale)
          .clamp(_minAvailableZoom, _maxAvailableZoom);
      await _cameraController?.setZoomLevel(_currentScale);
    } on CameraException catch (e, stackTrace) {
      log().e('Unable to change zoom level', error: e, stackTrace: stackTrace);
      if (mounted) {
        _errorSnackbar(context, msg: S.of(context).changeCameraZoomError);
      }
    }
  }

  void _onFlipCamera(CameraProviderState state) {
    if (state case CameraProviderStateLoaded(:final otherCameras)) {
      final camera = otherCameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
        orElse: () => otherCameras.first,
      );
      context.read<CameraProviderCubit>().switchCamera(camera);
    }
  }

  Future<void> _onSwitchFlashButton(bool enable) async {
    _flashEnabled = enable;
    await _switchFlash(enable);
  }

  Future<void> _switchFlash(bool enable) async {
    if (!_initialized) {
      return;
    }

    try {
      await _cameraController?.setFlashMode(
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

  void _onViewFinderTap(TapDownDetails details, BoxConstraints constraints) {
    if (!_initialized) {
      return;
    }

    final offset = Offset(
      details.localPosition.dx / constraints.maxWidth,
      details.localPosition.dy / constraints.maxHeight,
    );
    try {
      _cameraController?.setExposurePoint(offset);
      _cameraController?.setFocusPoint(offset);
    } on CameraException catch (e, stackTrace) {
      log().e('Unable to change focus point', error: e, stackTrace: stackTrace);
    }
  }

  Future<void> _onTakePhoto() async {
    final file = await _takePicture();
    if (file != null) {
      widget.onTakePhoto?.call(file);
    }
  }

  Future<XFile?> _takePicture() async {
    if (!_initialized) {
      _errorSnackbar(context, msg: S.of(context).noSelectedCameraError);
      return null;
    }

    if (_cameraController?.value.isTakingPicture ?? true) {
      // A capture is already pending, do nothing.
      return null;
    }

    _playCameraShooter();
    _takePictureFlashKey.currentState?.startFlash();

    try {
      return await _cameraController?.takePicture();
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
      _cameraController != null &&
      !_cameraController!.disposed &&
      _cameraController!.value.isInitialized;
}
