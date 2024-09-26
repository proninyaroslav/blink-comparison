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
import 'package:blink_comparison/locale.dart';
import 'package:blink_comparison/ui/home/components/image_item.dart';
import 'package:blink_comparison/ui/home/model/ref_images_actions_state.dart';
import 'package:blink_comparison/ui/home/model/selectable_ref_image_cubit.dart';
import 'package:blink_comparison/ui/home/model/selectable_ref_image_item.dart';
import 'package:blink_comparison/ui/model/selectable_state.dart';
import 'package:blink_comparison/ui/model/utils.dart';
import 'package:blink_comparison/ui/routes/app_router.gr.dart';
import 'package:blink_comparison/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../components/widget.dart';

const _defaultListPadding = 16.0;

class ImagesList extends StatefulWidget {
  final List<RefImageEntry> entries;
  final double horizontalPadding;
  final int columnCount;
  final ScrollController scrollController;

  const ImagesList({
    super.key,
    required this.entries,
    required this.horizontalPadding,
    required this.columnCount,
    required this.scrollController,
  });

  @override
  State<ImagesList> createState() => _ImagesListState();
}

class _ImagesListState extends State<ImagesList> {
  final _controller = DragSelectStaggeredGridController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(_onSelectChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onSelectChanged);
    _controller.dispose();

    super.dispose();
  }

  void _onSelectChanged() {
    final cubit = context.read<SelectableRefImageCubit>();
    final items = _controller.value.selectedIndexes
        .map(
          (index) => SelectableRefImageItem(
            info: widget.entries[index].info,
          ),
        )
        .toSet();
    if (items.isEmpty) {
      cubit.clearSelection();
    } else {
      cubit.replaceSet(items);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectableRefImageCubit, SelectableState>(
      listener: (context, state) async {
        if (state case SelectableStateNoSelection()) {
          if (_controller.value.isSelecting) {
            await Navigator.of(context).maybePop();
            _controller.clear();
          }
        }
      },
      builder: (context, state) {
        return AnimationLimiter(
          child: DragSelectStaggeredGrid.countBuilder(
            gridController: _controller,
            scrollController: widget.scrollController,
            padding: EdgeInsets.fromLTRB(
              widget.horizontalPadding + _defaultListPadding,
              0.0,
              widget.horizontalPadding + _defaultListPadding,
              UiUtils.fabBottomMargin,
            ),
            crossAxisCount: widget.columnCount,
            itemCount: widget.entries.length,
            itemBuilder: (context, index) {
              final entry = widget.entries[index];
              final selectableItem = SelectableRefImageItem(
                info: entry.info,
              );
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: UiUtils.defaultAnimatedListDuration,
                columnCount: widget.columnCount,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: ImageItem(
                      entry: entry,
                      isSelected: switch (state) {
                        SelectableStateSelected(:final items) =>
                          items.contains(selectableItem),
                        _ => false,
                      },
                      selectableMode: state is SelectableStateSelected,
                      onTap: () => context.pushRoute(
                        RefImagePreviewRoute(
                          imageId: entry.info.id,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class ImagesListEmptyPage extends StatelessWidget {
  const ImagesListEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final type = getDeviceType(MediaQuery.of(context).size);
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: _defaultListPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageIcon(
                    icon: Icons.add_photo_alternate_outlined,
                    ratio: type == DeviceScreenType.mobile ? 2.2 : 4.2,
                  ),
                  const SizedBox(height: 32.0),
                  Text(
                    S.of(context).addReferenceImageDescription,
                    textAlign: TextAlign.center,
                    style: AppTheme.pageHeadlineText(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
