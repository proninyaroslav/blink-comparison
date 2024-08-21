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
import 'package:blink_comparison/ui/model/showcase_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

export 'package:blink_comparison/core/settings/model.dart';

@injectable
class ShowcaseCubit extends Cubit<ShowcaseState> {
  final AppSettings _pref;

  @FactoryMethod(preResolve: true)
  static Future<ShowcaseCubit> init(AppSettings pref) async {
    return ShowcaseCubit(pref, await pref.completedShowcases);
  }

  ShowcaseCubit(this._pref, Set<ShowcaseType> completedShowcases)
      : super(ShowcaseState.initial(completedShowcases));

  Future<void> completed(ShowcaseType type) async {
    final completed = {...state.completed, type};
    await _pref.setCompletedShowcases(completed);
    emit(ShowcaseState.changed(completed));
  }
}
