// MIT License
//
// Copyright (c) 2019 zmtzawqlp
// Copyright (c) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'dart:ui' as ui show Codec, ImmutableBuffer;

import 'package:blink_comparison/ui/model/xfile_provider.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' hide FileImage;

class ExtendedXFileImageProvider extends XFileImage
    with ExtendedImageProvider<XFileImage> {
  const ExtendedXFileImageProvider(
    super.file, {
    super.scale,
    this.cacheRawData = false,
    this.imageCacheName,
  }) : assert(!kIsWeb, 'not support on web');

  /// Whether cache raw data if you need to get raw data directly.
  /// For example, we need raw image data to edit,
  /// but [ui.Image.toByteData()] is very slow. So we cache the image
  /// data here.
  @override
  final bool cacheRawData;

  /// The name of [ImageCache], you can define custom [ImageCache] to store this provider.
  @override
  final String? imageCacheName;

  @override
  ImageStreamCompleter loadImage(XFileImage key, ImageDecoderCallback decode) {
    return MultiFrameImageStreamCompleter(
      codec: _loadAsync(key, decode),
      scale: key.scale,
      debugLabel: key.file.path,
      informationCollector: () => <DiagnosticsNode>[
        ErrorDescription('Path: ${file.path}'),
      ],
    );
  }

  Future<ui.Codec> _loadAsync(
      XFileImage key, ImageDecoderCallback decode) async {
    assert(key == this);

    // TODO(jonahwilliams): making this sync caused test failures that seem to
    // indicate that we can fail to call evict unless at least one await has
    // occurred in the test.
    // https://github.com/flutter/flutter/issues/113044
    final int lengthInBytes = await file.length();
    if (lengthInBytes == 0) {
      // The file may become available later.
      PaintingBinding.instance.imageCache.evict(key);
      throw StateError('$file is empty and cannot be loaded as an image.');
    }
    // TODO(zmtzawqlp): https://github.com/flutter/flutter/pull/112892
    // if we use ImmutableBuffer.fromFilePath, we can't cache bytes to edit
    //
    if (cacheRawData) {
      final Uint8List bytes = await file.readAsBytes();
      return await instantiateImageCodec(bytes, decode);
    } else {
      return decode(
          await ui.ImmutableBuffer.fromUint8List(await file.readAsBytes()));
    }
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is ExtendedXFileImageProvider &&
        file.path == other.file.path &&
        scale == other.scale &&
        cacheRawData == other.cacheRawData &&
        imageCacheName == other.imageCacheName;
  }

  @override
  int get hashCode => Object.hash(
        file.path,
        scale,
        cacheRawData,
        imageCacheName,
      );

  @override
  String toString() =>
      '${objectRuntimeType(this, 'FileImage')}("${file.path}", scale: $scale)';
}
