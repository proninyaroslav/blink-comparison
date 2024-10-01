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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_border/multi_border.dart';

class TakePhotoButton extends StatelessWidget {
  final VoidCallback? onTap;

  const TakePhotoButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      color: Colors.black38,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTapDown: (details) {
          if (onTap != null) {
            HapticFeedback.mediumImpact();
          }
        },
        onTapUp: (details) {
          if (onTap != null) {
            HapticFeedback.lightImpact();
            onTap!();
          }
        },
        child: SizedBox(
          width: 90.0,
          height: 90.0,
          child: Center(
            child: Container(
              width: 65.0,
              height: 65.0,
              decoration: MultiBorderDecoration(
                borderSides: [
                  BorderSide(
                    color: Theme.of(context).colorScheme.surface,
                    width: 3.0,
                  ),
                  BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 4.0,
                  ),
                ],
                innerRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
