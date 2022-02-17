// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de_DE locale. All the
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
  String get localeName => 'de_DE';

  static String m0(reason) => "Fehler: ${reason}";

  static String m1(email, pageUrl) =>
      "Es wurde keine E-Mail-Anwendung gefunden. Sie können den Fehler kopieren und an folgende Adresse ${email}\noder an die Projektseite ${pageUrl} senden.";

  static String m2(howMany) =>
      "${Intl.plural(howMany, one: 'Möchten Sie das ausgewählte Foto löschen?', other: 'Möchten Sie die ausgewählten Fotos löschen?')}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'Foto kann nicht gelöscht werden', other: 'Einige Fotos konnten nicht gelöscht werden')}";

  static String m4(howMany) =>
      "${Intl.plural(howMany, one: 'Foto löschen', other: 'Fotos löschen')}";

  static String m5(number) =>
      "Das Passwort darf maximal ${number} Zeichen lang sein.";

  static String m6(number) =>
      "Das Passwort muss mindestens ${number} Zeichen lang sein.";

  static String m7(count) => "Ausgewählt: ${count}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "IOError": MessageLookupByLibrary.simpleMessage("E/A-Fehler"),
        "aboutApp": MessageLookupByLibrary.simpleMessage("Über"),
        "accept": MessageLookupByLibrary.simpleMessage("Annehmen"),
        "add": MessageLookupByLibrary.simpleMessage("Hinzufügen"),
        "addReferenceImageDescription": MessageLookupByLibrary.simpleMessage(
            "Die Liste ist leer. Fügen Sie ein Bild hinzu."),
        "appChangelogUrl": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md"),
        "appDescription": MessageLookupByLibrary.simpleMessage(
            "Erleichtert den Vergleich von Fotos manipulationssicher Siegel und Mustern mit bloßem Auge.\nWeitere Informationen zum Projekt und Unterstützungsmöglichkeiten: https://github.com/proninyaroslav/blink-comparison"),
        "appLicense": MessageLookupByLibrary.simpleMessage(
            "Blink Comparison ist freie und quelloffene Software (FOSS), veröffentlicht unter den Bedingungen der GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
        "blinkComparisonCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Durch die Berührung des Bildschirm an einer beliebigen Stelle können Sie zwischen dem Referenzbild und dem gerade aufgenommenen Bild umschalten. Ein schnelles Umschalten hilft Ihnen dabei, Unterschiede in den Bildern zu erkennen."),
        "cameraErrorReason": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "changelog": MessageLookupByLibrary.simpleMessage("Änderungsprotokoll"),
        "close": MessageLookupByLibrary.simpleMessage("Schließen"),
        "crashDialogExtraInfo": MessageLookupByLibrary.simpleMessage(
            "Fügen Sie hier weitere Informationen und Kommentare hinzu:"),
        "crashDialogMoreDetails":
            MessageLookupByLibrary.simpleMessage("Mehr Details"),
        "crashDialogNoEmailApp": m1,
        "crashDialogReport": MessageLookupByLibrary.simpleMessage("Bericht"),
        "crashDialogSummary": MessageLookupByLibrary.simpleMessage(
            "Ein Anwendungsfehler ist aufgetreten. Sie können ihn an die Entwickler melden."),
        "decryptReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Entschlüsselung des Referenzbildes fehlgeschlagen"),
        "decryptReferenceImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Entschlüsselung des Referenzbildes fehlgeschlagen: ungültiger Verschlüsselungsschlüssel"),
        "decryptReferenceImageNoEncryptKey": MessageLookupByLibrary.simpleMessage(
            "Entschlüsselung des Referenzbildes fehlgeschlagen: fehlender Verschlüsselungsschlüssel"),
        "defaultNotifyChannelDescription": MessageLookupByLibrary.simpleMessage(
            "Alle Benachrichtigungen, die nicht in anderen Kategorien passen."),
        "defaultNotifyChannelTitle":
            MessageLookupByLibrary.simpleMessage("Standard"),
        "delete": MessageLookupByLibrary.simpleMessage("Löschen"),
        "deleteImagesDialog": m2,
        "deleteImagesFailed": m3,
        "emptyPasswordError": MessageLookupByLibrary.simpleMessage(
            "Das Passwort darf nicht leer sein."),
        "encryptionError":
            MessageLookupByLibrary.simpleMessage("Verschlüsselungsfehler"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Passwort"),
        "enterPasswordAgain":
            MessageLookupByLibrary.simpleMessage("Passwort erneut eingeben"),
        "error": MessageLookupByLibrary.simpleMessage("Fehler"),
        "foregroundNotificationChannel": MessageLookupByLibrary.simpleMessage(
            "Benachrichtigung im Vordergrund"),
        "imageOverlayOpacity":
            MessageLookupByLibrary.simpleMessage("Deckkraft der Überlagerung"),
        "imageOverlayOpacityCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Sie können die Deckkraft des Referenzbildes im Einstellungsmenü oben nach Belieben ändern."),
        "imagesDeleted": m4,
        "loadPageFailed": MessageLookupByLibrary.simpleMessage(
            "Die Seite konnte nicht geladen werden."),
        "loadPasswordFailed": MessageLookupByLibrary.simpleMessage(
            "Das Passwort kann nicht aus dem Speicher geladen werden."),
        "loadReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Referenzbild konnte nicht geladen werden."),
        "loadReferenceImageFailedIO": MessageLookupByLibrary.simpleMessage(
            "Beim Laden des Referenzbildes ist ein E/A-Fehler aufgetreten."),
        "loadingReferenceImage": MessageLookupByLibrary.simpleMessage(
            "Laden und entschlüsseln, bitte warten..."),
        "no": MessageLookupByLibrary.simpleMessage("Nein"),
        "noSelectedCameraError": MessageLookupByLibrary.simpleMessage(
            "Fehler: keine Kamera ausgewählt oder Kamera ist nicht verfügbar"),
        "openCameraError": MessageLookupByLibrary.simpleMessage(
            "Die Kamera lässt sich nicht öffnen."),
        "openLinkFailed": MessageLookupByLibrary.simpleMessage(
            "Der Link kann nicht geöffnet werden."),
        "pageNotFound":
            MessageLookupByLibrary.simpleMessage("Seite nicht gefunden"),
        "passwordEmptyError": MessageLookupByLibrary.simpleMessage(
            "Das Passwort darf nicht leer sein."),
        "passwordMismatch": MessageLookupByLibrary.simpleMessage(
            "Die Passwörter sind verschieden."),
        "passwordRepeatError": MessageLookupByLibrary.simpleMessage(
            "Bitte wiederholen Sie das Passwort."),
        "passwordTooLong": m5,
        "passwordTooShort": m6,
        "projectIssuesPage": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/issues"),
        "referenceImageBorderCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Die farbige Umrandung kennzeichnet das Referenzbild. Die Farbe des Rahmens kann in den Einstellungen geändert werden."),
        "referenceImageNotFound": MessageLookupByLibrary.simpleMessage(
            "Referenzbild konnte nicht gefunden werden."),
        "refresh": MessageLookupByLibrary.simpleMessage("Aktualisieren"),
        "retry": MessageLookupByLibrary.simpleMessage("Wiederholen"),
        "save": MessageLookupByLibrary.simpleMessage("Speichern"),
        "saveImageError": MessageLookupByLibrary.simpleMessage(
            "Beim Speichern ist ein Fehler aufgetreten."),
        "saveImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Speichern des Referenzbildes fehlgeschlagen: Ungültiger Verschlüsselungsschlüssel"),
        "savePasswordFailed": MessageLookupByLibrary.simpleMessage(
            "Es ist nicht möglich das Passwort zu speichern."),
        "saveRefImageNotificationTitle": MessageLookupByLibrary.simpleMessage(
            "Speichern eines Referenzbildes im Hintergrund..."),
        "savingImageMessage":
            MessageLookupByLibrary.simpleMessage("Speichern..."),
        "selectAll": MessageLookupByLibrary.simpleMessage("Alle auswählen"),
        "selectImage": MessageLookupByLibrary.simpleMessage("Foto auswählen"),
        "selectImagesFailed": MessageLookupByLibrary.simpleMessage(
            "Es ist nicht möglich ein Foto auszuwählen."),
        "selectedCounter": m7,
        "setPasswordDescription": MessageLookupByLibrary.simpleMessage(
            "Legen Sie ein Passwort fest. Das ist notwendig, um die Referenzbilder zu verschlüsseln und zu speichern."),
        "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "settingsAppearance": MessageLookupByLibrary.simpleMessage("Aussehen"),
        "settingsBlinkComparisonPage":
            MessageLookupByLibrary.simpleMessage("Vergleichsseite"),
        "settingsCamera": MessageLookupByLibrary.simpleMessage("Kamera"),
        "settingsCameraFullscreenMode":
            MessageLookupByLibrary.simpleMessage("Vollbildmodus"),
        "settingsFlashByDefault": MessageLookupByLibrary.simpleMessage(
            "Blitzlicht standardmäßig einschalten"),
        "settingsLanguage": MessageLookupByLibrary.simpleMessage("Sprache"),
        "settingsReferenceImageBorderColor":
            MessageLookupByLibrary.simpleMessage(
                "Farbe des Referenzbildrahmen"),
        "settingsSystemLanguageOption":
            MessageLookupByLibrary.simpleMessage("System"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Theme"),
        "settingsThemeDark": MessageLookupByLibrary.simpleMessage("Nachtmodus"),
        "settingsThemeLight": MessageLookupByLibrary.simpleMessage("Tagmodus"),
        "settingsThemeSystem": MessageLookupByLibrary.simpleMessage("System"),
        "show": MessageLookupByLibrary.simpleMessage("Zeigen"),
        "showError": MessageLookupByLibrary.simpleMessage("Fehler anzeigen"),
        "signIn": MessageLookupByLibrary.simpleMessage("Anmelden"),
        "signInDescription": MessageLookupByLibrary.simpleMessage(
            "Melden Sie sich an, um Referenzbilder zu ändern und anzuzeigen."),
        "switchCameraFlashError": MessageLookupByLibrary.simpleMessage(
            "Umschalten des Blitzmodus nicht möglich."),
        "takePhoto": MessageLookupByLibrary.simpleMessage("Ein Foto machen"),
        "takePhotoError": MessageLookupByLibrary.simpleMessage(
            "Es ist nicht möglich ein Foto zu machen."),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("Falsches Passwort"),
        "yes": MessageLookupByLibrary.simpleMessage("Ja")
      };
}
