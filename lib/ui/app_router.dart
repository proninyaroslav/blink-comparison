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
import 'package:blink_comparison/ui/auth_guard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: RefImageListRoute.page,
      path: '/',
      guards: [AuthGuard()],
      initial: true,
    ),
    AutoRoute(page: AuthRoute.page, path: '/auth'),
    AutoRoute(
      page: RefImagePreviewRoute.page,
      path: '/photo-preview',
      guards: [AuthGuard()],
    ),
    AutoRoute(
      page: CameraPickerRoute.page,
      path: '/camera-picker',
    ),
    AutoRoute(
      page: BlinkComparisonRoute.page,
      path: '/blink-comparison',
      guards: [AuthGuard()],
    ),
    AutoRoute(
      page: SettingsRoute.page,
      path: '/settings',
      children: [
        AutoRoute(
          page: SettingsRoutesListRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: 'appearance',
          page: AppearanceSettingsRoute.page,
        ),
        AutoRoute(
          path: 'camera',
          page: CameraSettingsRoute.page,
        ),
      ],
    ),
    AutoRoute(page: RouteNotFound.page, path: '*'),
  ];
}
