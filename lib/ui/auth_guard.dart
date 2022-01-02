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

import 'package:auto_route/auto_route.dart';

import 'app_router.dart';

class AuthGuard extends AutoRedirectGuard {
  bool _authenticated = false;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_authenticated) {
      resolver.next(true);
    } else {
      router.push(
        AuthRoute(
          onAuthSuccess: () async {
            _authenticated = true;
            router.removeLast();
            resolver.next(_authenticated);
          },
        ),
      );
    }
  }
}
