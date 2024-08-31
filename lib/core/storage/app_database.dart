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

import 'package:blink_comparison/core/storage/dao/password_dao.dart';
import 'package:blink_comparison/env.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

import 'dao/dao.dart';

abstract class AppDatabase {
  RefImageDao get referenceImageDao;

  PasswordDao get passwordDao;
}

@Singleton(as: AppDatabase, env: [Env.dev, Env.prod])
class AppDatabaseImpl implements AppDatabase {
  final Database _db;

  AppDatabaseImpl(this._db);

  @override
  RefImageDao get referenceImageDao => RefImageDao(_db);

  @override
  PasswordDao get passwordDao => PasswordDao(_db);
}
