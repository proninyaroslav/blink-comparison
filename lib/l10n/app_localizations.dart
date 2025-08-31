import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('ru'),
  ];

  /// No description provided for @projectIssuesPage.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/proninyaroslav/blink-comparison/issues'**
  String get projectIssuesPage;

  /// No description provided for @appChangelogUrl.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md'**
  String get appChangelogUrl;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'Simplifies comparing photos of tamper-evident seals and patterns using your eyes.\nMore information and also to help the project: https://github.com/proninyaroslav/blink-comparison'**
  String get appDescription;

  /// No description provided for @appLicense.
  ///
  /// In en, this message translates to:
  /// **'Blink Comparison is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html'**
  String get appLicense;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page Not Found'**
  String get pageNotFound;

  /// No description provided for @setPasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'Set a password. This is necessary to encrypt and store the reference images'**
  String get setPasswordDescription;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get enterPassword;

  /// No description provided for @enterPasswordAgain.
  ///
  /// In en, this message translates to:
  /// **'Password again'**
  String get enterPasswordAgain;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password length must be at least {number} characters'**
  String passwordTooShort(Object number);

  /// No description provided for @passwordTooLong.
  ///
  /// In en, this message translates to:
  /// **'Password length must be no more than {number} characters'**
  String passwordTooLong(Object number);

  /// No description provided for @passwordMismatch.
  ///
  /// In en, this message translates to:
  /// **'Password mismatch'**
  String get passwordMismatch;

  /// No description provided for @savePasswordFailed.
  ///
  /// In en, this message translates to:
  /// **'Unable to save password'**
  String get savePasswordFailed;

  /// No description provided for @passwordEmptyError.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get passwordEmptyError;

  /// No description provided for @passwordRepeatError.
  ///
  /// In en, this message translates to:
  /// **'Please repeat the password'**
  String get passwordRepeatError;

  /// No description provided for @crashDialogSummary.
  ///
  /// In en, this message translates to:
  /// **'An app error occurred. You can report it to the developers'**
  String get crashDialogSummary;

  /// No description provided for @crashDialogExtraInfo.
  ///
  /// In en, this message translates to:
  /// **'Add extra info and comments here:'**
  String get crashDialogExtraInfo;

  /// No description provided for @crashDialogReport.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get crashDialogReport;

  /// No description provided for @crashDialogMoreDetails.
  ///
  /// In en, this message translates to:
  /// **'More details'**
  String get crashDialogMoreDetails;

  /// No description provided for @crashDialogNoEmailApp.
  ///
  /// In en, this message translates to:
  /// **'No email app found. You can manually copy the error and send it to {email}\nor send on the project page {pageUrl}'**
  String crashDialogNoEmailApp(Object email, Object pageUrl);

  /// No description provided for @openLinkFailed.
  ///
  /// In en, this message translates to:
  /// **'Unable to open link'**
  String get openLinkFailed;

  /// No description provided for @signInDescription.
  ///
  /// In en, this message translates to:
  /// **'Sign in to modify and view reference images'**
  String get signInDescription;

  /// No description provided for @wrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong password'**
  String get wrongPassword;

  /// No description provided for @emptyPasswordError.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get emptyPasswordError;

  /// No description provided for @loadPasswordFailed.
  ///
  /// In en, this message translates to:
  /// **'Unable to load password from storage'**
  String get loadPasswordFailed;

  /// No description provided for @addReferenceImageDescription.
  ///
  /// In en, this message translates to:
  /// **'List is empty. Add an image to it'**
  String get addReferenceImageDescription;

  /// No description provided for @takePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take a photo'**
  String get takePhoto;

  /// No description provided for @selectImage.
  ///
  /// In en, this message translates to:
  /// **'Select image'**
  String get selectImage;

  /// No description provided for @savingImageMessage.
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get savingImageMessage;

  /// No description provided for @selectImagesFailed.
  ///
  /// In en, this message translates to:
  /// **'Unable to select images'**
  String get selectImagesFailed;

  /// No description provided for @defaultNotifyChannelTitle.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultNotifyChannelTitle;

  /// No description provided for @defaultNotifyChannelDescription.
  ///
  /// In en, this message translates to:
  /// **'All notifications that don\'\'t suitable for the other categories'**
  String get defaultNotifyChannelDescription;

  /// No description provided for @foregroundNotificationChannel.
  ///
  /// In en, this message translates to:
  /// **'Foreground notification'**
  String get foregroundNotificationChannel;

  /// No description provided for @saveRefImageNotificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Saving a reference images in the background...'**
  String get saveRefImageNotificationTitle;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @loadPageFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load page'**
  String get loadPageFailed;

  /// No description provided for @saveImageError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while saving'**
  String get saveImageError;

  /// No description provided for @ioError.
  ///
  /// In en, this message translates to:
  /// **'I/O error'**
  String get ioError;

  /// No description provided for @encryptionError.
  ///
  /// In en, this message translates to:
  /// **'Encryption error'**
  String get encryptionError;

  /// No description provided for @selectedCounter.
  ///
  /// In en, this message translates to:
  /// **'Selected: {count}'**
  String selectedCounter(Object count);

  /// No description provided for @deleteImagesDialog.
  ///
  /// In en, this message translates to:
  /// **'{howMany, plural, one {Do you want to delete the selected image?} other {Do you want to delete the selected images?}}'**
  String deleteImagesDialog(num howMany);

  /// No description provided for @imagesDeleted.
  ///
  /// In en, this message translates to:
  /// **'{howMany, plural, one {Image deleted} other {Images deleted}}'**
  String imagesDeleted(num howMany);

  /// No description provided for @deleteImagesFailed.
  ///
  /// In en, this message translates to:
  /// **'{howMany, plural, one {Failed to delete image} other {Failed to delete some images}}'**
  String deleteImagesFailed(num howMany);

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get selectAll;

  /// No description provided for @loadingReferenceImage.
  ///
  /// In en, this message translates to:
  /// **'Loading/decrypting, please wait...'**
  String get loadingReferenceImage;

  /// No description provided for @openCameraError.
  ///
  /// In en, this message translates to:
  /// **'Unable to open the camera'**
  String get openCameraError;

  /// No description provided for @cameraAccessDenied.
  ///
  /// In en, this message translates to:
  /// **'Camera access denied. Please grant the permission in the system settings'**
  String get cameraAccessDenied;

  /// No description provided for @openAppSettings.
  ///
  /// In en, this message translates to:
  /// **'Open settings'**
  String get openAppSettings;

  /// No description provided for @cameraErrorReason.
  ///
  /// In en, this message translates to:
  /// **'Error: {reason}'**
  String cameraErrorReason(Object reason);

  /// No description provided for @noSelectedCameraError.
  ///
  /// In en, this message translates to:
  /// **'Error: no camera selected or unavailable'**
  String get noSelectedCameraError;

  /// No description provided for @takePhotoError.
  ///
  /// In en, this message translates to:
  /// **'Unable to take a photo'**
  String get takePhotoError;

  /// No description provided for @showError.
  ///
  /// In en, this message translates to:
  /// **'Show error'**
  String get showError;

  /// No description provided for @switchCameraFlashError.
  ///
  /// In en, this message translates to:
  /// **'Failed to switch flash mode'**
  String get switchCameraFlashError;

  /// No description provided for @loadReferenceImageFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load reference image'**
  String get loadReferenceImageFailed;

  /// No description provided for @referenceImageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Reference image not found'**
  String get referenceImageNotFound;

  /// No description provided for @loadReferenceImageFailedIO.
  ///
  /// In en, this message translates to:
  /// **'I/O error occurred while loading the reference image'**
  String get loadReferenceImageFailedIO;

  /// No description provided for @decryptReferenceImageNoEncryptKey.
  ///
  /// In en, this message translates to:
  /// **'Failed to decrypt reference image: missing encrypt key'**
  String get decryptReferenceImageNoEncryptKey;

  /// No description provided for @decryptReferenceImageFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to decrypt reference image'**
  String get decryptReferenceImageFailed;

  /// No description provided for @decryptReferenceImageInvalidKey.
  ///
  /// In en, this message translates to:
  /// **'Failed to decrypt reference image: invalid encrypt key'**
  String get decryptReferenceImageInvalidKey;

  /// No description provided for @imageOverlayOpacity.
  ///
  /// In en, this message translates to:
  /// **'Overlay opacity'**
  String get imageOverlayOpacity;

  /// No description provided for @saveImageInvalidKey.
  ///
  /// In en, this message translates to:
  /// **'Failed to save the reference image: invalid encrypt key'**
  String get saveImageInvalidKey;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsThemeSystem;

  /// No description provided for @settingsThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeLight;

  /// No description provided for @settingsThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeDark;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsSystemLanguageOption.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsSystemLanguageOption;

  /// No description provided for @settingsReferenceImageBorderColor.
  ///
  /// In en, this message translates to:
  /// **'Reference image border color'**
  String get settingsReferenceImageBorderColor;

  /// No description provided for @settingsBlinkComparisonPage.
  ///
  /// In en, this message translates to:
  /// **'Comparison page'**
  String get settingsBlinkComparisonPage;

  /// No description provided for @settingsCamera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get settingsCamera;

  /// No description provided for @settingsFlashByDefault.
  ///
  /// In en, this message translates to:
  /// **'Enable flash by default'**
  String get settingsFlashByDefault;

  /// No description provided for @imageOverlayOpacityCaseTooltip.
  ///
  /// In en, this message translates to:
  /// **'You can change the reference image overlay opacity as you like in the settings menu above'**
  String get imageOverlayOpacityCaseTooltip;

  /// No description provided for @referenceImageBorderCaseTooltip.
  ///
  /// In en, this message translates to:
  /// **'The colored border around denotes the reference image. The border color can be changed in the app settings'**
  String get referenceImageBorderCaseTooltip;

  /// No description provided for @blinkComparisonCaseTooltip.
  ///
  /// In en, this message translates to:
  /// **'Pressing anywhere on the screen toggles between the reference image and the image you just took. Fast switching helps you see differences in images'**
  String get blinkComparisonCaseTooltip;

  /// No description provided for @aboutApp.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutApp;

  /// No description provided for @changelog.
  ///
  /// In en, this message translates to:
  /// **'Changelog'**
  String get changelog;

  /// No description provided for @settingsCameraFullscreenMode.
  ///
  /// In en, this message translates to:
  /// **'Fullscreen mode'**
  String get settingsCameraFullscreenMode;

  /// No description provided for @authorizeFailedException.
  ///
  /// In en, this message translates to:
  /// **'Exception during authorization'**
  String get authorizeFailedException;

  /// No description provided for @enableEncryptPromt.
  ///
  /// In en, this message translates to:
  /// **'Do you want to encrypt your images? This requires setting a password for extra security'**
  String get enableEncryptPromt;

  /// No description provided for @enableEncryptPositiveAnswer.
  ///
  /// In en, this message translates to:
  /// **'Yes, set a password'**
  String get enableEncryptPositiveAnswer;

  /// No description provided for @settingsBehavior.
  ///
  /// In en, this message translates to:
  /// **'Behavior'**
  String get settingsBehavior;

  /// No description provided for @encryptionPreferenceTitle.
  ///
  /// In en, this message translates to:
  /// **'Image encryption'**
  String get encryptionPreferenceTitle;

  /// No description provided for @encryptionPreferenceNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get encryptionPreferenceNone;

  /// No description provided for @encryptionPreferencePassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get encryptionPreferencePassword;

  /// No description provided for @changeCameraZoomError.
  ///
  /// In en, this message translates to:
  /// **'Unable to change zoom level'**
  String get changeCameraZoomError;

  /// No description provided for @settingsCameraAutofocus.
  ///
  /// In en, this message translates to:
  /// **'Autofocus'**
  String get settingsCameraAutofocus;

  /// No description provided for @noSavedPassword.
  ///
  /// In en, this message translates to:
  /// **'No saved password'**
  String get noSavedPassword;

  /// No description provided for @changeCameraAutofocusError.
  ///
  /// In en, this message translates to:
  /// **'Unable to change autofocus mode'**
  String get changeCameraAutofocusError;

  /// No description provided for @loadImageError.
  ///
  /// In en, this message translates to:
  /// **'Unable to load image'**
  String get loadImageError;

  /// No description provided for @databaseError.
  ///
  /// In en, this message translates to:
  /// **'Database error'**
  String get databaseError;

  /// No description provided for @editImageProperties.
  ///
  /// In en, this message translates to:
  /// **'Edit image properties'**
  String get editImageProperties;

  /// No description provided for @imageProperties.
  ///
  /// In en, this message translates to:
  /// **'Properties'**
  String get imageProperties;

  /// No description provided for @imageLabel.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get imageLabel;

  /// No description provided for @cameraLockOrientationError.
  ///
  /// In en, this message translates to:
  /// **'Unable to lock camera orientation'**
  String get cameraLockOrientationError;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'es', 'fr', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
