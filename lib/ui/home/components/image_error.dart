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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/service/save_ref_image_job.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/locale.dart';
import 'package:blink_comparison/ui/home/components/error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SaveImageError extends StatelessWidget {
  final SaveRefImageStatusErrorSaveImage error;
  final VoidCallback? onTap;

  const SaveImageError({
    super.key,
    required this.error,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return _ImageError(
      title: Text(S.of(context).saveImageError),
      onTap: onTap,
      onErrorDialog: () => _onErrorDialog(context),
    );
  }

  void _onErrorDialog(BuildContext context) {
    final (reportMsg, dialogMsg) = switch (error.error) {
      SaveRefImageErrorFs(:final error) => switch (error) {
          FsErrorIO() => ('I/O error', S.of(context).ioError),
        },
      SaveRefImageErrorEncrypt() => (
          'Encryption error',
          S.of(context).encryptionError
        ),
    };
    refImageErrorDialog(
      context,
      reportMsg: reportMsg,
      dialogMsg: dialogMsg,
      exception: error,
    );
  }
}

class LoadImageError extends StatelessWidget {
  final StorageError? error;
  final VoidCallback? onTap;

  const LoadImageError({
    super.key,
    required this.error,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return _ImageError(
      title: Text(S.of(context).loadImageError),
      onTap: onTap,
      onErrorDialog:
          error == null ? null : () => _onErrorDialog(context, error!),
    );
  }

  void _onErrorDialog(BuildContext context, StorageError error) {
    final (reportMsg, dialogMsg) = switch (error) {
      StorageErrorDatabase() => ('Database error', S.of(context).databaseError),
      StorageErrorFs(:final error) => switch (error) {
          FsErrorIO() => ('I/O error', S.of(context).ioError),
        },
    };
    refImageErrorDialog(
      context,
      reportMsg: reportMsg,
      dialogMsg: dialogMsg,
      exception: error,
    );
  }
}

class _ImageError extends StatelessWidget {
  final Widget title;
  final VoidCallback? onTap;
  final VoidCallback? onErrorDialog;

  const _ImageError({
    required this.title,
    this.onTap,
    required this.onErrorDialog,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap ?? onErrorDialog,
      child: LayoutBuilder(builder: (context, contraints) {
        return Container(
          padding: const EdgeInsets.all(8.0),
          constraints: BoxConstraints(minHeight: contraints.maxWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Symbols.error,
                color: theme.colorScheme.error,
                size: 48,
              ),
              const SizedBox(height: 8.0),
              DefaultTextStyle(
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.error,
                ),
                textAlign: TextAlign.center,
                child: title,
              ),
              const SizedBox(height: 8.0),
              if (onErrorDialog != null)
                OutlinedButton(
                  onPressed: onTap == null ? onErrorDialog : null,
                  child: Text(S.of(context).show),
                ),
            ],
          ),
        );
      }),
    );
  }
}
