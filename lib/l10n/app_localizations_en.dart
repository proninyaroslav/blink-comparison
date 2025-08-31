// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/blink-comparison/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Simplifies comparing photos of tamper-evident seals and patterns using your eyes.\nMore information and also to help the project: https://github.com/proninyaroslav/blink-comparison';

  @override
  String get appLicense =>
      'Blink Comparison is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get close => 'Close';

  @override
  String get error => 'Error';

  @override
  String get add => 'Add';

  @override
  String get show => 'Show';

  @override
  String get delete => 'Delete';

  @override
  String get accept => 'Accept';

  @override
  String get retry => 'Retry';

  @override
  String get pageNotFound => 'Page Not Found';

  @override
  String get setPasswordDescription =>
      'Set a password. This is necessary to encrypt and store the reference images';

  @override
  String get enterPassword => 'Password';

  @override
  String get enterPasswordAgain => 'Password again';

  @override
  String get signIn => 'Sign in';

  @override
  String passwordTooShort(Object number) {
    return 'Password length must be at least $number characters';
  }

  @override
  String passwordTooLong(Object number) {
    return 'Password length must be no more than $number characters';
  }

  @override
  String get passwordMismatch => 'Password mismatch';

  @override
  String get savePasswordFailed => 'Unable to save password';

  @override
  String get passwordEmptyError => 'Password cannot be empty';

  @override
  String get passwordRepeatError => 'Please repeat the password';

  @override
  String get crashDialogSummary =>
      'An app error occurred. You can report it to the developers';

  @override
  String get crashDialogExtraInfo => 'Add extra info and comments here:';

  @override
  String get crashDialogReport => 'Report';

  @override
  String get crashDialogMoreDetails => 'More details';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'No email app found. You can manually copy the error and send it to $email\nor send on the project page $pageUrl';
  }

  @override
  String get openLinkFailed => 'Unable to open link';

  @override
  String get signInDescription => 'Sign in to modify and view reference images';

  @override
  String get wrongPassword => 'Wrong password';

  @override
  String get emptyPasswordError => 'Password cannot be empty';

  @override
  String get loadPasswordFailed => 'Unable to load password from storage';

  @override
  String get addReferenceImageDescription =>
      'List is empty. Add an image to it';

  @override
  String get takePhoto => 'Take a photo';

  @override
  String get selectImage => 'Select image';

  @override
  String get savingImageMessage => 'Saving...';

  @override
  String get selectImagesFailed => 'Unable to select images';

  @override
  String get defaultNotifyChannelTitle => 'Default';

  @override
  String get defaultNotifyChannelDescription =>
      'All notifications that don\'\'t suitable for the other categories';

  @override
  String get foregroundNotificationChannel => 'Foreground notification';

  @override
  String get saveRefImageNotificationTitle =>
      'Saving a reference images in the background...';

  @override
  String get refresh => 'Refresh';

  @override
  String get loadPageFailed => 'Failed to load page';

  @override
  String get saveImageError => 'An error occurred while saving';

  @override
  String get ioError => 'I/O error';

  @override
  String get encryptionError => 'Encryption error';

  @override
  String selectedCounter(Object count) {
    return 'Selected: $count';
  }

  @override
  String deleteImagesDialog(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Do you want to delete the selected images?',
      one: 'Do you want to delete the selected image?',
    );
    return '$_temp0';
  }

  @override
  String imagesDeleted(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Images deleted',
      one: 'Image deleted',
    );
    return '$_temp0';
  }

  @override
  String deleteImagesFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Failed to delete some images',
      one: 'Failed to delete image',
    );
    return '$_temp0';
  }

  @override
  String get selectAll => 'Select all';

  @override
  String get loadingReferenceImage => 'Loading/decrypting, please wait...';

  @override
  String get openCameraError => 'Unable to open the camera';

  @override
  String get cameraAccessDenied =>
      'Camera access denied. Please grant the permission in the system settings';

  @override
  String get openAppSettings => 'Open settings';

  @override
  String cameraErrorReason(Object reason) {
    return 'Error: $reason';
  }

  @override
  String get noSelectedCameraError =>
      'Error: no camera selected or unavailable';

  @override
  String get takePhotoError => 'Unable to take a photo';

  @override
  String get showError => 'Show error';

  @override
  String get switchCameraFlashError => 'Failed to switch flash mode';

  @override
  String get loadReferenceImageFailed => 'Failed to load reference image';

  @override
  String get referenceImageNotFound => 'Reference image not found';

  @override
  String get loadReferenceImageFailedIO =>
      'I/O error occurred while loading the reference image';

  @override
  String get decryptReferenceImageNoEncryptKey =>
      'Failed to decrypt reference image: missing encrypt key';

  @override
  String get decryptReferenceImageFailed => 'Failed to decrypt reference image';

  @override
  String get decryptReferenceImageInvalidKey =>
      'Failed to decrypt reference image: invalid encrypt key';

  @override
  String get imageOverlayOpacity => 'Overlay opacity';

  @override
  String get saveImageInvalidKey =>
      'Failed to save the reference image: invalid encrypt key';

  @override
  String get settings => 'Settings';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsThemeLight => 'Light';

  @override
  String get settingsThemeDark => 'Dark';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsSystemLanguageOption => 'System';

  @override
  String get settingsReferenceImageBorderColor =>
      'Reference image border color';

  @override
  String get settingsBlinkComparisonPage => 'Comparison page';

  @override
  String get settingsCamera => 'Camera';

  @override
  String get settingsFlashByDefault => 'Enable flash by default';

  @override
  String get imageOverlayOpacityCaseTooltip =>
      'You can change the reference image overlay opacity as you like in the settings menu above';

  @override
  String get referenceImageBorderCaseTooltip =>
      'The colored border around denotes the reference image. The border color can be changed in the app settings';

  @override
  String get blinkComparisonCaseTooltip =>
      'Pressing anywhere on the screen toggles between the reference image and the image you just took. Fast switching helps you see differences in images';

  @override
  String get aboutApp => 'About';

  @override
  String get changelog => 'Changelog';

  @override
  String get settingsCameraFullscreenMode => 'Fullscreen mode';

  @override
  String get authorizeFailedException => 'Exception during authorization';

  @override
  String get enableEncryptPromt =>
      'Do you want to encrypt your images? This requires setting a password for extra security';

  @override
  String get enableEncryptPositiveAnswer => 'Yes, set a password';

  @override
  String get settingsBehavior => 'Behavior';

  @override
  String get encryptionPreferenceTitle => 'Image encryption';

  @override
  String get encryptionPreferenceNone => 'None';

  @override
  String get encryptionPreferencePassword => 'Password';

  @override
  String get changeCameraZoomError => 'Unable to change zoom level';

  @override
  String get settingsCameraAutofocus => 'Autofocus';

  @override
  String get noSavedPassword => 'No saved password';

  @override
  String get changeCameraAutofocusError => 'Unable to change autofocus mode';

  @override
  String get loadImageError => 'Unable to load image';

  @override
  String get databaseError => 'Database error';

  @override
  String get editImageProperties => 'Edit image properties';

  @override
  String get imageProperties => 'Properties';

  @override
  String get imageLabel => 'Label';

  @override
  String get cameraLockOrientationError => 'Unable to lock camera orientation';
}
