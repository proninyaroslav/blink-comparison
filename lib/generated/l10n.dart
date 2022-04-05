// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `https://github.com/proninyaroslav/blink-comparison/issues`
  String get projectIssuesPage {
    return Intl.message(
      'https://github.com/proninyaroslav/blink-comparison/issues',
      name: 'projectIssuesPage',
      desc: '',
      args: [],
    );
  }

  /// `https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md`
  String get appChangelogUrl {
    return Intl.message(
      'https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md',
      name: 'appChangelogUrl',
      desc: '',
      args: [],
    );
  }

  /// `Simplifies comparing photos of tamper-evident seals and patterns using your eyes.\nMore information and also to help the project: https://github.com/proninyaroslav/blink-comparison`
  String get appDescription {
    return Intl.message(
      'Simplifies comparing photos of tamper-evident seals and patterns using your eyes.\nMore information and also to help the project: https://github.com/proninyaroslav/blink-comparison',
      name: 'appDescription',
      desc: '',
      args: [],
    );
  }

  /// `Blink Comparison is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html`
  String get appLicense {
    return Intl.message(
      'Blink Comparison is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html',
      name: 'appLicense',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Page Not Found`
  String get pageNotFound {
    return Intl.message(
      'Page Not Found',
      name: 'pageNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Set a password. This is necessary to encrypt and store the reference images`
  String get setPasswordDescription {
    return Intl.message(
      'Set a password. This is necessary to encrypt and store the reference images',
      name: 'setPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get enterPassword {
    return Intl.message(
      'Password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password again`
  String get enterPasswordAgain {
    return Intl.message(
      'Password again',
      name: 'enterPasswordAgain',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Password length must be at least {number} characters`
  String passwordTooShort(Object number) {
    return Intl.message(
      'Password length must be at least $number characters',
      name: 'passwordTooShort',
      desc: '',
      args: [number],
    );
  }

  /// `Password length must be no more than {number} characters`
  String passwordTooLong(Object number) {
    return Intl.message(
      'Password length must be no more than $number characters',
      name: 'passwordTooLong',
      desc: '',
      args: [number],
    );
  }

  /// `Password mismatch`
  String get passwordMismatch {
    return Intl.message(
      'Password mismatch',
      name: 'passwordMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Unable to save password`
  String get savePasswordFailed {
    return Intl.message(
      'Unable to save password',
      name: 'savePasswordFailed',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get passwordEmptyError {
    return Intl.message(
      'Password cannot be empty',
      name: 'passwordEmptyError',
      desc: '',
      args: [],
    );
  }

  /// `Please repeat the password`
  String get passwordRepeatError {
    return Intl.message(
      'Please repeat the password',
      name: 'passwordRepeatError',
      desc: '',
      args: [],
    );
  }

  /// `An app error occurred. You can report it to the developers`
  String get crashDialogSummary {
    return Intl.message(
      'An app error occurred. You can report it to the developers',
      name: 'crashDialogSummary',
      desc: '',
      args: [],
    );
  }

  /// `Add extra info and comments here:`
  String get crashDialogExtraInfo {
    return Intl.message(
      'Add extra info and comments here:',
      name: 'crashDialogExtraInfo',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get crashDialogReport {
    return Intl.message(
      'Report',
      name: 'crashDialogReport',
      desc: '',
      args: [],
    );
  }

  /// `More details`
  String get crashDialogMoreDetails {
    return Intl.message(
      'More details',
      name: 'crashDialogMoreDetails',
      desc: '',
      args: [],
    );
  }

  /// `No email app found. You can manually copy the error and send it to {email}\nor send on the project page {pageUrl}`
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return Intl.message(
      'No email app found. You can manually copy the error and send it to $email\nor send on the project page $pageUrl',
      name: 'crashDialogNoEmailApp',
      desc: '',
      args: [email, pageUrl],
    );
  }

  /// `Unable to open link`
  String get openLinkFailed {
    return Intl.message(
      'Unable to open link',
      name: 'openLinkFailed',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to modify and view reference images`
  String get signInDescription {
    return Intl.message(
      'Sign in to modify and view reference images',
      name: 'signInDescription',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get wrongPassword {
    return Intl.message(
      'Wrong password',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get emptyPasswordError {
    return Intl.message(
      'Password cannot be empty',
      name: 'emptyPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `Unable to load password from storage`
  String get loadPasswordFailed {
    return Intl.message(
      'Unable to load password from storage',
      name: 'loadPasswordFailed',
      desc: '',
      args: [],
    );
  }

  /// `List is empty. Add an image to it`
  String get addReferenceImageDescription {
    return Intl.message(
      'List is empty. Add an image to it',
      name: 'addReferenceImageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo`
  String get takePhoto {
    return Intl.message(
      'Take a photo',
      name: 'takePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Select image`
  String get selectImage {
    return Intl.message(
      'Select image',
      name: 'selectImage',
      desc: '',
      args: [],
    );
  }

  /// `Saving...`
  String get savingImageMessage {
    return Intl.message(
      'Saving...',
      name: 'savingImageMessage',
      desc: '',
      args: [],
    );
  }

  /// `Unable to select images`
  String get selectImagesFailed {
    return Intl.message(
      'Unable to select images',
      name: 'selectImagesFailed',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get defaultNotifyChannelTitle {
    return Intl.message(
      'Default',
      name: 'defaultNotifyChannelTitle',
      desc: '',
      args: [],
    );
  }

  /// `All notifications that don't suitable for the other categories`
  String get defaultNotifyChannelDescription {
    return Intl.message(
      'All notifications that don\'t suitable for the other categories',
      name: 'defaultNotifyChannelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Foreground notification`
  String get foregroundNotificationChannel {
    return Intl.message(
      'Foreground notification',
      name: 'foregroundNotificationChannel',
      desc: '',
      args: [],
    );
  }

  /// `Saving a reference images in the background...`
  String get saveRefImageNotificationTitle {
    return Intl.message(
      'Saving a reference images in the background...',
      name: 'saveRefImageNotificationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load page`
  String get loadPageFailed {
    return Intl.message(
      'Failed to load page',
      name: 'loadPageFailed',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while saving`
  String get saveImageError {
    return Intl.message(
      'An error occurred while saving',
      name: 'saveImageError',
      desc: '',
      args: [],
    );
  }

  /// `I/O error`
  String get IOError {
    return Intl.message(
      'I/O error',
      name: 'IOError',
      desc: '',
      args: [],
    );
  }

  /// `Encryption error`
  String get encryptionError {
    return Intl.message(
      'Encryption error',
      name: 'encryptionError',
      desc: '',
      args: [],
    );
  }

  /// `Selected: {count}`
  String selectedCounter(Object count) {
    return Intl.message(
      'Selected: $count',
      name: 'selectedCounter',
      desc: '',
      args: [count],
    );
  }

  /// `{howMany, plural, one {Do you want to delete the selected image?} other {Do you want to delete the selected images?}}`
  String deleteImagesDialog(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Do you want to delete the selected image?',
      other: 'Do you want to delete the selected images?',
      name: 'deleteImagesDialog',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, one {Image deleted} other {Images deleted}}`
  String imagesDeleted(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Image deleted',
      other: 'Images deleted',
      name: 'imagesDeleted',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, one {Failed to delete image} other {Failed to delete some images}}`
  String deleteImagesFailed(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Failed to delete image',
      other: 'Failed to delete some images',
      name: 'deleteImagesFailed',
      desc: '',
      args: [howMany],
    );
  }

  /// `Select all`
  String get selectAll {
    return Intl.message(
      'Select all',
      name: 'selectAll',
      desc: '',
      args: [],
    );
  }

  /// `Loading and decrypting, please wait...`
  String get loadingReferenceImage {
    return Intl.message(
      'Loading and decrypting, please wait...',
      name: 'loadingReferenceImage',
      desc: '',
      args: [],
    );
  }

  /// `Unable to open the camera`
  String get openCameraError {
    return Intl.message(
      'Unable to open the camera',
      name: 'openCameraError',
      desc: '',
      args: [],
    );
  }

  /// `Error: {reason}`
  String cameraErrorReason(Object reason) {
    return Intl.message(
      'Error: $reason',
      name: 'cameraErrorReason',
      desc: '',
      args: [reason],
    );
  }

  /// `Error: no camera selected or unavailable`
  String get noSelectedCameraError {
    return Intl.message(
      'Error: no camera selected or unavailable',
      name: 'noSelectedCameraError',
      desc: '',
      args: [],
    );
  }

  /// `Unable to take a photo`
  String get takePhotoError {
    return Intl.message(
      'Unable to take a photo',
      name: 'takePhotoError',
      desc: '',
      args: [],
    );
  }

  /// `Show error`
  String get showError {
    return Intl.message(
      'Show error',
      name: 'showError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to switch flash mode`
  String get switchCameraFlashError {
    return Intl.message(
      'Failed to switch flash mode',
      name: 'switchCameraFlashError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load reference image`
  String get loadReferenceImageFailed {
    return Intl.message(
      'Failed to load reference image',
      name: 'loadReferenceImageFailed',
      desc: '',
      args: [],
    );
  }

  /// `Reference image not found`
  String get referenceImageNotFound {
    return Intl.message(
      'Reference image not found',
      name: 'referenceImageNotFound',
      desc: '',
      args: [],
    );
  }

  /// `I/O error occurred while loading the reference image`
  String get loadReferenceImageFailedIO {
    return Intl.message(
      'I/O error occurred while loading the reference image',
      name: 'loadReferenceImageFailedIO',
      desc: '',
      args: [],
    );
  }

  /// `Failed to decrypt reference image: missing encrypt key`
  String get decryptReferenceImageNoEncryptKey {
    return Intl.message(
      'Failed to decrypt reference image: missing encrypt key',
      name: 'decryptReferenceImageNoEncryptKey',
      desc: '',
      args: [],
    );
  }

  /// `Failed to decrypt reference image`
  String get decryptReferenceImageFailed {
    return Intl.message(
      'Failed to decrypt reference image',
      name: 'decryptReferenceImageFailed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to decrypt reference image: invalid encrypt key`
  String get decryptReferenceImageInvalidKey {
    return Intl.message(
      'Failed to decrypt reference image: invalid encrypt key',
      name: 'decryptReferenceImageInvalidKey',
      desc: '',
      args: [],
    );
  }

  /// `Overlay opacity`
  String get imageOverlayOpacity {
    return Intl.message(
      'Overlay opacity',
      name: 'imageOverlayOpacity',
      desc: '',
      args: [],
    );
  }

  /// `Failed to save the reference image: invalid encrypt key`
  String get saveImageInvalidKey {
    return Intl.message(
      'Failed to save the reference image: invalid encrypt key',
      name: 'saveImageInvalidKey',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get settingsAppearance {
    return Intl.message(
      'Appearance',
      name: 'settingsAppearance',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get settingsTheme {
    return Intl.message(
      'Theme',
      name: 'settingsTheme',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get settingsThemeSystem {
    return Intl.message(
      'System',
      name: 'settingsThemeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get settingsThemeLight {
    return Intl.message(
      'Light',
      name: 'settingsThemeLight',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get settingsThemeDark {
    return Intl.message(
      'Dark',
      name: 'settingsThemeDark',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settingsLanguage {
    return Intl.message(
      'Language',
      name: 'settingsLanguage',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get settingsSystemLanguageOption {
    return Intl.message(
      'System',
      name: 'settingsSystemLanguageOption',
      desc: '',
      args: [],
    );
  }

  /// `Reference image border color`
  String get settingsReferenceImageBorderColor {
    return Intl.message(
      'Reference image border color',
      name: 'settingsReferenceImageBorderColor',
      desc: '',
      args: [],
    );
  }

  /// `Comparison page`
  String get settingsBlinkComparisonPage {
    return Intl.message(
      'Comparison page',
      name: 'settingsBlinkComparisonPage',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get settingsCamera {
    return Intl.message(
      'Camera',
      name: 'settingsCamera',
      desc: '',
      args: [],
    );
  }

  /// `Enable flash by default`
  String get settingsFlashByDefault {
    return Intl.message(
      'Enable flash by default',
      name: 'settingsFlashByDefault',
      desc: '',
      args: [],
    );
  }

  /// `You can change the reference image overlay opacity as you like in the settings menu above`
  String get imageOverlayOpacityCaseTooltip {
    return Intl.message(
      'You can change the reference image overlay opacity as you like in the settings menu above',
      name: 'imageOverlayOpacityCaseTooltip',
      desc: '',
      args: [],
    );
  }

  /// `The colored border around denotes the reference image. The border color can be changed in the app settings`
  String get referenceImageBorderCaseTooltip {
    return Intl.message(
      'The colored border around denotes the reference image. The border color can be changed in the app settings',
      name: 'referenceImageBorderCaseTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Pressing anywhere on the screen toggles between the reference image and the image you just took. Fast switching helps you see differences in images`
  String get blinkComparisonCaseTooltip {
    return Intl.message(
      'Pressing anywhere on the screen toggles between the reference image and the image you just took. Fast switching helps you see differences in images',
      name: 'blinkComparisonCaseTooltip',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get aboutApp {
    return Intl.message(
      'About',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Changelog`
  String get changelog {
    return Intl.message(
      'Changelog',
      name: 'changelog',
      desc: '',
      args: [],
    );
  }

  /// `Fullscreen mode`
  String get settingsCameraFullscreenMode {
    return Intl.message(
      'Fullscreen mode',
      name: 'settingsCameraFullscreenMode',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
