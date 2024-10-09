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

import 'package:blink_comparison/core/entity/entity.dart';
import 'package:blink_comparison/ui/components/edit_image_metadata_sheet.dart';
import 'package:flutter/material.dart';

class EditProperties extends StatefulWidget {
  final RefImageInfo info;
  final ValueChanged<RefImageInfo> onDone;

  const EditProperties({
    super.key,
    required this.info,
    required this.onDone,
  });

  @override
  State<EditProperties> createState() => _EditPropertiesState();
}

class _EditPropertiesState extends State<EditProperties> {
  late final TextEditingController _labelController;

  @override
  void initState() {
    super.initState();

    _labelController = TextEditingController(text: widget.info.label);
  }

  @override
  void dispose() {
    _labelController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        final label = _labelController.text;
        widget.onDone(
          widget.info.copyWith(label: label.isEmpty ? null : label),
        );
      },
      child: EditImagePropertiesSheet(
        labelController: _labelController,
      ),
    );
  }
}
