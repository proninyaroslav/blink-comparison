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
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/comparison/model/blink_comparison_state.dart';
import 'package:blink_comparison/ui/comparison/model/comparison_settings_state.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/model/showcase_cubit.dart';
import 'package:blink_comparison/ui/model/xfile_image.dart';
import 'package:file/file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../injector.dart';
import '../../locale.dart';
import '../theme.dart';
import 'model/blink_comparison_cubit.dart';
import 'model/comparison_settings_cubit.dart';

final _refImageBorderShowcaseKey = GlobalKey();
final _blinkComparisonShowcaseKey = GlobalKey();

@RoutePage()
class BlinkComparisonPage extends StatefulWidget implements AutoRouteWrapper {
  final ImageProvider refImage;
  final XFileImage takenPhoto;
  final double aspectRatio;

  const BlinkComparisonPage({
    super.key,
    required this.refImage,
    required this.takenPhoto,
    required this.aspectRatio,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BlinkComparisonCubit(getIt<FileSystem>()),
        ),
        BlocProvider(
          create: (context) => ComparisonSettingsCubit(getIt<AppSettings>()),
        ),
        BlocProvider(
          create: (context) => ShowcaseCubit(getIt<AppSettings>()),
        ),
      ],
      child: this,
    );
  }

  @override
  State<BlinkComparisonPage> createState() => _BlinkComparisonPageState();
}

class _BlinkComparisonPageState extends State<BlinkComparisonPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        precacheImage(widget.takenPhoto, context),
        precacheImage(widget.refImage, context),
      ]);
      if (mounted) {
        await Future.wait([
          context.read<BlinkComparisonCubit>().load(
                refImage: widget.refImage,
                takenPhoto: widget.takenPhoto,
              ),
          context.read<ComparisonSettingsCubit>().load(),
          context.read<ShowcaseCubit>().load(),
        ]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComparisonSettingsCubit, ComparisonSettingsState>(
      builder: (context, state) {
        final refImageWidget = _Image(
          image: widget.refImage,
          aspectRatio: widget.aspectRatio,
          frameColor: switch (state.refImageBorderColor) {
            final color? => Color(color),
            null => null,
          },
        );
        final takenPhotoWidget = _Image(
          image: widget.takenPhoto,
          aspectRatio: widget.aspectRatio,
        );
        return ShowCaseWidget(
          builder: (context) {
            return _Body(
              refImageWidget: refImageWidget,
              takenPhotoWidget: takenPhotoWidget,
            );
          },
          onComplete: (i, key) async {
            final cubit = context.read<ShowcaseCubit>();
            if (key == _refImageBorderShowcaseKey) {
              await cubit.completed(const ShowcaseType.refImageBorder());
            } else if (key == _blinkComparisonShowcaseKey) {
              await cubit.completed(const ShowcaseType.blinkComparison());
            }
          },
        );
      },
    );
  }
}

class _Body extends StatefulWidget {
  final Widget refImageWidget;
  final Widget takenPhotoWidget;

  const _Body({
    required this.refImageWidget,
    required this.takenPhotoWidget,
  });

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 400), _startShowcase);
    });
  }

  void _startShowcase() {
    final completed = context.read<ShowcaseCubit>().state.completed;
    final showcases = [
      if (!(completed?.contains(const ShowcaseType.blinkComparison()) ?? true))
        _blinkComparisonShowcaseKey,
      if (!(completed?.contains(const ShowcaseType.refImageBorder()) ?? true))
        _refImageBorderShowcaseKey,
    ];
    if (showcases.isNotEmpty) {
      ShowCaseWidget.of(context).startShowCase(showcases);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppThemeBuilder(
      builder: (light, dark, black) {
        return Theme(
          data: black,
          child: Scaffold(
            body: Stack(
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => _onSwitchImage(context),
                  child: Center(
                    child: BlocConsumer<BlinkComparisonCubit,
                        BlinkComparisonState>(
                      listener: (context, state) async {
                        if (state case BlinkComparisonStateLoaded()) {
                          context.read<BlinkComparisonCubit>().switchImage();
                        }
                      },
                      builder: (context, state) {
                        return switch (state) {
                          BlinkComparisonStateInitial() ||
                          BlinkComparisonStateLoaded() =>
                            const CircularProgressIndicator(),
                          BlinkComparisonStateShowRefImage() =>
                            widget.refImageWidget,
                          BlinkComparisonStateShowTakenPhoto() =>
                            widget.takenPhotoWidget,
                        };
                      },
                    ),
                  ),
                ),
                const Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: SlideAppBar(
                    showFirstTime: true,
                  ),
                ),
                Center(
                  child: CustomShowcase(
                    showcaseKey: _blinkComparisonShowcaseKey,
                    description: S.of(context).blinkComparisonCaseTooltip,
                    targetShapeBorder: const CircleBorder(),
                    child: const SizedBox(width: 64.0, height: 64.0),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onSwitchImage(BuildContext context) {
    final cubit = context.read<BlinkComparisonCubit>();
    if (cubit.state is! BlinkComparisonStateInitial) {
      cubit.switchImage();
    }
  }
}

class _Image extends StatelessWidget {
  final ImageProvider image;
  final double aspectRatio;
  final Color? frameColor;

  const _Image({
    required this.image,
    required this.aspectRatio,
    this.frameColor,
  });

  @override
  Widget build(BuildContext context) {
    const borderWidth = 2.0;
    final showFrame = frameColor != null;

    return Container(
      margin: const EdgeInsets.all(borderWidth),
      decoration: BoxDecoration(
        border: showFrame
            ? Border.all(
                color: frameColor!,
                width: borderWidth,
                strokeAlign: BorderSide.strokeAlignOutside,
              )
            : null,
      ),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Stack(
          children: [
            Image(
              image: image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            if (showFrame)
              Align(
                alignment: Alignment.topCenter,
                child: CustomShowcase(
                  showcaseKey: _refImageBorderShowcaseKey,
                  description: S.of(context).referenceImageBorderCaseTooltip,
                  child: const SizedBox.shrink(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
