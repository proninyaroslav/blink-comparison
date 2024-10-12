### Version 1.2.0 (2024-10-12)

- Upgraded to Flutter 3 and Material 3
- Added text labels for images; each can be given its own name
- Encryption is now optional (can be switched in settings or selected at first launch)
- 📷️ Camera improvements:
  - Many problems and bugs have been fixed, the camera UI and photo preview have been redesigned;
  - Added option to disable autofocus
- 🔒️ Improved security:
  - Reduced the time unencrypted password stays in RAM;
  - Clearing the in-memory password location and image cache;
  - Temporary encryption key and other secrets are now located in a protected memory area;
  - The password re-entry dialog now only appears if the app has been minimized or covered by another app;
  - Disable screenshots if encryption is enabled
- F-Droid split APK support
- Fixed bug with image thumbnail size, now they are smaller
- Other minor bugfixes and improvements

### Version 1.1.1 (2022-03-05)

Fixed crash when adding reference image

### Version 1.1.0 (2022-02-23)

- Added option to disable fullscreen mode
- Now the taken photo is displayed first in the comparison dialog without confirmation dialog
- The unused receivers requested by third party plugins are disabled
- Added German translation

### Version 1.0.2 (2022-01-27)

Fixed camera access crash when sensor privacy is enabled.

### Version 1.0.1 (2022-01-04)

Removed permissions that requested by third party plugins.

### Version 1.0.0 (2022-01-02)

First release.
