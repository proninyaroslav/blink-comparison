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

import 'package:blink_comparison/ui/components/portrait_only_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ButtonsBar extends StatelessWidget {
  final Widget flashButton;
  final Widget flipCameraButton;
  final Widget takePhotoButton;

  const ButtonsBar({
    super.key,
    required this.flashButton,
    required this.flipCameraButton,
    required this.takePhotoButton,
  });

  @override
  Widget build(BuildContext context) {
    return PortraitOnlyWidget(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ResponsiveBuilder(
          builder: (context, sizingInfo) {
            return Container(
              padding: const EdgeInsets.only(bottom: 16.0),
              width: getAdaptiveWidth(sizingInfo),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  flipCameraButton,
                  takePhotoButton,
                  flashButton,
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  double? getAdaptiveWidth(SizingInformation sizingInfo) {
    if (sizingInfo.isMobile) {
      return null;
    } else {
      return sizingInfo.screenSize.width / 3;
    }
  }
}
