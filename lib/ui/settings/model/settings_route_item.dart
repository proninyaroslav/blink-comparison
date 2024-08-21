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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_route_item.freezed.dart';

@freezed
class SettingsRouteItem with _$SettingsRouteItem {
  const factory SettingsRouteItem.appearance() = SettingsRouteItemAppearance;

  const factory SettingsRouteItem.camera() = SettingsRouteItemCamera;

  static const List<SettingsRouteItem> all = [
    SettingsRouteItem.appearance(),
    SettingsRouteItem.camera(),
  ];
}
