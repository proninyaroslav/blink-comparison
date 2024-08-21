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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/storage/password_repository.dart';
import 'package:blink_comparison/ui/auth/model/sign_up_state.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final PasswordRepository _passwordRepo;

  SignUpCubit(this._passwordRepo) : super(const SignUpState.initial());

  void passwordChanged(String value) {
    _handleCurrentState((password, repeatPassword) {
      emit(
        SignUpState.passwordChanged(
          password: Password(value: value),
          repeatPassword: repeatPassword,
        ),
      );
    });
  }

  void repeatPasswordChanged(String value) {
    _handleCurrentState((password, repeatPassword) {
      emit(
        SignUpState.passwordChanged(
          password: password,
          repeatPassword: RepeatPassword(value: value),
        ),
      );
    });
  }

  Future<void> submit() async {
    await state.when(
      initial: _submit,
      passwordChanged: _submit,
      invalidPassword: _submit,
      savePasswordFailed: (password, repeatPassword, exception, stackTrace) =>
          _submit(password, repeatPassword),
      savingPassword: () {},
      passwordSaved: () {},
      passwordMismatch: (password, repeatPassword) =>
          _submit(password, repeatPassword),
    );
  }

  Future<void> _submit(
    Password password,
    RepeatPassword repeatPassword,
  ) async {
    final passRes = PasswordValidator.of(password).validate();
    final repeatPassRes = RepeatPasswordValidator.of(repeatPassword).validate();

    PasswordError? passErr;
    RepeatPasswordError? repeatPassErr;
    String? passwordStr;
    String? repeatPasswordStr;

    passRes.when(
      success: (value) {
        passwordStr = value;
      },
      error: (reason) {
        passErr = reason;
      },
    );
    repeatPassRes.when(
      success: (value) {
        repeatPasswordStr = value;
      },
      error: (reason) {
        repeatPassErr = reason;
      },
    );

    if (passwordStr == null || repeatPasswordStr == null) {
      emit(
        SignUpState.invalidPassword(
          password: password.copyWith(error: passErr),
          repeatPassword: repeatPassword.copyWith(error: repeatPassErr),
        ),
      );
      return;
    }

    if (passwordStr != repeatPasswordStr) {
      emit(
        SignUpState.passwordMismatch(
          password: password,
          repeatPassword: repeatPassword.copyWith(
            error: const RepeatPasswordError.mismatch(),
          ),
        ),
      );
      return;
    }

    emit(const SignUpState.savingPassword());
    final res = await _passwordRepo.insert(
      type: const PasswordType.encryptKey(),
      password: passwordStr!,
    );
    res.when(
      (value) => emit(const SignUpState.passwordSaved()),
      error: (e) => e.when(
        database: (exception, stackTrace) {
          emit(
            SignUpState.savePasswordFailed(
              password: password,
              repeatPassword: repeatPassword,
              exception: exception,
              stackTrace: stackTrace,
            ),
          );
        },
        fs: (e) => e.when(io: (e, stackTrace) {
          emit(
            SignUpState.savePasswordFailed(
              password: password,
              repeatPassword: repeatPassword,
              exception: e,
              stackTrace: stackTrace,
            ),
          );
        }),
      ),
    );
  }

  void _handleCurrentState(void Function(Password, RepeatPassword) onEmit) {
    state.when(
      initial: onEmit,
      passwordChanged: onEmit,
      invalidPassword: onEmit,
      savePasswordFailed: (password, repeatPassword, exception, stackTrace) =>
          onEmit(password, repeatPassword),
      passwordMismatch: (password, repeatPassword) =>
          onEmit(password, repeatPassword),
      savingPassword: () {},
      passwordSaved: () {},
    );
  }
}
