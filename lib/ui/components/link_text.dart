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
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../locale.dart';
import '../../logger.dart';

class LinkText extends StatelessWidget {
  final String text;
  final bool selectable;
  final TextStyle? style;

  const LinkText({
    super.key,
    required this.text,
    this.selectable = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final linkStyle = TextStyle(
      color: colorScheme.tertiary,
      decorationColor: colorScheme.tertiary,
    );
    Future<void> onOpen(LinkableElement link) async {
      try {
        await launchUrl(Uri.parse(link.url));
      } on PlatformException catch (e, stackTrace) {
        log().w('Unable to open $link', error: e, stackTrace: stackTrace);
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(S.of(context).openLinkFailed),
            ),
          );
        }
      }
    }

    if (selectable) {
      return SelectableLinkify(
        text: text,
        linkStyle: linkStyle,
        style: style,
        onOpen: onOpen,
      );
    } else {
      return Linkify(
        text: text,
        linkStyle: linkStyle,
        style: style,
        onOpen: onOpen,
      );
    }
  }
}
