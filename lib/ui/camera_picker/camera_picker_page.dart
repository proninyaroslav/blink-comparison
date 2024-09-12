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
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/camera_picker/components/camera_view.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_provider.dart';
import 'package:blink_comparison/ui/camera_picker/model/camera_provider_cubit.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../theme.dart';

@RoutePage()
class CameraPickerPage extends StatefulWidget implements AutoRouteWrapper {
  final ValueChanged<XFile>? onTakePhoto;

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
      ],
      child: this,
    );
  }

  @override
  State<CameraPickerPage> createState() => _CameraPickerPageState();
}

class _CameraPickerPageState extends State<CameraPickerPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.blackTheme(),
      child: Scaffold(
        body: Stack(
          children: [
            CameraView(
              onTakePhoto: (file) {
                widget.onTakePhoto?.call(file);
                Navigator.of(context).pop();
              },
            ),
            const Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: SlideAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
