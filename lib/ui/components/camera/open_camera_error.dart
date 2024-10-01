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

import 'package:blink_comparison/locale.dart';
import 'package:blink_comparison/logger.dart';
import 'package:blink_comparison/ui/components/camera/model/camera_initialization_error.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';

class OpenCameraError extends StatelessWidget {
  final CameraInitializationError error;
  final VoidCallback? onOpenAppPermissions;

  const OpenCameraError({
    super.key,
    required this.error,
    this.onOpenAppPermissions,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
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
    );
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
}
