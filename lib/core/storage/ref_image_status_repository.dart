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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/core/service/save_ref_image_service.dart';
import 'package:injectable/injectable.dart';

abstract class RefImageStatusRepository {
  Future<List<SaveRefImageStatus>> getAllSaveStatus();

  Stream<List<SaveRefImageStatus>> observeAllSaveStatus();
}

@Singleton(as: RefImageStatusRepository)
class RefImageStatusRepositoryImpl implements RefImageStatusRepository {
  final SaveRefImageService _service;

  RefImageStatusRepositoryImpl(this._service);

  @override
  Future<List<SaveRefImageStatus>> getAllSaveStatus() =>
      _service.getCurrentStatus();

  @override
  Stream<List<SaveRefImageStatus>> observeAllSaveStatus() =>
      _service.observeStatus();
}
