// MIT License

// Copyright (c) 2021 7c00 <i@7c00.cc>

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'dart:ui' as ui;

import 'package:cross_file/cross_file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

@immutable
class XFileImage extends ImageProvider<XFileImage> {
  /// Creates an object that decodes a [XFile] as an image.
  ///
  /// The arguments must not be null.
  const XFileImage(this.file, {this.scale = 1.0});

  /// The file to decode into an image.
  final XFile file;

  /// The scale to place in the [ImageInfo] object of the image.
  final double scale;

  @override
  Future<XFileImage> obtainKey(final ImageConfiguration configuration) =>
      SynchronousFuture<XFileImage>(this);

  @override
  ImageStreamCompleter loadImage(
    final XFileImage key,
    final ImageDecoderCallback decode,
  ) =>
      MultiFrameImageStreamCompleter(
        codec: _loadAsync(key, decode),
        scale: key.scale,
        debugLabel: key.file.path,
        informationCollector: () sync* {
          yield ErrorDescription('Path: ${file.path}');
        },
      );

  Future<ui.Codec> _loadAsync(
    final XFileImage key,
    final ImageDecoderCallback decode,
  ) async {
    final bytes = await file.readAsBytes();

    if (bytes.lengthInBytes == 0) {
      // The file may become available later.
      PaintingBinding.instance.imageCache.evict(key);
      throw StateError('$file is empty and cannot be loaded as an image.');
    }

    final buffer = await ui.ImmutableBuffer.fromUint8List(bytes);

    return decode(buffer);
  }

  @override
  bool operator ==(final Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is XFileImage &&
        other.file.path == file.path &&
        other.scale == scale;
  }

  @override
  int get hashCode => Object.hash(file.path, scale);

  @override
  String toString() =>
      '${objectRuntimeType(this, 'XFileImage')}("${file.path}", scale: $scale)';
}
