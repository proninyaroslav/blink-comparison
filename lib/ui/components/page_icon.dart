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

import 'dart:math';

import 'package:flutter/material.dart';

class PageIcon extends StatelessWidget {
  final IconData icon;
  final double ratio;
  final double opacity;

  const PageIcon({
    super.key,
    required this.icon,
    this.ratio = 2.0,
    this.opacity = 0.1,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenSize = MediaQuery.of(context).size;
        final sizeList = [
          screenSize.width,
          screenSize.height,
          constraints.maxWidth,
          constraints.maxHeight,
        ];
        final minSize = sizeList.fold(sizeList[0], min);
        final size = minSize / ratio;
        return SizedBox(
          width: size,
          height: size,
          child: FittedBox(
            child: Icon(
              icon,
              color: Theme.of(context).iconTheme.color!.withOpacity(opacity),
              grade: 200,
            ),
          ),
        );
      },
    );
  }
}
