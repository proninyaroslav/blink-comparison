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
import 'package:flutter/services.dart';
import 'package:material_symbols_icons/symbols.dart';

class FlashButton extends StatefulWidget {
  final bool enabled;
  final ValueChanged<bool> onSwitch;

  const FlashButton({
    super.key,
    required this.enabled,
    required this.onSwitch,
  });

  @override
  State<FlashButton> createState() => _FlashButtonState();
}

class _FlashButtonState extends State<FlashButton> {
  late bool _enabled = widget.enabled;

  @override
  void didChangeDependencies() {
    setState(() {
      _enabled = widget.enabled;
    });
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant FlashButton oldWidget) {
    if (oldWidget.enabled != widget.enabled) {
      setState(() {
        _enabled = widget.enabled;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return PortraitOnlyWidget(
      direction: RotateDirection.clockwise,
      child: Material(
        shape: const CircleBorder(),
        color: Colors.black38,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            HapticFeedback.lightImpact();
            widget.onSwitch.call(!_enabled);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              _enabled ? Symbols.flash_on_rounded : Symbols.flash_off_rounded,
              color: Colors.white,
              fill: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
