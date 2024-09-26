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
import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/ref_image_repository.dart';
import 'package:blink_comparison/core/storage/ref_image_status_repository.dart';
import 'package:blink_comparison/injector.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:blink_comparison/ui/home/components/add_ref_image_button.dart';
import 'package:blink_comparison/ui/home/components/images_list.dart';
import 'package:blink_comparison/ui/home/model/ref_images_actions_state.dart';
import 'package:blink_comparison/ui/home/model/ref_images_cubit.dart';
import 'package:blink_comparison/ui/home/model/ref_images_state.dart';
import 'package:blink_comparison/ui/model/error_report_cubit.dart';
import 'package:blink_comparison/ui/model/system_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
          create: (context) => AddRefImageCubit(
            getIt<RefImageRepository>(),
            getIt<AppSettings>(),
          ),
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

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<RefImagesCubit>().observeRefImages();
    });
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
      floatingActionButton: const AddRefImageButton(),
    );
  }
}

class _Body extends StatelessWidget {
  final ScrollController scrollController;

  const _Body({
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RefImagesCubit, RefImagesState>(
      builder: (context, state) {
        switch (state) {
          case RefImagesStateInitial():
            return const Center(child: CircularProgressIndicator());
          case RefImagesStateLoaded(entries: final entriesUnsorted):
            if (entriesUnsorted.isEmpty) {
              return const ImagesListEmptyPage();
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

                return ImagesList(
                  entries: entries,
                  columnCount: columnCount,
                  horizontalPadding: horizontalPadding,
                  scrollController: scrollController,
                );
              },
            );
          case RefImagesStateLoadingFailed():
            return LoadingPageError(
              onRefresh: () =>
                  context.read<RefImagesCubit>().observeRefImages(),
            );
        }
      },
    );
  }
}

class _ColumnCount {
  static const portrait = 2;
  static const landscape = 3;
}
