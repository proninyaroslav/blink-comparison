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
  String get localeName => 'fr';

  static String m0(reason) => "Erreur: ${reason}";

  static String m1(email, pageUrl) =>
      "Aucune application de messagerie trouvée. Vous pouvez copier manuellement l'erreur et l'envoyer à ${email}\nou envoyer sur la page du projet ${pageUrl}";

  static String m2(howMany) =>
      "${Intl.plural(howMany, one: 'Voulez-vous supprimer image sélectionnée?', other: 'Voulez-vous supprimer image sélectionnée?')}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'Échec de la suppression de image', other: 'Échec de la suppression de certaines images')}";

  static String m4(howMany) =>
      "${Intl.plural(howMany, one: 'Image supprimée', other: 'Images supprimées')}";

  static String m5(number) =>
      "La longueur du mot de passe ne doit pas être supérieure à ${number} caractères";

  static String m6(number) =>
      "La longueur du mot de passe doit être d'au moins ${number} caractères";

  static String m7(count) => "Sélectionné: ${count}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "IOError": MessageLookupByLibrary.simpleMessage("I/O erreur"),
        "aboutApp": MessageLookupByLibrary.simpleMessage("À propos"),
        "accept": MessageLookupByLibrary.simpleMessage("Accepter"),
        "add": MessageLookupByLibrary.simpleMessage("Ajouter"),
        "addReferenceImageDescription": MessageLookupByLibrary.simpleMessage(
            "La liste est vide. Ajoutez-y une image"),
        "appChangelogUrl": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md"),
        "appDescription": MessageLookupByLibrary.simpleMessage(
            "Simplifie la comparaison visuel de photos de scellés inviolables et de motifs.\nPlus d'informations à propos et aussi pour aider le projet: https://github.com/proninyaroslav/blink-comparison"),
        "appLicense": MessageLookupByLibrary.simpleMessage(
            "Blink Comparison est un logiciel libre et open source (FOSS), publié sous la licence GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
        "blinkComparisonCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "En appuyant n'importe où sur l'écran, vous basculez entre l'image de référence et l'image que vous venez de prendre. La commutation rapide vous aide à voir les différences entre les images"),
        "cameraErrorReason": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "changelog": MessageLookupByLibrary.simpleMessage("Historique des modifications"),
        "close": MessageLookupByLibrary.simpleMessage("Fermer"),
        "crashDialogExtraInfo": MessageLookupByLibrary.simpleMessage(
            "Ajoutez des informations supplémentaires et des commentaires ici:"),
        "crashDialogMoreDetails":
            MessageLookupByLibrary.simpleMessage("Plus de détails"),
        "crashDialogNoEmailApp": m1,
        "crashDialogReport": MessageLookupByLibrary.simpleMessage("Rapport"),
        "crashDialogSummary": MessageLookupByLibrary.simpleMessage(
            "Une erreur d'application s'est produite. Vous pouvez le signaler aux développeurs"),
        "decryptReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Échec du décryptage de l'image de référence"),
        "decryptReferenceImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Échec du décryptage de l'image de référence : clé de cryptage non valide"),
        "decryptReferenceImageNoEncryptKey":
            MessageLookupByLibrary.simpleMessage(
                "Échec du décryptage de l'image de référence : clé de cryptage manquante."),
        "defaultNotifyChannelDescription": MessageLookupByLibrary.simpleMessage(
            "Toutes les notifications qui ne conviennent pas aux autres catégories."),
        "defaultNotifyChannelTitle":
            MessageLookupByLibrary.simpleMessage("Défaut"),
        "delete": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "deleteImagesDialog": m2,
        "deleteImagesFailed": m3,
        "emptyPasswordError":
            MessageLookupByLibrary.simpleMessage("Le mot de passe ne peut pas être vide"),
        "encryptionError":
            MessageLookupByLibrary.simpleMessage("Erreur de chiffrement"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "enterPasswordAgain":
            MessageLookupByLibrary.simpleMessage("Nouveau mot de passe"),
        "error": MessageLookupByLibrary.simpleMessage("Erreur"),
        "foregroundNotificationChannel":
            MessageLookupByLibrary.simpleMessage("Notification de premier plan"),
        "imageOverlayOpacity":
            MessageLookupByLibrary.simpleMessage("Opacité de la superposition"),
        "imageOverlayOpacityCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez modifier l'opacité de l'image de référence superposée comme vous le souhaitez dans le menu des paramètres ci-dessus."),
        "imagesDeleted": m4,
        "loadPageFailed":
            MessageLookupByLibrary.simpleMessage("Impossible de charger la page"),
        "loadPasswordFailed": MessageLookupByLibrary.simpleMessage(
            "Impossible de charger le mot de passe depuis le stockage"),
        "loadReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Échec du chargement de l'image de référence"),
        "loadReferenceImageFailedIO": MessageLookupByLibrary.simpleMessage(
            "I/O erreur s'est produite lors du chargement de l'image de référence"),
        "loadingReferenceImage": MessageLookupByLibrary.simpleMessage(
            "Chargement et décryptage, veuillez patienter..."),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noSelectedCameraError": MessageLookupByLibrary.simpleMessage(
            "Erreur: aucune caméra sélectionnée ou non disponible"),
        "openCameraError":
            MessageLookupByLibrary.simpleMessage("Impossible d'ouvrir la caméra"),
        "openLinkFailed":
            MessageLookupByLibrary.simpleMessage("Impossible d'ouvrir le lien"),
        "pageNotFound": MessageLookupByLibrary.simpleMessage("Page non trouvée"),
        "passwordEmptyError":
            MessageLookupByLibrary.simpleMessage("Le mot de passe ne peut pas être vide"),
        "passwordMismatch":
            MessageLookupByLibrary.simpleMessage("Mauvaise concordance du mot de passe"),
        "passwordRepeatError":
            MessageLookupByLibrary.simpleMessage("Veuillez répéter le mot de passe"),
        "passwordTooLong": m5,
        "passwordTooShort": m6,
        "projectIssuesPage": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/issues"),
        "referenceImageBorderCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "La bordure colorée autour indique l'image de référence. La couleur de la bordure peut être modifiée dans les paramètres de l'application."),
        "referenceImageNotFound":
            MessageLookupByLibrary.simpleMessage("Image de référence non trouvée"),
        "refresh": MessageLookupByLibrary.simpleMessage("Rafraîchir"),
        "retry": MessageLookupByLibrary.simpleMessage("Réessayer"),
        "save": MessageLookupByLibrary.simpleMessage("Sauvegarder"),
        "saveImageError": MessageLookupByLibrary.simpleMessage(
            "Une erreur s'est produite lors de l'enregistrement"),
        "saveImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "FaImpossible d'enregistrer l'image de référence : clé de cryptage non valide"),
        "savePasswordFailed":
            MessageLookupByLibrary.simpleMessage("Impossible d'enregistrer le mot de passe"),
        "saveRefImageNotificationTitle": MessageLookupByLibrary.simpleMessage(
            "Enregistrement d'une image de référence en arrière-plan..."),
        "savingImageMessage": MessageLookupByLibrary.simpleMessage("Sauvegarde en cours..."),
        "selectAll": MessageLookupByLibrary.simpleMessage("Sélectionner tout"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Sélection d'une image"),
        "selectImagesFailed":
            MessageLookupByLibrary.simpleMessage("Impossible de sélectionner les images"),
        "selectedCounter": m7,
        "setPasswordDescription": MessageLookupByLibrary.simpleMessage(
            "Définissez un mot de passe. Celui-ci est nécessaire pour crypter et stocker les images de référence."),
        "settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "settingsAppearance":
            MessageLookupByLibrary.simpleMessage("Apparence"),
        "settingsBlinkComparisonPage":
            MessageLookupByLibrary.simpleMessage("Page de comparaison"),
        "settingsCamera": MessageLookupByLibrary.simpleMessage("Caméra"),
        "settingsCameraFullscreenMode":
            MessageLookupByLibrary.simpleMessage("Mode plein écran"),
        "settingsFlashByDefault":
            MessageLookupByLibrary.simpleMessage("Activez le flash par défaut"),
        "settingsLanguage": MessageLookupByLibrary.simpleMessage("Langage"),
        "settingsReferenceImageBorderColor":
            MessageLookupByLibrary.simpleMessage(
                "Couleur de la bordure de l'image de référence"),
        "settingsSystemLanguageOption":
            MessageLookupByLibrary.simpleMessage("Système"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Thème"),
        "settingsThemeDark": MessageLookupByLibrary.simpleMessage("Sombre"),
        "settingsThemeLight": MessageLookupByLibrary.simpleMessage("Lumineux"),
        "settingsThemeSystem": MessageLookupByLibrary.simpleMessage("Système"),
        "show": MessageLookupByLibrary.simpleMessage("Afficher"),
        "showError": MessageLookupByLibrary.simpleMessage("Afficher l'erreur"),
        "signIn": MessageLookupByLibrary.simpleMessage("Se connecter"),
        "signInDescription": MessageLookupByLibrary.simpleMessage(
            "Connectez-vous pour modifier et visualiser les images de référence"),
        "switchCameraFlashError":
            MessageLookupByLibrary.simpleMessage("Échec de la commutation du mode flash"),
        "takePhoto": MessageLookupByLibrary.simpleMessage("Prenez une photo"),
        "takePhotoError":
            MessageLookupByLibrary.simpleMessage("Impossible de prendre une photo"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("Mot de passe erroné"),
        "yes": MessageLookupByLibrary.simpleMessage("Oui")
      };
}
