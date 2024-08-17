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
import 'package:blink_comparison/logger.dart';
import 'package:blink_comparison/ui/about/about_page.dart';
import 'package:blink_comparison/ui/cubit/selectable_cubit.dart';
import 'package:blink_comparison/ui/home/ref_images_cubit.dart';
import 'package:blink_comparison/ui/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../locale.dart';
import '../app_router.gr.dart';
import 'ref_images_actions_cubit.dart';
import 'selectable_ref_image_cubit.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController scrollController;

  const HomeAppBar({
    super.key,
    required this.scrollController,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  CrossFadeState _currentAppBar = CrossFadeState.showFirst;
  bool _elevated = false;

  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollListener);

    super.dispose();
  }

  void _scrollListener() {
    final oldValue = _elevated;
    _elevated = widget.scrollController.offset > 0.0;
    if (_elevated != oldValue) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<SelectableRefImageCubit,
        SelectableState<SelectableRefImageItem>>(
      listener: (context, state) {
        setState(() {
          _currentAppBar = state.maybeWhen(
            selected: (items) => CrossFadeState.showSecond,
            orElse: () => CrossFadeState.showFirst,
          );
        });
      },
      child: Material(
        elevation: _elevated ? 4.0 : 0.0,
        child: AnimatedCrossFade(
          firstCurve: Curves.easeIn,
          secondCurve: Curves.easeIn,
          firstChild: AppBar(
            key: const ValueKey('app_bar'),
            title: const Text('Blink Comparison'),
            actions: [
              CustomActionsRow(
                availableWidth: size.width,
                actionWidth: size.width / 2,
                actions: [
                  CustomAction(
                    visibleWidget: IconButton(
                      icon: const Icon(Icons.settings_outlined),
                      tooltip: S.of(context).settings,
                      onPressed: () => context.pushRoute(const SettingsRoute()),
                    ),
                    overflowWidget: Text(S.of(context).settings),
                    onPressed: () => context.pushRoute(const SettingsRoute()),
                    showAsAction: ShowAsAction.ifRoom,
                  ),
                  CustomAction(
                    overflowWidget: Text(S.of(context).aboutApp),
                    showAsAction: ShowAsAction.never,
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) {
                        return const AboutPage().wrappedRoute(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          secondChild: const _ContextualAppBar(),
          crossFadeState: _currentAppBar,
          duration: const Duration(milliseconds: 200),
        ),
      ),
    );
  }
}

class _ContextualAppBar extends StatelessWidget {
  const _ContextualAppBar();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SelectableRefImageCubit>();
    return BlocListener<RefImagesActionsCubit, RefImagesActionsState>(
      listener: (context, state) {
        state.maybeWhen(
          deleted: (count, errors) {
            late final String message;
            if (errors.isEmpty) {
              message = S.of(context).imagesDeleted(count);
            } else {
              message = S.of(context).deleteImagesFailed(errors.length);
            }
            for (final entry in errors.entries) {
              log().e('[${entry.key.id}] Unable to delete image',
                  error: entry.value);
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<SelectableRefImageCubit,
          SelectableState<SelectableRefImageItem>>(
        builder: (context, state) {
          final itemsCount = state.maybeWhen(
            selected: (items) => items.length,
            orElse: () => 0,
          );
          return AppBar(
            key: const ValueKey('contextual_app_bar'),
            title: Text(
              S.of(context).selectedCounter(itemsCount),
              maxLines: 2,
            ),
            leading: const BackButton(),
            actions: [
              IconButton(
                icon: const Icon(Icons.delete_outline_rounded),
                tooltip: S.of(context).delete,
                onPressed: () {
                  cubit.state.maybeWhen(
                    selected: (items) => _showDeleteDialog(
                      context: context,
                      items: items,
                      onDone: () => cubit.clearSelection(),
                    ),
                    orElse: () {},
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.select_all_rounded),
                tooltip: S.of(context).selectAll,
                onPressed: () => _selectAll(context),
              ),
            ],
          );
        },
      ),
    );
  }

  void _showDeleteDialog({
    required BuildContext context,
    required Set<SelectableRefImageItem> items,
    required VoidCallback onDone,
  }) {
    final actionCubit = context.read<RefImagesActionsCubit>();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.of(context).delete),
          content: Text(S.of(context).deleteImagesDialog(items.length)),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                S.of(context).no,
                textAlign: TextAlign.end,
              ),
            ),
            TextButton(
              onPressed: () {
                actionCubit.delete(items.map((item) => item.info).toList());
                Navigator.of(context).pop();
                onDone();
              },
              child: Text(
                S.of(context).yes,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        );
      },
    );
  }

  void _selectAll(BuildContext context) {
    final selectableCubit = context.read<SelectableRefImageCubit>();
    final imagesCubit = context.read<RefImagesCubit>();

    imagesCubit.state.when(
      initial: () {},
      loadingFailed: (error) {},
      loaded: (entries) {
        selectableCubit.selectSet(
          entries
              .map((entry) => SelectableRefImageItem(info: entry.info))
              .toSet(),
        );
      },
    );
  }
}
