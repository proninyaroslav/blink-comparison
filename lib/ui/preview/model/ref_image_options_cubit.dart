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
import 'package:blink_comparison/ui/preview/model/ref_image_options_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RefImageOptionsCubit extends Cubit<RefImageOptionsState> {
  final AppSettings _pref;

  RefImageOptionsCubit(this._pref)
      : super(const RefImageOptionsState.initial());

  Future<void> load() async {
    emit(RefImageOptionsState.loaded(
      RefImageOptions(opacity: await _pref.refImageOverlayOpacity),
    ));
  }

  Future<void> setOpacity(double opacity, {bool saveInSettings = true}) async {
    if (state case RefImageOptionsState(:final options?)) {
      if (saveInSettings) {
        await _pref.setRefImageOverlayOpacity(opacity);
      }
      emit(RefImageOptionsState.opacityChanged(
        options.copyWith(opacity: opacity),
      ));
    }
  }
}
