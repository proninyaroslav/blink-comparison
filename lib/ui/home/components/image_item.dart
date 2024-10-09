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
import 'package:blink_comparison/ui/home/model/image_item_cubit.dart';
import 'package:blink_comparison/ui/home/model/image_item_state.dart';
import 'package:blink_comparison/ui/home/model/ref_image_entry.dart';
import 'package:blink_comparison/ui/model/xfile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../../../logger.dart';
import '../../theme.dart';
import 'image_error.dart';
import 'image_item_selection_control.dart';

class ImageItem extends StatefulWidget {
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
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<ImageItemCubit>().load(widget.entry);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageItemCubit, ImageItemState>(
      builder: (context, state) {
        final label = _getLabel(state);

        return Card.outlined(
          clipBehavior: Clip.antiAlias,
          elevation: widget.isSelected ? 2.0 : null,
          child: Stack(
            children: [
              _buildChild(state),
              if (_isBuildEncryptImageIcon(state))
                const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: _EncryptedImageIcon(),
                ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: ImageItemSelectionControl(
                  show: widget.selectableMode,
                  isSelected: widget.isSelected,
                  onSelected: widget.onTap,
                ),
              ),
              if (label != null)
                Positioned(
                  left: 1.0,
                  bottom: 1.0,
                  right: 1.0,
                  child: _Label(
                    label: label,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildChild(ImageItemState state) => switch (state) {
        ImageItemStateInitial() => const _LoadImageProgress(),
        ImageItemStateSaving() => const _SaveImageProgress(),
        ImageItemStateSaved(:final SaveRefImageStatusErrorSaveImage error?) =>
          SaveImageError(
            error: error,
            onTap: widget.selectableMode ? widget.onTap : null,
          ),
        ImageItemStateSaved(:final image) ||
        ImageItemStateLoaded(:final image) =>
          _Image(thumbnail: image.thumbnail, onTap: widget.onTap),
        ImageItemStateLoadingFailed(:final error) => LoadImageError(
            error: error,
            onTap: widget.selectableMode ? widget.onTap : null,
          ),
      };

  bool _isBuildEncryptImageIcon(ImageItemState state) {
    if (state
        case ImageItemStateLoaded(:final image) ||
            ImageItemStateSaving(:final image) ||
            ImageItemStateSaved(:final image)
        when image.info.encryption is! RefImageEncryptionNone) {
      return true;
    } else {
      return false;
    }
  }

  String? _getLabel(ImageItemState state) {
    if (state
        case ImageItemStateLoaded(
              image: RefImageEntry(info: RefImageInfo(:final label?))
            ) ||
            ImageItemStateSaved(
              image: RefImageEntry(info: RefImageInfo(:final label?))
            ) when label.isNotEmpty) {
      return label;
    } else {
      return null;
    }
  }
}

class _Label extends StatelessWidget {
  const _Label({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = AppTheme.lightScheme();

    return Container(
      constraints: const BoxConstraints(minHeight: 50.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.1, 1.0],
          colors: [
            Colors.transparent,
            colorScheme.inverseSurface.withOpacity(0.5),
          ],
        ),
      ),
      alignment: AlignmentDirectional.bottomStart,
      child: Text(
        label,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.titleMedium!.copyWith(
          color: colorScheme.onInverseSurface,
        ),
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
        Symbols.image,
        color: Theme.of(context).iconTheme.color!.withOpacity(0.25),
        size: 48,
      ),
    );
  }
}

class _SaveImageProgress extends StatelessWidget {
  const _SaveImageProgress();

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

class _LoadImageProgress extends StatelessWidget {
  const _LoadImageProgress();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final theme = Theme.of(context);
        final colorScheme = theme.colorScheme;
        return Shimmer(
          color: colorScheme.surfaceBright,
          colorOpacity: AppTheme.isDark(context) ? 0.3 : 1.0,
          duration: const Duration(seconds: 1, milliseconds: 500),
          child: SizedBox(
            height: constraints.maxWidth,
            width: constraints.maxWidth,
          ),
        );
      },
    );
  }
}

class _EncryptedImageIcon extends StatelessWidget {
  const _EncryptedImageIcon();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: colorScheme.surfaceContainerHighest,
        shape: const CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            size: 16.0,
            Symbols.lock,
            fill: 1.0,
            color: colorScheme.tertiary,
          ),
        ),
      ),
    );
  }
}
