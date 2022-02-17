// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  static String m0(reason) => "Error: ${reason}";

  static String m1(email, pageUrl) =>
      "No email app found. You can manually copy the error and send it to ${email}\nor send on the project page ${pageUrl}";

  static String m2(howMany) =>
      "${Intl.plural(howMany, one: 'Do you want to delete the selected image?', other: 'Do you want to delete the selected images?')}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'Failed to delete image', other: 'Failed to delete some images')}";

  static String m4(howMany) =>
      "${Intl.plural(howMany, one: 'Image deleted', other: 'Images deleted')}";

  static String m5(number) =>
      "Password length must be no more than ${number} characters";

  static String m6(number) =>
      "Password length must be at least ${number} characters";

  static String m7(count) => "Selected: ${count}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "IOError": MessageLookupByLibrary.simpleMessage("I/O error"),
        "aboutApp": MessageLookupByLibrary.simpleMessage("About"),
        "accept": MessageLookupByLibrary.simpleMessage("Accept"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addReferenceImageDescription": MessageLookupByLibrary.simpleMessage(
            "List is empty. Add an image to it"),
        "appChangelogUrl": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md"),
        "appDescription": MessageLookupByLibrary.simpleMessage(
            "Simplifies comparing photos of tamper-evident seals and patterns using your eyes.\nMore information and also to help the project: https://github.com/proninyaroslav/blink-comparison"),
        "appLicense": MessageLookupByLibrary.simpleMessage(
            "Blink Comparison is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
        "blinkComparisonCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Pressing anywhere on the screen toggles between the reference image and the image you just took. Fast switching helps you see differences in images"),
        "cameraErrorReason": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "changelog": MessageLookupByLibrary.simpleMessage("Changelog"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "crashDialogExtraInfo": MessageLookupByLibrary.simpleMessage(
            "Add extra info and comments here:"),
        "crashDialogMoreDetails":
            MessageLookupByLibrary.simpleMessage("More details"),
        "crashDialogNoEmailApp": m1,
        "crashDialogReport": MessageLookupByLibrary.simpleMessage("Report"),
        "crashDialogSummary": MessageLookupByLibrary.simpleMessage(
            "An app error occurred. You can report it to the developers"),
        "decryptReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Failed to decrypt reference image"),
        "decryptReferenceImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Failed to decrypt reference image: invalid encrypt key"),
        "decryptReferenceImageNoEncryptKey":
            MessageLookupByLibrary.simpleMessage(
                "Failed to decrypt reference image: missing encrypt key"),
        "defaultNotifyChannelDescription": MessageLookupByLibrary.simpleMessage(
            "All notifications that don\'t suitable for the other categories"),
        "defaultNotifyChannelTitle":
            MessageLookupByLibrary.simpleMessage("Default"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteImagesDialog": m2,
        "deleteImagesFailed": m3,
        "emptyPasswordError":
            MessageLookupByLibrary.simpleMessage("Password cannot be empty"),
        "encryptionError":
            MessageLookupByLibrary.simpleMessage("Encryption error"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "enterPasswordAgain":
            MessageLookupByLibrary.simpleMessage("Password again"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "foregroundNotificationChannel":
            MessageLookupByLibrary.simpleMessage("Foreground notification"),
        "imageOverlayOpacity":
            MessageLookupByLibrary.simpleMessage("Overlay opacity"),
        "imageOverlayOpacityCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "You can change the reference image overlay opacity as you like in the settings menu above"),
        "imagesDeleted": m4,
        "loadPageFailed":
            MessageLookupByLibrary.simpleMessage("Failed to load page"),
        "loadPasswordFailed": MessageLookupByLibrary.simpleMessage(
            "Unable to load password from storage"),
        "loadReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Failed to load reference image"),
        "loadReferenceImageFailedIO": MessageLookupByLibrary.simpleMessage(
            "I/O error occurred while loading the reference image"),
        "loadingReferenceImage": MessageLookupByLibrary.simpleMessage(
            "Loading and decrypting, please wait..."),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noSelectedCameraError": MessageLookupByLibrary.simpleMessage(
            "Error: no camera selected or unavailable"),
        "openCameraError":
            MessageLookupByLibrary.simpleMessage("Unable to open the camera"),
        "openLinkFailed":
            MessageLookupByLibrary.simpleMessage("Unable to open link"),
        "pageNotFound": MessageLookupByLibrary.simpleMessage("Page Not Found"),
        "passwordEmptyError":
            MessageLookupByLibrary.simpleMessage("Password cannot be empty"),
        "passwordMismatch":
            MessageLookupByLibrary.simpleMessage("Password mismatch"),
        "passwordRepeatError":
            MessageLookupByLibrary.simpleMessage("Please repeat the password"),
        "passwordTooLong": m5,
        "passwordTooShort": m6,
        "projectIssuesPage": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/issues"),
        "referenceImageBorderCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "The colored border around denotes the reference image. The border color can be changed in the app settings"),
        "referenceImageNotFound":
            MessageLookupByLibrary.simpleMessage("Reference image not found"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "saveImageError": MessageLookupByLibrary.simpleMessage(
            "An error occurred while saving"),
        "saveImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Failed to save the reference image: invalid encrypt key"),
        "savePasswordFailed":
            MessageLookupByLibrary.simpleMessage("Unable to save password"),
        "saveRefImageNotificationTitle": MessageLookupByLibrary.simpleMessage(
            "Saving a reference images in the background..."),
        "savingImageMessage": MessageLookupByLibrary.simpleMessage("Saving..."),
        "selectAll": MessageLookupByLibrary.simpleMessage("Select all"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Select image"),
        "selectImagesFailed":
            MessageLookupByLibrary.simpleMessage("Unable to select images"),
        "selectedCounter": m7,
        "setPasswordDescription": MessageLookupByLibrary.simpleMessage(
            "Set a password. This is necessary to encrypt and store the reference images"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "settingsAppearance":
            MessageLookupByLibrary.simpleMessage("Appearance"),
        "settingsBlinkComparisonPage":
            MessageLookupByLibrary.simpleMessage("Comparison page"),
        "settingsCamera": MessageLookupByLibrary.simpleMessage("Camera"),
        "settingsCameraFullscreenMode":
            MessageLookupByLibrary.simpleMessage("Fullscreen mode"),
        "settingsFlashByDefault":
            MessageLookupByLibrary.simpleMessage("Enable flash by default"),
        "settingsLanguage": MessageLookupByLibrary.simpleMessage("Language"),
        "settingsReferenceImageBorderColor":
            MessageLookupByLibrary.simpleMessage(
                "Reference image border color"),
        "settingsSystemLanguageOption":
            MessageLookupByLibrary.simpleMessage("System"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Theme"),
        "settingsThemeDark": MessageLookupByLibrary.simpleMessage("Dark"),
        "settingsThemeLight": MessageLookupByLibrary.simpleMessage("Light"),
        "settingsThemeSystem": MessageLookupByLibrary.simpleMessage("System"),
        "show": MessageLookupByLibrary.simpleMessage("Show"),
        "showError": MessageLookupByLibrary.simpleMessage("Show error"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "signInDescription": MessageLookupByLibrary.simpleMessage(
            "Sign in to modify and view reference images"),
        "switchCameraFlashError":
            MessageLookupByLibrary.simpleMessage("Failed to switch flash mode"),
        "takePhoto": MessageLookupByLibrary.simpleMessage("Take a photo"),
        "takePhotoError":
            MessageLookupByLibrary.simpleMessage("Unable to take a photo"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("Wrong password"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
