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

import 'package:auto_route/auto_route.dart';
import 'package:blink_comparison/core/crash_report/crash_report_manager.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_picker_cubit.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_picker_metadata.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_picker_state.dart';
import 'package:blink_comparison/ui/components/camera/camera_view.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_provider.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_provider_cubit.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_view_controller.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:blink_comparison/ui/model/xfile_image.dart';
import 'package:blink_comparison/ui/routes/app_router.gr.dart';
import 'package:cross_file/cross_file.dart';
import 'package:file/file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../theme.dart';

@RoutePage()
class CameraPickerPage extends StatefulWidget implements AutoRouteWrapper {
  final void Function(XFile, CameraPickerMetadata)? onTakePhoto;

  const CameraPickerPage({
    super.key,
    this.onTakePhoto,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CameraProviderCubit(
            getIt<CameraProvider>(),
            getIt<AppSettings>(),
          ),
        ),
        BlocProvider(
          create: (context) => ErrorReportCubit(
            getIt<CrashReportManager>(),
          ),
        ),
        BlocProvider(
          create: (context) => CameraPickerCubit(
            getIt<FileSystem>(),
          ),
        ),
      ],
      child: this,
    );
  }

  @override
  State<CameraPickerPage> createState() => _CameraPickerPageState();
}

class _CameraPickerPageState extends State<CameraPickerPage> {
  final _controller = CameraViewController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppThemeBuilder(
      builder: (light, dark, black) {
        return Theme(
          data: black,
          child: BlocListener<CameraPickerCubit, CameraPickerState>(
            listener: (context, state) async {
              switch (state) {
                case CameraPickerStateAccepted(:final image, :final metadata):
                  widget.onTakePhoto?.call(image.file, metadata);
                  await context.maybePop();
                case CameraPickerStateRejected():
                  _controller.resumeCamera();
                case _:
                  break;
              }
            },
            child: CameraView(
              controller: _controller,
              onTakePhoto: _onTakePhoto,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onTakePhoto(XFile file) async {
    final cubit = context.read<CameraPickerCubit>();
    final image = XFileImage(file);
    await cubit.load(image);

    _controller.pauseCamera();
    if (mounted) {
      await precacheImage(image, context);
    }

    if (mounted) {
      await context.navigateTo(
        CameraConfirmationRoute(
          image: image,
          onRetry: () async {
            await cubit.reject();
          },
          onAccept: (metadata) async {
            await cubit.accept(metadata);
          },
        ),
      );
    }
  }
}
