// Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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
import 'package:blink_comparison/ui/camera_picker/camera_picker_page.dart';
import 'package:blink_comparison/ui/preview/ref_image_preview_page.dart';

import 'auth/auth_page.dart';
import 'comparison/blink_comparison_page.dart';
import 'home/ref_image_list_page.dart';
import 'settings/page/settings_pages_list_page.dart';
import 'settings/settings.dart';
import 'widget/page_not_found.dart';

export 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: RefImageListPage,
      path: '/',
      guards: [AuthGuard],
      initial: true,
    ),
    AutoRoute(page: AuthPage, path: '/auth'),
    AutoRoute(
      page: RefImagePreviewPage,
      path: '/photo-preview',
      guards: [AuthGuard],
    ),
    AutoRoute(
      page: CameraPickerPage,
      path: '/camera-picker',
    ),
    AutoRoute(
      page: BlinkComparisonPage,
      path: '/blink-comparison',
      guards: [AuthGuard],
    ),
    AutoRoute(
      page: SettingsPage,
      path: '/settings',
      children: [
        AutoRoute(
          page: SettingsPagesListPage,
          initial: true,
        ),
        AutoRoute(
          path: 'appearance',
          page: AppearanceSettingsPage,
        ),
        AutoRoute(
          path: 'camera',
          page: CameraSettingsPage,
        ),
      ],
    ),
    AutoRoute(page: PageNotFound, path: '*'),
  ],
)
class $AppRouter {}
