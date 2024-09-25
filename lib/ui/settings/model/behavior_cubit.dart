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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/settings/model/behavior_state.dart';
import 'package:bloc/bloc.dart';

import '../../../logger.dart';

class BehaviorSettingsCubit extends Cubit<BehaviorState> {
  final AppSettings _pref;
  final AuthFactorRepository _factorRepo;
  final PasswordRepository _passwordRepo;

  BehaviorSettingsCubit(
    this._pref,
    this._factorRepo,
    this._passwordRepo,
  ) : super(const BehaviorState.initial());

  Future<void> load() async {
    emit(BehaviorState.loaded(
      BehaviorInfo(
        encryption: _pref.encryptionPreferenceSync,
      ),
    ));
  }

  Future<void> setEncryptionPreference(EncryptionPreference value) async {
    if (state case BehaviorState(:final info?)) {
      await _pref.setEncryptionPreference(value);
      emit(BehaviorState.encryptionChanged(
        info.copyWith(encryption: value),
      ));

      if (value case EncryptionPreferenceNone()) {
        await _removePassword();
      }
    }
  }

  Future<void> _removePassword() async {
    _factorRepo.remove();
    final res = await _passwordRepo.getByType(const PasswordType.encryptKey());
    switch (res) {
      case StorageResultValue(:final value?):
        final res = await _passwordRepo.delete(value);
        if (res case StorageResultError(:final error)) {
          log().e('Unable to delete password', error: error);
        }
      case StorageResultError(:final error):
        log().e('Unable to get password', error: error);
      case _:
        break;
    }
  }
}
