# ⚙️ Building

To build, you need to install [Flutter](https://flutter.dev/docs/get-started/install).

Enter the following command in the terminal to build the project:

- **Android APK**
  ```
  flutter build apk --flavor base
  ```
  or
  ```
  flutter build apk --target-platform [android-arm|android-arm64|android-x64] --flavor base
  ```
  The built APK will be located in the `build/app/outputs/flutter-apk/` directory.
