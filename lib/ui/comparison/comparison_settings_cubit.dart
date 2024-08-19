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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'comparison_settings_cubit.freezed.dart';

@freezed
class ComparisonSettingsState with _$ComparisonSettingsState {
  const factory ComparisonSettingsState.initial({
    required int refImageBorderColor,
  }) = ComparisonSettingsStateInitial;

  const factory ComparisonSettingsState.changed({
    required int refImageBorderColor,
  }) = ComparisonSettingsStateChanged;
}

@injectable
class ComparisonSettingsCubit extends Cubit<ComparisonSettingsState> {
  @FactoryMethod(preResolve: true)
  static Future<ComparisonSettingsCubit> init(AppSettings pref) async {
    return ComparisonSettingsCubit(
      refImageBorderColor: await pref.refImageBorderColor,
    );
  }

  ComparisonSettingsCubit({required int refImageBorderColor})
      : super(ComparisonSettingsState.initial(
          refImageBorderColor: refImageBorderColor,
        ));

  void setRefImageBorderColor(int color) {
    emit(ComparisonSettingsState.changed(
      refImageBorderColor: color,
    ));
  }
}
