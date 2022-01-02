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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'blink_comparison_cubit.freezed.dart';

@freezed
class BlinkComparisonState with _$BlinkComparisonState {
  const factory BlinkComparisonState.initial() = BlinkComparisonStateInitial;

  const factory BlinkComparisonState.showRefImage() =
      BlinkComparisonStateShowRefImage;

  const factory BlinkComparisonState.showTakenPhoto() =
      BlinkComparisonStateShowTakenPhoto;
}

@injectable
class BlinkComparisonCubit extends Cubit<BlinkComparisonState> {
  BlinkComparisonCubit() : super(const BlinkComparisonState.initial());

  void switchImage() {
    emit(state.when(
      initial: () => const BlinkComparisonState.showRefImage(),
      showRefImage: () => const BlinkComparisonState.showTakenPhoto(),
      showTakenPhoto: () => const BlinkComparisonState.showRefImage(),
    ));
  }
}
