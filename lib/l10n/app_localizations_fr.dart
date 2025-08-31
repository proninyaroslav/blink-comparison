// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/blink-comparison/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Simplifie la comparaison de photos de scellés inviolables et de motifs à l\'aide de vos yeux.\nPlus d\'informations et aussi pour aider le projet : https://github.com/proninyaroslav/blink-comparison';

  @override
  String get appLicense =>
      'Blink Comparison est un logiciel libre et gratuit (FOSS), publié selon les termes de la GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Sauvegarder';

  @override
  String get close => 'Fermer';

  @override
  String get error => 'Erreur';

  @override
  String get add => 'Ajouter';

  @override
  String get show => 'Afficher';

  @override
  String get delete => 'Supprimer';

  @override
  String get accept => 'Accepter';

  @override
  String get retry => 'Réessayer';

  @override
  String get pageNotFound => 'Page non trouvée';

  @override
  String get setPasswordDescription =>
      'Définissez un mot de passe. Celui-ci est nécessaire pour crypter et stocker les images de référence.';

  @override
  String get enterPassword => 'Mot de passe';

  @override
  String get enterPasswordAgain => 'Entrez de nouveau votre mot de passe';

  @override
  String get signIn => 'Se connecter';

  @override
  String passwordTooShort(Object number) {
    return 'La longueur du mot de passe doit être d\'\'au moins $number caractères.';
  }

  @override
  String passwordTooLong(Object number) {
    return 'La longueur du mot de passe ne doit pas dépasser $number caractères.';
  }

  @override
  String get passwordMismatch => 'Mauvaise concordance du mot de passe';

  @override
  String get savePasswordFailed =>
      'Impossible d\'\'enregistrer le mot de passe';

  @override
  String get passwordEmptyError => 'Le mot de passe ne peut pas être vide';

  @override
  String get passwordRepeatError => 'Veuillez répéter le mot de passe';

  @override
  String get crashDialogSummary =>
      'Une erreur d\'application s\'est produite. Vous pouvez le signaler aux développeurs';

  @override
  String get crashDialogExtraInfo =>
      'Ajoutez des informations supplémentaires et des commentaires ici:';

  @override
  String get crashDialogReport => 'Reporter';

  @override
  String get crashDialogMoreDetails => 'Plus de détails';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'Aucune application de messagerie n\'a été trouvée. Vous pouvez copier manuellement l\'erreur et l\'envoyer à $email\nou l\'envoyer sur la page du projet $pageUrl.';
  }

  @override
  String get openLinkFailed => 'Impossible d\'\'ouvrir le lien';

  @override
  String get signInDescription =>
      'Connectez-vous pour modifier et visualiser les images de référence';

  @override
  String get wrongPassword => 'Mot de passe erroné';

  @override
  String get emptyPasswordError => 'Le mot de passe ne peut pas être vide';

  @override
  String get loadPasswordFailed =>
      'Impossible de charger le mot de passe depuis le stockage';

  @override
  String get addReferenceImageDescription =>
      'La liste est vide. Ajoutez-y une image';

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
