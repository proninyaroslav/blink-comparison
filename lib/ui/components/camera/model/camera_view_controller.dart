import 'package:flutter/material.dart';

class CameraViewController extends ChangeNotifier {
  bool _paused = false;

  bool get paused => _paused;

  void pauseCamera() {
    _paused = true;
    notifyListeners();
  }

  void resumeCamera() {
    _paused = false;
    notifyListeners();
  }
}
