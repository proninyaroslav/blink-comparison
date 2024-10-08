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

import 'package:auto_route/auto_route.dart';
import 'package:blink_comparison/core/platform_info.dart';
import 'package:blink_comparison/ui/about/model/about_state.dart';
import 'package:blink_comparison/ui/components/widget.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../injector.dart';
import '../../locale.dart';
import '../../logger.dart';
import '../components/toast.dart';
import 'model/about_cubit.dart';

class AboutPage extends StatefulWidget implements AutoRouteWrapper {
  const AboutPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutCubit(getIt<PlatformInfo>()),
      child: this,
    );
  }

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();

    context.read<AboutCubit>().load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutCubit, AboutState>(
      builder: (context, state) {
        return switch (state) {
          AboutStateInitial() ||
          AboutStateLoading() =>
            const _AboutDialog.loading(),
          AboutStateLoaded(:final appName, :final appVersion) => _AboutDialog(
              appName: appName,
              appVersion: appVersion,
              appIcon: Image.asset(
                'assets/app_icon.png',
                width: 48.0,
                height: 48.0,
              ),
            ),
        };
      },
    );
  }
}

class _AboutDialog extends StatelessWidget {
  final _AboutDialogProps? _props;

  _AboutDialog({
    required String appName,
    required String appVersion,
    required Widget appIcon,
  }) : _props = _AboutDialogProps(
          appName: appName,
          appVersion: appVersion,
          appIcon: appIcon,
        );

  const _AboutDialog.loading() : _props = null;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      content: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_props
                case _AboutDialogProps(
                  :final appName,
                  :final appVersion,
                  :final appIcon
                )) ...[
              _Header(
                appName: appName,
                appVersion: appVersion,
                appIcon: appIcon,
              ),
              LinkText(text: S.of(context).appDescription),
              const SizedBox(height: 8.0),
              LinkText(text: S.of(context).appLicense),
            ] else
              const SizedBox(
                height: 300,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
          ],
        ),
      ),
      actions: [
        const _ChangelogButton(),
        TextButton(
          child: Text(
            S.of(context).close,
            textAlign: TextAlign.end,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

class _AboutDialogProps implements Equatable {
  final String appName;
  final String appVersion;
  final Widget appIcon;

  const _AboutDialogProps({
    required this.appName,
    required this.appVersion,
    required this.appIcon,
  });

  @override
  List<Object?> get props => [appName, appVersion, appIcon];

  @override
  bool? get stringify => true;
}

class _Header extends StatelessWidget {
  static const _textVerticalSeparation = 18.0;

  final String appName;
  final String appVersion;
  final Widget appIcon;

  const _Header({
    required this.appName,
    required this.appVersion,
    required this.appIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconTheme(
          data: Theme.of(context).iconTheme,
          child: appIcon,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListBody(
              children: [
                Text(
                  appName,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  appVersion,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: _textVerticalSeparation),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ChangelogButton extends StatelessWidget {
  const _ChangelogButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        S.of(context).changelog,
        textAlign: TextAlign.end,
      ),
      onPressed: () async {
        final url = S.of(context).appChangelogUrl;
        try {
          await launchUrl(Uri.parse(url));
        } on PlatformException catch (e, stackTrace) {
          log().w('Unable to open cnagelog URL',
              error: e, stackTrace: stackTrace);
          if (context.mounted) {
            Toast.of(context).show(
              text: S.of(context).openLinkFailed,
            );
          }
        }
      },
    );
  }
}
