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

import 'package:blink_comparison/ui/components/unfocus.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

const _pagePadding = EdgeInsets.all(16.0);

class AuthScaffold extends StatelessWidget {
  final Widget child;
  const AuthScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Unfocus(
          child: Column(
            children: [
              Expanded(
                child: Scrollbar(
                  child: Center(
                    child: SingleChildScrollView(
                      child: ResponsiveBuilder(
                        builder: (context, sizingInfo) {
                          final orientation =
                              MediaQuery.of(context).orientation;
                          final width = _getAdaptiveWidth(
                            orientation: orientation,
                            sizingInfo: sizingInfo,
                          );
                          return Container(
                            constraints: BoxConstraints(maxWidth: width),
                            padding: _pagePadding,
                            child: child,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _getAdaptiveWidth({
    required SizingInformation sizingInfo,
    required Orientation orientation,
  }) {
    if (sizingInfo.isMobile) {
      if (orientation == Orientation.landscape) {
        return sizingInfo.screenSize.width / 2;
      } else {
        return double.infinity;
      }
    } else if (orientation == Orientation.landscape) {
      return sizingInfo.screenSize.width / 3;
    } else {
      return sizingInfo.screenSize.width / 2;
    }
  }
}
