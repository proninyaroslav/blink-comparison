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

import 'package:blink_comparison/ui/preview/model/ref_image_options_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../locale.dart';
import '../model/ref_image_options_cubit.dart';

class OpacityBar extends StatefulWidget {
  const OpacityBar({super.key});

  @override
  State<OpacityBar> createState() => _OpacityBarState();
}

class _OpacityBarState extends State<OpacityBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RefImageOptionsCubit>();
    return BottomSheet(
      showDragHandle: true,
      animationController: BottomSheet.createAnimationController(this),
      builder: (context) {
        return SafeArea(
          child: BlocBuilder<RefImageOptionsCubit, RefImageOptionsState>(
            buildWhen: (prev, next) =>
                next is RefImageOptionsStateOpacityChanged,
            builder: (context, state) {
              final opacity = state.options!.opacity;
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _Title(),
                    Slider(
                      value: opacity,
                      divisions: 100,
                      label: _formatLabel(opacity),
                      semanticFormatterCallback: _formatLabel,
                      onChanged: (value) async {
                        await cubit.setOpacity(value, saveInSettings: false);
                      },
                      onChangeEnd: (value) async {
                        await cubit.setOpacity(value);
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
      onClosing: () {
        Navigator.of(context).maybePop();
      },
    );
  }

  String _formatLabel(double opacity) => '${(opacity * 100).toInt()} %';
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 16.0),
        child: Text(
          S.of(context).imageOverlayOpacity,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
