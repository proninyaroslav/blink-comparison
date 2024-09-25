// Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import 'package:blink_comparison/core/settings/model.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'behavior_state.freezed.dart';

@freezed
sealed class BehaviorState with _$BehaviorState {
  const factory BehaviorState.initial({
    @Default(null) BehaviorInfo? info,
  }) = BehaviorStateInitial;

  const factory BehaviorState.loaded(
    BehaviorInfo info,
  ) = BehaviorStateLoaded;

  const factory BehaviorState.encryptionChanged(
    BehaviorInfo info,
  ) = BehaviorStateEncryptionChanged;
}

@freezed
class BehaviorInfo with _$BehaviorInfo {
  const factory BehaviorInfo({
    required EncryptionPreference? encryption,
  }) = _BehaviorInfo;
}
