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

import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:injectable/injectable.dart';

abstract class Thumbnailer {
  Future<Uint8List> build(Uint8List src);
}

const _thumbnailSize = 240;

@Injectable(as: Thumbnailer)
class ThumbnailerImpl implements Thumbnailer {
  @override
  Future<Uint8List> build(Uint8List src) =>
      FlutterImageCompress.compressWithList(
        src,
        minWidth: _thumbnailSize,
        minHeight: _thumbnailSize,
      );
}
