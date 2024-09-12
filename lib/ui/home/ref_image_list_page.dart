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
import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/ref_image_status_repository.dart';
import 'package:blink_comparison/injector.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/home/model/add_ref_image_state.dart';
import 'package:blink_comparison/ui/home/model/ref_images_actions_state.dart';
import 'package:blink_comparison/ui/home/model/ref_images_cubit.dart';
import 'package:blink_comparison/ui/home/model/ref_images_state.dart';
import 'package:blink_comparison/ui/home/model/selectable_ref_image_item.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:blink_comparison/ui/model/selectable_state.dart';
import 'package:blink_comparison/ui/model/system_picker_cubit.dart';
import 'package:blink_comparison/ui/model/system_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locale.dart';
import '../../logger.dart';
import '../model/utils.dart';
import '../model/xfile_provider.dart';
import '../routes/routes.dart';
import '../theme.dart';
import 'components/app_bar.dart';
import 'model/add_ref_image_cubit.dart';
import 'model/ref_images_actions_cubit.dart';
import 'model/selectable_ref_image_cubit.dart';

@RoutePage()
class RefImageListPage extends StatefulWidget implements AutoRouteWrapper {
  const RefImageListPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddRefImageCubit(getIt<RefImageRepository>()),
        ),
        BlocProvider(
          create: (context) => SystemPickerCubit(
            getIt<ImagePicker>(),
            getIt<PlatformInfo>(),
          ),
        ),
        BlocProvider(
          create: (context) => RefImagesCubit(
            getIt<RefImageRepository>(),
            getIt<RefImageStatusRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => ErrorReportCubit(getIt<CrashReportManager>()),
        ),
        BlocProvider(
          create: (context) => SelectableRefImageCubit(),
        ),
        BlocProvider(
          create: (context) => RefImagesActionsCubit(
            getIt<RefImageRepository>(),
          ),
        ),
      ],
      child: this,
    );
  }

  @override
  State<RefImageListPage> createState() => _RefImageListPageState();
}

class _RefImageListPageState extends State<RefImageListPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    context.read<RefImagesCubit>().observeRefImages();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(scrollController: _scrollController),
      body: PrimaryScrollController(
        controller: _scrollController,
        child: SafeArea(
          child: Scrollbar(
            child: _Body(
              scrollController: _scrollController,
            ),
          ),
        ),
      ),
      floatingActionButton: const _AddRefImageButton(),
    );
  }
}

const _defaultListPadding = 16.0;

class _Body extends StatelessWidget {
  final ScrollController scrollController;

  const _Body({
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RefImagesCubit, RefImagesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loaded: (entriesUnsorted) {
            if (entriesUnsorted.isEmpty) {
              return const _EmptyPage();
            }
            // TODO: add custom sorting
            final entries = List<RefImageEntry>.from(entriesUnsorted)
              ..sort(
                (a, b) => a.info.dateAdded.compareTo(b.info.dateAdded),
              );
            return OrientationBuilder(
              builder: (context, orientation) {
                final size = MediaQuery.of(context).size;
                final type = getDeviceType(size);
                final columnCount = orientation == Orientation.landscape ||
                        type != DeviceScreenType.mobile
                    ? _ColumnCount.landscape
                    : _ColumnCount.portrait;
                final horizontalPadding = type == DeviceScreenType.mobile ||
                        orientation == Orientation.portrait
                    ? 0.0
                    : size.width / 8;

                return _ImagesList(
                  entries: entries,
                  columnCount: columnCount,
                  horizontalPadding: horizontalPadding,
                  scrollController: scrollController,
                );
              },
            );
          },
          loadingFailed: (error) => LoadingPageError(
            onRefresh: () => context.read<RefImagesCubit>().observeRefImages(),
          ),
        );
      },
    );
  }
}

class _ColumnCount {
  static const portrait = 2;
  static const landscape = 3;
}

class _ImagesList extends StatefulWidget {
  final List<RefImageEntry> entries;
  final double horizontalPadding;
  final int columnCount;
  final ScrollController scrollController;

  const _ImagesList({
    required this.entries,
    required this.horizontalPadding,
    required this.columnCount,
    required this.scrollController,
  });

  @override
  State<_ImagesList> createState() => _ImagesListState();
}

class _ImagesListState extends State<_ImagesList> {
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
      listener: (context, state) {
        state.maybeWhen(
          noSelection: () async {
            if (_controller.value.isSelecting) {
              await Navigator.of(context).maybePop();
              _controller.clear();
            }
          },
          orElse: () {},
        );
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
                    child: _ImageItem(
                      entry: entry,
                      isSelected: state.maybeWhen(
                        selected: (items) => items.contains(selectableItem),
                        orElse: () => false,
                      ),
                      selectableMode: state.maybeWhen(
                        selected: (_) => true,
                        orElse: () => false,
                      ),
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

class _ImageItem extends StatelessWidget {
  final RefImageEntry entry;
  final bool isSelected;
  final bool selectableMode;
  final VoidCallback? onTap;

  const _ImageItem({
    required this.entry,
    this.isSelected = false,
    this.selectableMode = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final child = entry.status?.when(
          inProgress: (id) => _LoadImageProgress(onTap: onTap),
          completed: (id, error) {
            if (error == null || error is! SaveRefImageStatusErrorSaveImage) {
              return _Image(
                thumbnail: entry.thumbnail,
                onTap: onTap,
              );
            } else {
              return _SaveImageError(
                error: error,
                onTap: selectableMode ? onTap : null,
              );
            }
          },
        ) ??
        _Image(
          thumbnail: entry.thumbnail,
          onTap: onTap,
        );
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: isSelected ? 0.0 : 2.0,
      child: Stack(
        children: [
          child,
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: _ImageItemSelectionControl(
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
                return SizedBox(
                  height: constraints.biggest.width,
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
  final VoidCallback? onTap;

  const _LoadImageProgress({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxWidth,
          child: InkWell(
            onTap: onTap,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}

class _SaveImageError extends StatelessWidget {
  final SaveRefImageStatusErrorSaveImage error;
  final VoidCallback? onTap;

  const _SaveImageError({
    required this.error,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap ?? () => _onTap(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline_rounded,
              color: theme.colorScheme.error,
              size: 48,
            ),
            const SizedBox(height: 8.0),
            Text(
              S.of(context).saveImageError,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.error,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            OutlinedButton(
              onPressed: onTap == null ? () => _onTap(context) : null,
              child: Text(S.of(context).show),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    _errorDialog(
      context,
      reportMsg: error.error.map(
        fs: (value) => value.error.map(
          io: (_) => 'I/O error',
        ),
        encrypt: (_) => 'Encryption error',
      ),
      dialogMsg: error.error.map(
        fs: (value) => value.error.map(
          io: (_) => S.of(context).ioError,
        ),
        encrypt: (_) => S.of(context).encryptionError,
      ),
      exception: error,
    );
  }
}

class _ImageItemSelectionControl extends StatefulWidget {
  final bool show;
  final bool isSelected;
  final VoidCallback? onSelected;

  const _ImageItemSelectionControl({
    this.show = false,
    this.isSelected = false,
    this.onSelected,
  });

  @override
  _ImageItemSelectionControlState createState() =>
      _ImageItemSelectionControlState();
}

class _ImageItemSelectionControlState extends State<_ImageItemSelectionControl>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: RoundCheckBox.animationDuration,
    vsync: this,
  );

  late final _showAnimation = CurvedAnimation(
    parent: _controller,
    curve: Curves.ease,
  );

  @override
  void initState() {
    super.initState();

    _switchShow();
  }

  @override
  void didUpdateWidget(_ImageItemSelectionControl oldWidget) {
    if (widget.show != oldWidget.show) {
      _switchShow();
    }

    super.didUpdateWidget(oldWidget);
  }

  void _switchShow() {
    if (widget.show) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _showAnimation,
      child: RoundCheckBox(
        isSelected: widget.isSelected,
        onSelected: widget.onSelected,
        animate: !_controller.isAnimating,
      ),
    );
  }
}

class _EmptyPage extends StatelessWidget {
  const _EmptyPage();

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

class _AddRefImageButton extends StatelessWidget {
  const _AddRefImageButton();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AddRefImageCubit, AddRefImageState>(
          listener: (context, state) {
            state.maybeWhen(
              addingImages: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(S.of(context).savingImageMessage),
                  ),
                );
              },
              noSecureKey: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(S.of(context).saveImageInvalidKey),
                  ),
                );
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<SystemPickerCubit, SystemPickerState>(
          listener: (context, state) {
            state.maybeWhen(
              selectImagesFailed: (e, stackTrace) => _errorDialog(
                context,
                reportMsg: 'Unable to select images',
                dialogMsg: S.of(context).selectImagesFailed,
                exception: e,
                stackTrace: stackTrace,
              ),
              imagesSelected: (files) {
                context.read<AddRefImageCubit>().addImages(files);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: DropdownFab(
        icon: const Icon(Icons.add),
        label: Text(S.of(context).add),
        menuWidth: 250,
        menuChildren: [
          DropdownFabMenuItem(
            leading: const Icon(Icons.photo_outlined),
            title: Text(S.of(context).selectImage),
            onTap: () => context
                .read<SystemPickerCubit>()
                .pickImages(ImageSource.gallery),
          ),
          DropdownFabMenuItem(
            leading: const Icon(Icons.camera_alt_outlined),
            title: Text(S.of(context).takePhoto),
            onTap: () {
              // TODO: add system/built-in camera picker option
              context.pushRoute(
                CameraPickerRoute(
                  onTakePhoto: (file) {
                    context.read<AddRefImageCubit>().addImages([file]);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

void _errorDialog(
  BuildContext context, {
  required String reportMsg,
  required String dialogMsg,
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
        content: Text(dialogMsg),
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
