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

import 'package:auto_route/auto_route.dart';
import 'package:blink_comparison/core/crash_report/crash_report_manager.dart';
import 'package:blink_comparison/core/encrypt/encrypt_module.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/injector.dart';
import 'package:blink_comparison/ui/camera_picker/components/camera_view.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_provider.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_provider_cubit.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:blink_comparison/ui/model/showcase_cubit.dart';
import 'package:blink_comparison/ui/model/xfile_provider.dart';
import 'package:blink_comparison/ui/preview/model/ref_image_options_state.dart';
import 'package:blink_comparison/ui/preview/model/ref_image_state.dart';
import 'package:blink_comparison/ui/theme.dart';
import 'package:cross_file/cross_file.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../locale.dart';
import '../../logger.dart';
import '../routes/routes.dart';
import 'components/opacity_bar.dart';
import 'model/ref_image_cubit.dart';
import 'model/ref_image_options_cubit.dart';

final _opacityShowcaseKey = GlobalKey();

@RoutePage()
class RefImagePreviewPage extends StatelessWidget implements AutoRouteWrapper {
  final String imageId;

  const RefImagePreviewPage({
    super.key,
    required this.imageId,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RefImageCubit(getIt<RefImageRepository>()),
        ),
        BlocProvider(
          create: (context) => CameraProviderCubit(
            getIt<CameraProvider>(),
            getIt<AppSettings>(),
          ),
        ),
        BlocProvider(
          create: (context) => ErrorReportCubit(getIt<CrashReportManager>()),
        ),
        BlocProvider(
          create: (context) => RefImageOptionsCubit(getIt<AppSettings>()),
        ),
        BlocProvider(
          create: (context) => ShowcaseCubit(getIt<AppSettings>()),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ShowcaseCubit>();
    return AppThemeBuilder(
      builder: (light, dark, black) {
        return Theme(
          data: black,
          child: Scaffold(
            body: ShowCaseWidget(
              builder: (context) {
                return _Body(imageId: imageId);
              },
              onComplete: (i, key) async {
                if (key == _opacityShowcaseKey) {
                  await cubit.completed(const ShowcaseType.opacity());
                }
              },
            ),
            endDrawerEnableOpenDragGesture: true,
          ),
        );
      },
    );
  }
}

class _Body extends StatefulWidget {
  final String imageId;

  const _Body({required this.imageId});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  ExtendedImageProvider? _refImage;
  Size? _refImageSize;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        context.read<RefImageOptionsCubit>().load(),
        context.read<RefImageCubit>().load(widget.imageId),
      ]);

      Future.delayed(const Duration(milliseconds: 400), _startShowcase);
    });
  }

  void _startShowcase() {
    final completed = context.read<ShowcaseCubit>().state.completed;
    final showcases = [
      if (!(completed?.contains(const ShowcaseType.opacity()) ?? true))
        _opacityShowcaseKey,
    ];
    if (showcases.isNotEmpty) {
      ShowCaseWidget.of(context).startShowCase(showcases);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocConsumer<RefImageCubit, RefImageState>(
          listenWhen: (prev, next) =>
              next is RefImageStateLoaded || next is RefImageStateLoadFailed,
          listener: (context, state) {
            switch (state) {
              case RefImageStateLoaded(:final image):
                _refImage = ExtendedMemoryImageProvider(image.bytes);
              case RefImageStateLoadFailed(:final error):
                _printError(error);
              case _:
                break;
            }
          },
          builder: (context, state) {
            return switch (state) {
              RefImageStateInitial() => const Center(
                  child: CircularProgressIndicator(),
                ),
              RefImageStateLoading() => const _DecodeImageProgress(),
              RefImageStateLoaded(:final image) => CameraView(
                  overlayChild: _ImageView(
                    image: ExtendedMemoryImageProvider(image.bytes),
                    onImageLoaded: (info) {
                      _refImageSize = getImageSize(info);
                    },
                  ),
                  showConfirmationDialog: false,
                  onTakePhoto: _onTakePhoto,
                ),
              RefImageStateLoadFailed(:final error) =>
                _LoadRefImageError(error: error),
            };
          },
        ),
        const Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: SlideAppBar(
            leading: BackButton(),
            actions: [
              _OpenOpacityBarButton(),
            ],
          ),
        ),
      ],
    );
  }

  void _printError(LoadRefImageError error) {
    switch (error) {
      case LoadRefImageErrorStorage(:final exception, :final stackTrace):
        log().e(
          "Unable to load reference image",
          error: exception,
          stackTrace: stackTrace,
        );
      case LoadRefImageErrorFs(:final error):
        switch (error) {
          case FsErrorIO(:final exception, :final stackTrace):
            log().e(
              "Unable to load reference image: I/O error",
              error: exception,
              stackTrace: stackTrace,
            );
        }
      case LoadRefImageErrorDecrypt(:final error):
        switch (error) {
          case DecryptErrorException(:final error, :final stackTrace):
            log().e(
              "Unable to decrypt reference image",
              error: error,
              stackTrace: stackTrace,
            );
          case _:
            break;
        }
      case _:
        break;
    }
  }

  void _onTakePhoto(XFile file) {
    if (_refImage == null) {
      return;
    }
    context.replaceRoute(
      BlinkComparisonRoute(
        refImage: _refImage!,
        takenPhoto: XFileImage(file),
        aspectRatio: _refImageSize?.aspectRatio ?? 1,
      ),
    );
  }

  Size? getImageSize(ImageInfo? info) {
    final image = info?.image;
    return image == null
        ? null
        : Size(
            image.width.toDouble(),
            image.height.toDouble(),
          );
  }
}

class _OpenOpacityBarButton extends StatelessWidget {
  const _OpenOpacityBarButton();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RefImageOptionsCubit>();
    return IconButton(
      icon: const Icon(Symbols.opacity),
      tooltip: S.of(context).imageOverlayOpacity,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          barrierColor: Colors.transparent,
          constraints: const BoxConstraints(maxWidth: 480),
          builder: (context) {
            return BlocProvider.value(
              value: cubit,
              child: const OpacityBar(),
            );
          },
        );
      },
    );
  }
}

class _DecodeImageProgress extends StatelessWidget {
  const _DecodeImageProgress();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16.0),
            Text(
              S.of(context).loadingReferenceImage,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageView extends StatefulWidget {
  final ExtendedImageProvider image;
  final ValueChanged<ImageInfo?>? onImageLoaded;

  const _ImageView({
    required this.image,
    this.onImageLoaded,
  });

  @override
  State<_ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<_ImageView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );
  late final Animation<double> _fadeImageAnimation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  late final _backgroundColorAnimation = ColorTween(
    begin: Theme.of(context).colorScheme.surface,
    end: Colors.transparent,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              color: _backgroundColorAnimation.value,
            );
          },
        ),
        Positioned.fill(
          child: BlocBuilder<RefImageOptionsCubit, RefImageOptionsState>(
            buildWhen: (prev, next) =>
                next is RefImageOptionsStateOpacityChanged,
            builder: (context, state) {
              return ExtendedImage(
                image: widget.image,
                enableLoadState: true,
                opacity: _fadeImageAnimation,
                color: switch (state.options) {
                  final options? => Colors.black.withOpacity(options.opacity),
                  null => null,
                },
                colorBlendMode: BlendMode.dstATop,
                fit: BoxFit.contain,
                beforePaintImage: (canvas, imageRect, image, paint) {
                  _drawOverlayFrame(canvas, imageRect);
                  return false;
                },
                loadStateChanged: (state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.loading:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    case LoadState.completed:
                      _controller.forward();
                      widget.onImageLoaded?.call(state.extendedImageInfo);
                      break;
                    case LoadState.failed:
                      return const _LoadRefImageError();
                  }
                  return null;
                },
              );
            },
          ),
        ),
        Center(
          child: CustomShowcase(
            showcaseKey: _opacityShowcaseKey,
            description: S.of(context).imageOverlayOpacityCaseTooltip,
            child: const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }

  void _drawOverlayFrame(Canvas canvas, Rect imageRect) {
    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()..addRect(Rect.largest),
        Path()
          ..addRect(imageRect)
          ..close(),
      ),
      Paint()..color = Colors.black45,
    );
  }
}

class _LoadRefImageError extends StatelessWidget {
  final LoadRefImageError? error;

  const _LoadRefImageError({
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    final (errorMsg, reportButton) = _mapError(context);
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Symbols.error,
              color: theme.colorScheme.error,
              size: 64,
            ),
            const SizedBox(height: 8.0),
            Text(
              errorMsg,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.error,
              ),
              textAlign: TextAlign.center,
            ),
            if (reportButton != null) ...[
              const SizedBox(
                height: 16.0,
              ),
              reportButton,
            ],
          ],
        ),
      ),
    );
  }

  (String, _ErrorReportButton?) _mapError(BuildContext context) {
    return switch (error) {
      null => (S.of(context).loadReferenceImageFailed, null),
      LoadRefImageErrorNotFound() => (
          S.of(context).referenceImageNotFound,
          null
        ),
      LoadRefImageErrorStorage(:final exception?, :final stackTrace) => (
          S.of(context).loadReferenceImageFailed,
          _ErrorReportButton(
            error: exception,
            stackTrace: stackTrace,
            reportMsg: 'Unable to load reference image',
          )
        ),
      LoadRefImageErrorStorage() => (
          S.of(context).loadReferenceImageFailed,
          null
        ),
      LoadRefImageErrorFs(:final error) => switch (error) {
          FsErrorIO(:final exception?, :final stackTrace) => (
              S.of(context).loadReferenceImageFailedIO,
              _ErrorReportButton(
                error: exception,
                stackTrace: stackTrace,
                reportMsg: 'Unable to load reference image: I/O error',
              )
            ),
          FsErrorIO() => (S.of(context).loadReferenceImageFailedIO, null),
        },
      LoadRefImageErrorNoSecureKey() => (
          S.of(context).decryptReferenceImageInvalidKey,
          null
        ),
      LoadRefImageErrorDecrypt(:final error) => switch (error) {
          DecryptErrorException(:final error?, :final stackTrace) => (
              S.of(context).decryptReferenceImageFailed,
              _ErrorReportButton(
                error: error,
                stackTrace: stackTrace,
                reportMsg: 'Unable to decrypt reference image',
              )
            ),
          DecryptErrorException() => (
              S.of(context).decryptReferenceImageFailed,
              null
            ),
          DecryptErrorNoSecureKey() => (
              S.of(context).decryptReferenceImageNoEncryptKey,
              null
            ),
        }
    };
  }
}

class _ErrorReportButton extends StatelessWidget {
  final Object error;
  final StackTrace? stackTrace;
  final String? reportMsg;

  const _ErrorReportButton({
    required this.error,
    this.stackTrace,
    this.reportMsg,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.read<ErrorReportCubit>().sendReport(
              error: error,
              stackTrace: stackTrace,
              message: reportMsg,
            );
      },
      child: Text(S.of(context).crashDialogReport),
    );
  }
}
