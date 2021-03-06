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

import 'package:auto_route/auto_route.dart';
import 'package:blink_comparison/ui/camera/camera.dart';
import 'package:blink_comparison/ui/cubit/error_report_cubit.dart';
import 'package:blink_comparison/ui/widget/widget.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../theme.dart';

class CameraPickerPage extends StatefulWidget implements AutoRouteWrapper {
  final ValueChanged<XFile>? onTakePhoto;

  const CameraPickerPage({
    Key? key,
    this.onTakePhoto,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CameraProviderCubit>(
          create: (context) => getIt<CameraProviderCubit>(),
        ),
        BlocProvider<ErrorReportCubit>(
          create: (context) => getIt<ErrorReportCubit>(),
        ),
      ],
      child: this,
    );
  }

  @override
  _CameraPickerPageState createState() => _CameraPickerPageState();
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
