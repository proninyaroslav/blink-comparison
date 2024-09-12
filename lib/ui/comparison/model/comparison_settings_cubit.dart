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

import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/ui/comparison/model/comparison_settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComparisonSettingsCubit extends Cubit<ComparisonSettingsState> {
  final AppSettings _pref;

  ComparisonSettingsCubit(this._pref)
      : super(const ComparisonSettingsState.initial());

  Future<void> load() async {
    emit(ComparisonSettingsState.loaded(
      refImageBorderColor: await _pref.refImageBorderColor,
    ));
  }

  void setRefImageBorderColor(int color) {
    emit(ComparisonSettingsState.changed(
      refImageBorderColor: color,
    ));
  }
}
