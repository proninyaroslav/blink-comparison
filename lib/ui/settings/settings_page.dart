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
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/persistent_auth_factor_repository.dart';
import 'package:blink_comparison/injector.dart';
import 'package:blink_comparison/ui/settings/components/settings_pages_list.dart';
import 'package:blink_comparison/ui/settings/model/appearance_cubit.dart';
import 'package:blink_comparison/ui/settings/model/behavior_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locale.dart';
import '../routes/routes.dart';
import 'model/camera_cubit.dart';
import 'model/settings_route_item.dart';

@RoutePage()
class SettingsPage extends StatefulWidget implements AutoRouteWrapper {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppearanceSettingsCubit(
            getIt<AppSettings>(),
          ),
        ),
        BlocProvider(
          create: (context) => CameraSettingsCubit(
            getIt<AppSettings>(),
          ),
        ),
        BlocProvider(
          create: (context) => BehaviorSettingsCubit(
            getIt<AppSettings>(),
            getIt<AuthFactorRepository>(),
            getIt<PersistentAuthFactorRepository>(),
          ),
        ),
      ],
      child: this,
    );
  }
}

class _SettingsPageState extends State<SettingsPage> {
  final _routerKey = GlobalKey<AutoRouterState>();
  final _tabsKey = GlobalKey<AutoTabsRouterState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        context.read<AppearanceSettingsCubit>().load(),
        context.read<CameraSettingsCubit>().load(),
        context.read<BehaviorSettingsCubit>().load(),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => AutoRouter(
        key: _routerKey,
      ),
      tablet: (context) => _TwoPaneBody(
        initRoute: SettingsRouteItem.all.first,
        tabsKey: _tabsKey,
      ),
    );
  }
}

class _TwoPaneBody extends StatefulWidget {
  final SettingsRouteItem initRoute;
  final GlobalKey<AutoTabsRouterState> tabsKey;

  const _TwoPaneBody({
    required this.initRoute,
    required this.tabsKey,
  });

  @override
  _TwoPaneBodyState createState() => _TwoPaneBodyState();
}

class _TwoPaneBodyState extends State<_TwoPaneBody> {
  late SettingsRouteItem _currentRoute;
  final List<PageRouteInfo> _routes = SettingsRouteItem.all
      .map(
        (r) => switch (r) {
          SettingsRouteItemAppearance() => const AppearanceSettingsRoute(),
          SettingsRouteItemCamera() => const CameraSettingsRoute(),
          SettingsRouteItemBehavior() => const BehaviorSettingsRoute()
        },
      )
      .toList();

  @override
  void initState() {
    super.initState();

    _currentRoute = widget.initRoute;
  }

  @override
  Widget build(BuildContext context) {
    final textDirection = Directionality.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).settings,
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          final int pagesListFlex =
              orientation == Orientation.landscape ? 2 : 3;
          const int pageFlex = 7;

          final mediaQuery = MediaQuery.of(context);
          final startPadding = textDirection == TextDirection.rtl
              ? mediaQuery.padding.right
              : mediaQuery.padding.left;
          final width = mediaQuery.size.width;
          final flexSum = pagesListFlex + pageFlex;
          final pagesListWidth =
              (pagesListFlex * width) / flexSum + startPadding;
          final pageWidth = (pageFlex * width) / flexSum - startPadding;

          return Row(
            children: [
              SizedBox(
                width: pagesListWidth,
                child: SettingsPagesList(
                  selectedRoute: _currentRoute,
                  onSelected: (route) {
                    setState(() => _currentRoute = route);
                    _onSelected(route);
                  },
                ),
              ),
              SizedBox(
                width: pageWidth,
                child: MediaQuery.removePadding(
                  context: context,
                  removeLeft: textDirection != TextDirection.rtl,
                  removeRight: textDirection == TextDirection.rtl,
                  child: AutoTabsRouter(
                    key: widget.tabsKey,
                    routes: _routes,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  void _onSelected(SettingsRouteItem route) {
    widget.tabsKey.currentState?.controller?.setActiveIndex(
      SettingsRouteItem.all.indexOf(route),
    );
  }
}
