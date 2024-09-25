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

import 'dart:async';

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/fs/fs_result.dart';
import 'package:blink_comparison/core/settings/app_settings.dart';
import 'package:blink_comparison/core/storage/persistent_auth_factor_repository.dart';
import 'package:blink_comparison/core/storage/storage_result.dart';
import 'package:blink_comparison/ui/auth/model/auth_state.dart';
import 'package:bloc/bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final PersistentAuthFactorRepository _passwordRepo;
  final AppSettings _pref;

  AuthCubit(this._passwordRepo, this._pref) : super(const AuthState.initial());

  Future<void> load() async {
    final res = await _passwordRepo.getById(
      PersistentAuthFactorId.password,
    );
    switch (_pref.encryptionPreferenceSync) {
      case null:
        if (res case StorageResultValue(value: final _?)) {
          // We already have the password, no need to ask
          await setEncryptionPreference(const EncryptionPreference.password());
        } else {
          emit(const AuthState.noEncryptPreferences());
        }
      case EncryptionPreferenceNone():
        emit(const AuthState.noAuthRequired());
      case EncryptionPreferencePassword():
        final newState = switch (res) {
          StorageResultValue(value: final _?) =>
            const AuthState.signInRequired(),
          StorageResultValue() => const AuthState.signUpRequired(),
          StorageResultError(:final error) => switch (error) {
              StorageErrorDatabase(:final exception, :final stackTrace) =>
                AuthState.error(
                  exception: exception,
                  stackTrace: stackTrace,
                ),
              StorageErrorFs(:final error) => switch (error) {
                  FsErrorIO(:final exception, :final stackTrace) =>
                    AuthState.error(
                      exception: exception,
                      stackTrace: stackTrace,
                    ),
                }
            }
        };
        emit(newState);
    }
  }

  Future<void> setEncryptionPreference(EncryptionPreference preference) async {
    await _pref.setEncryptionPreference(preference);
    await load();
  }
}
