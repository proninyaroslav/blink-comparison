import 'package:blink_comparison/locale.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CameraSettingsSheet extends StatefulWidget {
  final ValueChanged<FocusMode> onFocusModeChanged;
  final FocusMode focusMode;

  const CameraSettingsSheet({
    super.key,
    required this.onFocusModeChanged,
    required this.focusMode,
  });

  @override
  State<CameraSettingsSheet> createState() => _CameraSettingsSheetState();
}

class _CameraSettingsSheetState extends State<CameraSettingsSheet>
    with TickerProviderStateMixin {
  late FocusMode _focusMode;

  @override
  void didChangeDependencies() {
    setState(() {
      _focusMode = widget.focusMode;
    });

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CameraSettingsSheet oldWidget) {
    if (oldWidget.focusMode != widget.focusMode) {
      setState(() {
        _focusMode = widget.focusMode;
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      showDragHandle: true,
      animationController: BottomSheet.createAnimationController(this),
      builder: (context) {
        return SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _Title(),
                  const SizedBox(height: 16.0),
                  SwitchListTile(
                    secondary: const Icon(Symbols.filter_center_focus),
                    title: Text(S.of(context).settingsCameraAutofocus),
                    value: switch (_focusMode) {
                      FocusMode.auto => true,
                      FocusMode.locked => false,
                    },
                    onChanged: (value) {
                      final newValue =
                          value ? FocusMode.auto : FocusMode.locked;
                      setState(() {
                        _focusMode = newValue;
                      });
                      widget.onFocusModeChanged(newValue);
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
      onClosing: () {
        Navigator.of(context).maybePop();
      },
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        S.of(context).settings,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
