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

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class EditImagePropertiesSheet extends StatefulWidget {
  const EditImagePropertiesSheet({super.key});

  @override
  State<EditImagePropertiesSheet> createState() =>
      _EditImagePropertiesSheetState();
}

class _EditImagePropertiesSheetState extends State<EditImagePropertiesSheet>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      showDragHandle: true,
      animationController: BottomSheet.createAnimationController(this),
      builder: (context) {
        return const SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 16.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Title(),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(hintText: 'Label'),
                  )
                ],
              ),
            ),
          ),
        );
      },
      onClosing: () {
        context.maybePop();
      },
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Properties',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
