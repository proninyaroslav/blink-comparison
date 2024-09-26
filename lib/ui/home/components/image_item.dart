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
import 'package:blink_comparison/ui/home/components/save_image_error.dart';
import 'package:blink_comparison/ui/home/model/ref_images_actions_state.dart';
import 'package:blink_comparison/ui/model/xfile_provider.dart';
import 'package:flutter/material.dart';

import '../../../logger.dart';
import 'image_item_selection_control.dart';

class ImageItem extends StatelessWidget {
  final RefImageEntry entry;
  final bool isSelected;
  final bool selectableMode;
  final VoidCallback? onTap;

  const ImageItem({
    super.key,
    required this.entry,
    this.isSelected = false,
    this.selectableMode = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final child = switch (entry.status) {
      null => _Image(thumbnail: entry.thumbnail, onTap: onTap),
      SaveRefImageStatusProgress() => const _LoadImageProgress(),
      SaveRefImageStatusCompleted(
        :final SaveRefImageStatusErrorSaveImage error?
      ) =>
        SaveImageError(
          error: error,
          onTap: selectableMode ? onTap : null,
        ),
      SaveRefImageStatusCompleted() => _Image(
          thumbnail: entry.thumbnail,
          onTap: onTap,
        )
    };
    return Card.outlined(
      clipBehavior: Clip.antiAlias,
      elevation: isSelected ? 2.0 : null,
      child: Stack(
        children: [
          child,
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: ImageItemSelectionControl(
              show: selectableMode,
              isSelected: isSelected,
              onSelected: onTap,
            ),
          ),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final Thumbnail thumbnail;
  final VoidCallback? onTap;

  const _Image({
    required this.thumbnail,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return Image(
              image: XFileImage(thumbnail.file),
              fit: BoxFit.fitWidth,
              width: constraints.biggest.width,
              errorBuilder: (context, e, stackTrace) {
                log().e('Unable to load thumbnail',
                    error: e, stackTrace: stackTrace);
                return Container(
                  height: constraints.biggest.width,
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  child: const _NoTnumbnailStub(),
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return SizedBox(
                    height: constraints.biggest.width,
                    child: child,
                  );
                }
              },
            );
          },
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(onTap: onTap),
          ),
        ),
      ],
    );
  }
}

class _NoTnumbnailStub extends StatelessWidget {
  const _NoTnumbnailStub();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.image,
        color: Theme.of(context).iconTheme.color!.withOpacity(0.25),
        size: 48,
      ),
    );
  }
}

class _LoadImageProgress extends StatelessWidget {
  const _LoadImageProgress();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          height: constraints.maxWidth,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
