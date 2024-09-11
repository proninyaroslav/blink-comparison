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

import 'dart:collection';

import 'package:blink_comparison/core/storage/auth_factor_repository.dart';
import 'package:flutter/material.dart';

import '../logger.dart';

typedef AppLifecycleListenerBuilder = AppLifecycleListener Function(
  ValueChanged<AppLifecycleState> onStateChange,
);

/// Removes the auth factor if the app is, for example, minimized,
/// and requests re-authorization if the auth factor is missing.
final class AuthLifecycleObserver {
  late final AppLifecycleListener _lifecycleListener;
  final AuthFactorRepository _factorRepo;
  // The queue size is calculated from the following life cycle sequence,
  // when the app is minimized:
  // paused --> hidden --> inactive --> resumed
  final ListQueue<AppLifecycleState> _stateQueue = ListQueue(4);

  final Function onReevaluateGuards;

  AuthLifecycleObserver(
    this._factorRepo, {
    AppLifecycleListenerBuilder? listenerBuilder,
    required this.onReevaluateGuards,
  }) {
    _lifecycleListener = listenerBuilder?.call(_onStateChange) ??
        AppLifecycleListener(onStateChange: _onStateChange);
  }

  void dispose() {
    _lifecycleListener.dispose();
  }

  void _onStateChange(AppLifecycleState state) {
    _pushToQueue(state);

    if (_isOnStop()) {
      log().d('App stopped; removing auth factor');
      final res = _factorRepo.remove();
      _handleRemoveResult(res);
    } else if (_isOnStart()) {
      if (!_factorRepo.hasSecureKey()) {
        onReevaluateGuards();
      }
    }
  }

  // When the app is minimized
  bool _isOnStop() =>
      _stateQueue.last == AppLifecycleState.paused ||
      _stateQueue.last == AppLifecycleState.detached;

  // When the app is maximized (revealed)
  bool _isOnStart() =>
      _stateQueue.last == AppLifecycleState.resumed &&
      _stateQueue.first == AppLifecycleState.paused;

  void _handleRemoveResult(AuthFactorModifyResult res) {
    if (res
        case AuthFactorModifyResultFailed(
          :final error,
          :final stackTrace,
        )) {
      log().e(
        'Unable to remove factor',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  void _pushToQueue(AppLifecycleState state) {
    _stateQueue.add(state);
    if (_stateQueue.length > 4) {
      _stateQueue.removeFirst();
    }
  }
}
