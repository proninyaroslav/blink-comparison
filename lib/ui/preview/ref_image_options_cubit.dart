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

part 'ref_image_options_cubit.freezed.dart';

@freezed
class RefImageOptionsState with _$RefImageOptionsState {
  const factory RefImageOptionsState.initial(
    RefImageOptions options,
  ) = RefImageOptionsStateInitial;

  const factory RefImageOptionsState.opacityChanged(
    RefImageOptions options,
  ) = RefImageOptionsStateOpacityChanged;
}

@freezed
class RefImageOptions with _$RefImageOptions {
  const factory RefImageOptions({
    required double opacity,
  }) = _RefImageOptions;
}

@injectable
class RefImageOptionsCubit extends Cubit<RefImageOptionsState> {
  final AppSettings _pref;

  @FactoryMethod(preResolve: true)
  static Future<RefImageOptionsCubit> init(AppSettings pref) async {
    return RefImageOptionsCubit(
      pref,
      RefImageOptions(
        opacity: await pref.refImageOverlayOpacity,
      ),
    );
  }

  RefImageOptionsCubit(this._pref, RefImageOptions initialValue)
      : super(RefImageOptionsState.initial(initialValue));

  Future<void> setOpacity(double opacity, {bool saveInSettings = true}) async {
    if (saveInSettings) {
      await _pref.setRefImageOverlayOpacity(opacity);
    }
    emit(RefImageOptionsState.opacityChanged(
      state.options.copyWith(opacity: opacity),
    ));
  }
}
