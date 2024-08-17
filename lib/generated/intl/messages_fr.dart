// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(reason) => "Error: ${reason}";

  static String m1(email, pageUrl) =>
      "Aucune application de messagerie n\'a été trouvée. Vous pouvez copier manuellement l\'erreur et l\'envoyer à ${email}\nou l\'envoyer sur la page du projet ${pageUrl}.";

  static String m2(howMany) =>
      "${Intl.plural(howMany, one: 'Do you want to delete the selected image?', other: 'Do you want to delete the selected images?')}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'Failed to delete image', other: 'Failed to delete some images')}";

  static String m4(howMany) =>
      "${Intl.plural(howMany, one: 'Image deleted', other: 'Images deleted')}";

  static String m5(number) =>
      "La longueur du mot de passe ne doit pas dépasser ${number} caractères.";

  static String m6(number) =>
      "La longueur du mot de passe doit être d\'au moins ${number} caractères.";

  static String m7(count) => "Selected: ${count}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "IOError": MessageLookupByLibrary.simpleMessage("I/O error"),
        "aboutApp": MessageLookupByLibrary.simpleMessage("About"),
        "accept": MessageLookupByLibrary.simpleMessage("Accepter"),
        "add": MessageLookupByLibrary.simpleMessage("Ajouter"),
        "addReferenceImageDescription": MessageLookupByLibrary.simpleMessage(
            "La liste est vide. Ajoutez-y une image"),
        "appChangelogUrl": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md"),
        "appDescription": MessageLookupByLibrary.simpleMessage(
            "Simplifie la comparaison de photos de scellés inviolables et de motifs à l\'aide de vos yeux.\nPlus d\'informations et aussi pour aider le projet : https://github.com/proninyaroslav/blink-comparison"),
        "appLicense": MessageLookupByLibrary.simpleMessage(
            "Blink Comparison est un logiciel libre et gratuit (FOSS), publié selon les termes de la GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
        "blinkComparisonCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Pressing anywhere on the screen toggles between the reference image and the image you just took. Fast switching helps you see differences in images"),
        "cameraErrorReason": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "changelog": MessageLookupByLibrary.simpleMessage("Changelog"),
        "close": MessageLookupByLibrary.simpleMessage("Fermer"),
        "crashDialogExtraInfo": MessageLookupByLibrary.simpleMessage(
            "Ajoutez des informations supplémentaires et des commentaires ici:"),
        "crashDialogMoreDetails":
            MessageLookupByLibrary.simpleMessage("Plus de détails"),
        "crashDialogNoEmailApp": m1,
        "crashDialogReport": MessageLookupByLibrary.simpleMessage("Reporter"),
        "crashDialogSummary": MessageLookupByLibrary.simpleMessage(
            "Une erreur d\'application s\'est produite. Vous pouvez le signaler aux développeurs"),
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
        "delete": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "deleteImagesDialog": m2,
        "deleteImagesFailed": m3,
        "emptyPasswordError": MessageLookupByLibrary.simpleMessage(
            "Le mot de passe ne peut pas être vide"),
        "encryptionError":
            MessageLookupByLibrary.simpleMessage("Encryption error"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "enterPasswordAgain": MessageLookupByLibrary.simpleMessage(
            "Entrez de nouveau votre mot de passe"),
        "error": MessageLookupByLibrary.simpleMessage("Erreur"),
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
            "Impossible de charger le mot de passe depuis le stockage"),
        "loadReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Failed to load reference image"),
        "loadReferenceImageFailedIO": MessageLookupByLibrary.simpleMessage(
            "I/O error occurred while loading the reference image"),
        "loadingReferenceImage": MessageLookupByLibrary.simpleMessage(
            "Loading and decrypting, please wait..."),
        "no": MessageLookupByLibrary.simpleMessage("Non"),
        "noSelectedCameraError": MessageLookupByLibrary.simpleMessage(
            "Error: no camera selected or unavailable"),
        "openCameraError":
            MessageLookupByLibrary.simpleMessage("Unable to open the camera"),
        "openLinkFailed": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'ouvrir le lien"),
        "pageNotFound":
            MessageLookupByLibrary.simpleMessage("Page non trouvée"),
        "passwordEmptyError": MessageLookupByLibrary.simpleMessage(
            "Le mot de passe ne peut pas être vide"),
        "passwordMismatch": MessageLookupByLibrary.simpleMessage(
            "Mauvaise concordance du mot de passe"),
        "passwordRepeatError": MessageLookupByLibrary.simpleMessage(
            "Veuillez répéter le mot de passe"),
        "passwordTooLong": m5,
        "passwordTooShort": m6,
        "projectIssuesPage": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/issues"),
        "referenceImageBorderCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "The colored border around denotes the reference image. The border color can be changed in the app settings"),
        "referenceImageNotFound":
            MessageLookupByLibrary.simpleMessage("Reference image not found"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "retry": MessageLookupByLibrary.simpleMessage("Réessayer"),
        "save": MessageLookupByLibrary.simpleMessage("Sauvegarder"),
        "saveImageError": MessageLookupByLibrary.simpleMessage(
            "An error occurred while saving"),
        "saveImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Failed to save the reference image: invalid encrypt key"),
        "savePasswordFailed": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'enregistrer le mot de passe"),
        "saveRefImageNotificationTitle": MessageLookupByLibrary.simpleMessage(
            "Saving a reference images in the background..."),
        "savingImageMessage": MessageLookupByLibrary.simpleMessage("Saving..."),
        "selectAll": MessageLookupByLibrary.simpleMessage("Select all"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Select image"),
        "selectImagesFailed":
            MessageLookupByLibrary.simpleMessage("Unable to select images"),
        "selectedCounter": m7,
        "setPasswordDescription": MessageLookupByLibrary.simpleMessage(
            "Définissez un mot de passe. Celui-ci est nécessaire pour crypter et stocker les images de référence."),
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
        "show": MessageLookupByLibrary.simpleMessage("Afficher"),
        "showError": MessageLookupByLibrary.simpleMessage("Show error"),
        "signIn": MessageLookupByLibrary.simpleMessage("Se connecter"),
        "signInDescription": MessageLookupByLibrary.simpleMessage(
            "Connectez-vous pour modifier et visualiser les images de référence"),
        "switchCameraFlashError":
            MessageLookupByLibrary.simpleMessage("Failed to switch flash mode"),
        "takePhoto": MessageLookupByLibrary.simpleMessage("Take a photo"),
        "takePhotoError":
            MessageLookupByLibrary.simpleMessage("Unable to take a photo"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe erroné"),
        "yes": MessageLookupByLibrary.simpleMessage("Oui")
      };
}
