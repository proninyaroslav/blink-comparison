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

import 'package:blink_comparison/ui/theme.dart';
import 'package:flutter/material.dart';

import '../../locale.dart';

class LoadingPageError extends StatelessWidget {
  final VoidCallback? onRefresh;

  const LoadingPageError({
    super.key,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final pageHeadlineText = AppTheme.pageHeadlineText(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 64,
                  color: pageHeadlineText.color,
                ),
                const SizedBox(width: 8.0),
                Flexible(
                  child: Text(
                    S.of(context).loadPageFailed,
                    style: pageHeadlineText,
                  ),
                ),
              ],
            ),
            OutlinedButton.icon(
              onPressed: onRefresh,
              icon: const Icon(Icons.refresh),
              label: Text(S.of(context).refresh),
            ),
          ],
        ),
      ),
    );
  }
}
