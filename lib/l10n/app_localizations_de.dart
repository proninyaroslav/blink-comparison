// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/blink-comparison/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Erleichtert den Vergleich von Fotos manipulationssicher Siegel und Mustern mit bloßem Auge.\nWeitere Informationen zum Projekt und Unterstützungsmöglichkeiten: https://github.com/proninyaroslav/blink-comparison';

  @override
  String get appLicense =>
      'Blink Comparison ist freie und quelloffene Software (FOSS), veröffentlicht unter den Bedingungen der GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get save => 'Speichern';

  @override
  String get close => 'Schließen';

  @override
  String get error => 'Fehler';

  @override
  String get add => 'Hinzufügen';

  @override
  String get show => 'Zeigen';

  @override
  String get delete => 'Löschen';

  @override
  String get accept => 'Annehmen';

  @override
  String get retry => 'Wiederholen';

  @override
  String get pageNotFound => 'Seite nicht gefunden';

  @override
  String get setPasswordDescription =>
      'Legen Sie ein Passwort fest. Das ist notwendig, um die Referenzbilder zu verschlüsseln und zu speichern.';

  @override
  String get enterPassword => 'Passwort';

  @override
  String get enterPasswordAgain => 'Passwort erneut eingeben';

  @override
  String get signIn => 'Anmelden';

  @override
  String passwordTooShort(Object number) {
    return 'Das Passwort muss mindestens $number Zeichen lang sein.';
  }

  @override
  String passwordTooLong(Object number) {
    return 'Das Passwort darf maximal $number Zeichen lang sein.';
  }

  @override
  String get passwordMismatch => 'Die Passwörter sind verschieden.';

  @override
  String get savePasswordFailed =>
      'Es ist nicht möglich das Passwort zu speichern.';

  @override
  String get passwordEmptyError => 'Das Passwort darf nicht leer sein.';

  @override
  String get passwordRepeatError => 'Bitte wiederholen Sie das Passwort.';

  @override
  String get crashDialogSummary =>
      'Ein Anwendungsfehler ist aufgetreten. Sie können ihn an die Entwickler melden.';

  @override
  String get crashDialogExtraInfo =>
      'Fügen Sie hier weitere Informationen und Kommentare hinzu:';

  @override
  String get crashDialogReport => 'Bericht';

  @override
  String get crashDialogMoreDetails => 'Mehr Details';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'Es wurde keine E-Mail-Anwendung gefunden. Sie können den Fehler kopieren und an folgende Adresse $email\noder an die Projektseite $pageUrl senden.';
  }

  @override
  String get openLinkFailed => 'Der Link kann nicht geöffnet werden.';

  @override
  String get signInDescription =>
      'Melden Sie sich an, um Referenzbilder zu ändern und anzuzeigen.';

  @override
  String get wrongPassword => 'Falsches Passwort';

  @override
  String get emptyPasswordError => 'Das Passwort darf nicht leer sein.';

  @override
  String get loadPasswordFailed =>
      'Das Passwort kann nicht aus dem Speicher geladen werden.';

  @override
  String get addReferenceImageDescription =>
      'Die Liste ist leer. Fügen Sie ein Bild hinzu.';

  @override
  String get takePhoto => 'Ein Foto machen';

  @override
  String get selectImage => 'Foto auswählen';

  @override
  String get savingImageMessage => 'Speichern...';

  @override
  String get selectImagesFailed => 'Es ist nicht möglich ein Foto auszuwählen.';

  @override
  String get defaultNotifyChannelTitle => 'Standard';

  @override
  String get defaultNotifyChannelDescription =>
      'Alle Benachrichtigungen, die nicht in anderen Kategorien passen.';

  @override
  String get foregroundNotificationChannel => 'Benachrichtigung im Vordergrund';

  @override
  String get saveRefImageNotificationTitle =>
      'Speichern eines Referenzbildes im Hintergrund...';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get loadPageFailed => 'Die Seite konnte nicht geladen werden.';

  @override
  String get saveImageError => 'Beim Speichern ist ein Fehler aufgetreten.';

  @override
  String get ioError => 'E/A-Fehler';

  @override
  String get encryptionError => 'Verschlüsselungsfehler';

  @override
  String selectedCounter(Object count) {
    return 'Ausgewählt: $count';
  }

  @override
  String deleteImagesDialog(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Möchten Sie die ausgewählten Fotos löschen?',
      one: 'Möchten Sie das ausgewählte Foto löschen?',
    );
    return '$_temp0';
  }

  @override
  String imagesDeleted(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Fotos löschen',
      one: 'Foto löschen',
    );
    return '$_temp0';
  }

  @override
  String deleteImagesFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Einige Fotos konnten nicht gelöscht werden',
      one: 'Foto kann nicht gelöscht werden',
    );
    return '$_temp0';
  }

  @override
  String get selectAll => 'Alle auswählen';

  @override
  String get loadingReferenceImage => 'Laden/entschlüsseln, bitte warten...';

  @override
  String get openCameraError => 'Die Kamera lässt sich nicht öffnen.';

  @override
  String get cameraAccessDenied =>
      'Camera access denied. Please grant the permission in the system settings';

  @override
  String get openAppSettings => 'Open settings';

  @override
  String cameraErrorReason(Object reason) {
    return 'Fehler: $reason';
  }

  @override
  String get noSelectedCameraError =>
      'Fehler: keine Kamera ausgewählt oder Kamera ist nicht verfügbar';

  @override
  String get takePhotoError => 'Es ist nicht möglich ein Foto zu machen.';

  @override
  String get showError => 'Fehler anzeigen';

  @override
  String get switchCameraFlashError =>
      'Umschalten des Blitzmodus nicht möglich.';

  @override
  String get loadReferenceImageFailed =>
      'Referenzbild konnte nicht geladen werden.';

  @override
  String get referenceImageNotFound =>
      'Referenzbild konnte nicht gefunden werden.';

  @override
  String get loadReferenceImageFailedIO =>
      'Beim Laden des Referenzbildes ist ein E/A-Fehler aufgetreten.';

  @override
  String get decryptReferenceImageNoEncryptKey =>
      'Entschlüsselung des Referenzbildes fehlgeschlagen: fehlender Verschlüsselungsschlüssel';

  @override
  String get decryptReferenceImageFailed =>
      'Entschlüsselung des Referenzbildes fehlgeschlagen';

  @override
  String get decryptReferenceImageInvalidKey =>
      'Entschlüsselung des Referenzbildes fehlgeschlagen: ungültiger Verschlüsselungsschlüssel';

  @override
  String get imageOverlayOpacity => 'Deckkraft der Überlagerung';

  @override
  String get saveImageInvalidKey =>
      'Speichern des Referenzbildes fehlgeschlagen: Ungültiger Verschlüsselungsschlüssel';

  @override
  String get settings => 'Einstellungen';

  @override
  String get settingsAppearance => 'Aussehen';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsThemeLight => 'Tagmodus';

  @override
  String get settingsThemeDark => 'Nachtmodus';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get settingsSystemLanguageOption => 'System';

  @override
  String get settingsReferenceImageBorderColor =>
      'Farbe des Referenzbildrahmen';

  @override
  String get settingsBlinkComparisonPage => 'Vergleichsseite';

  @override
  String get settingsCamera => 'Kamera';

  @override
  String get settingsFlashByDefault => 'Blitzlicht standardmäßig einschalten';

  @override
  String get imageOverlayOpacityCaseTooltip =>
      'Sie können die Deckkraft des Referenzbildes im Einstellungsmenü oben nach Belieben ändern.';

  @override
  String get referenceImageBorderCaseTooltip =>
      'Die farbige Umrandung kennzeichnet das Referenzbild. Die Farbe des Rahmens kann in den Einstellungen geändert werden.';

  @override
  String get blinkComparisonCaseTooltip =>
      'Durch die Berührung des Bildschirm an einer beliebigen Stelle können Sie zwischen dem Referenzbild und dem gerade aufgenommenen Bild umschalten. Ein schnelles Umschalten hilft Ihnen dabei, Unterschiede in den Bildern zu erkennen.';

  @override
  String get aboutApp => 'Über';

  @override
  String get changelog => 'Änderungsprotokoll';

  @override
  String get settingsCameraFullscreenMode => 'Vollbildmodus';

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
