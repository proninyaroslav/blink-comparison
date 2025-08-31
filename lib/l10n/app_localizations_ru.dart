// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/blink-comparison/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Упрощает сравнение фото пломб с защитой от вскрытия и узоров с помощью ваших глаз.\nБольше информации, а также помочь проекту: https://github.com/proninyaroslav/blink-comparison';

  @override
  String get appLicense =>
      'Blink Comparison является свободным программным обеспечением с открытым исходным кодом (FOSS), выпущенным в соответствии с условиями лицензии GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get cancel => 'Отмена';

  @override
  String get save => 'Сохранить';

  @override
  String get close => 'Закрыть';

  @override
  String get error => 'Ошибка';

  @override
  String get add => 'Добавить';

  @override
  String get show => 'Показать';

  @override
  String get delete => 'Удалить';

  @override
  String get accept => 'Принять';

  @override
  String get retry => 'Повторить';

  @override
  String get pageNotFound => 'Страница не найдена';

  @override
  String get setPasswordDescription =>
      'Установите пароль. Это необходимо для шифрования и хранения эталонных изображений';

  @override
  String get enterPassword => 'Пароль';

  @override
  String get enterPasswordAgain => 'Пароль ещё раз';

  @override
  String get signIn => 'Войти';

  @override
  String passwordTooShort(Object number) {
    return 'Длина пароля должна быть не меньше $number символов';
  }

  @override
  String passwordTooLong(Object number) {
    return 'Длина пароля должна быть не больше $number символов';
  }

  @override
  String get passwordMismatch => 'Пароли не совпадают';

  @override
  String get savePasswordFailed => 'Не удалось сохранить пароль';

  @override
  String get passwordEmptyError => 'Пароль не может быть пустым';

  @override
  String get passwordRepeatError => 'Пожалуйста, повторите пароль';

  @override
  String get crashDialogSummary =>
      'В приложении произошла ошибка. Вы можете сообщить об этом разработчикам';

  @override
  String get crashDialogExtraInfo =>
      'Добавьте дополнительную информацию и комментарии сюда:';

  @override
  String get crashDialogReport => 'Сообщить';

  @override
  String get crashDialogMoreDetails => 'Подробнее';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'Приложение для отправки email не найдено. Вы можете вручную скопировать ошибку и и отправить её по адресу $email, или отправить на странице проекта $pageUrl';
  }

  @override
  String get openLinkFailed => 'Невозможно открыть ссылку';

  @override
  String get signInDescription =>
      'Войдите, чтобы изменять и посматривать эталонные изображения';

  @override
  String get wrongPassword => 'Неверный пароль';

  @override
  String get emptyPasswordError => 'Пароль не может быть пустым';

  @override
  String get loadPasswordFailed => 'Не удалось загрузить пароль из хранилища';

  @override
  String get addReferenceImageDescription =>
      'Список пуст. Добавьте в него изображение';

  @override
  String get takePhoto => 'Сделать фото';

  @override
  String get selectImage => 'Выбрать изображение';

  @override
  String get savingImageMessage => 'Сохранение...';

  @override
  String get selectImagesFailed => 'Невозможно выбрать изображения';

  @override
  String get defaultNotifyChannelTitle => 'По умолчанию';

  @override
  String get defaultNotifyChannelDescription =>
      'Все уведомления, не подходящие для других категорий';

  @override
  String get foregroundNotificationChannel => 'Уведомление переднего плана';

  @override
  String get saveRefImageNotificationTitle =>
      'Сохранение эталонных изображений в фоне...';

  @override
  String get refresh => 'Обновить';

  @override
  String get loadPageFailed => 'Не удалось загрузить страницу';

  @override
  String get saveImageError => 'Во время сохранения произошла ошибка';

  @override
  String get ioError => 'Ошибка ввода/вывода';

  @override
  String get encryptionError => 'Ошибка шифрования';

  @override
  String selectedCounter(Object count) {
    return 'Выбрано: $count';
  }

  @override
  String deleteImagesDialog(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Вы хотите удалить выбранные изображения?',
      one: 'Вы хотите удалить выбранные изображение?',
    );
    return '$_temp0';
  }

  @override
  String imagesDeleted(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Изображения удалены',
      one: 'Изображение удалено',
    );
    return '$_temp0';
  }

  @override
  String deleteImagesFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Не удалось удалить некоторые изображения',
      one: 'Не удалось удалить изображение',
    );
    return '$_temp0';
  }

  @override
  String get selectAll => 'Выбрать все';

  @override
  String get loadingReferenceImage =>
      'Загрузка/расшифровка, пожалуйста подождите...';

  @override
  String get openCameraError => 'Не удалось открыть камеру';

  @override
  String get cameraAccessDenied =>
      'Доступ к камере запрещён. Пожалуйста, предоставьте разрешение в настройках системы';

  @override
  String get openAppSettings => 'Открыть настройки';

  @override
  String cameraErrorReason(Object reason) {
    return 'Ошибка: $reason';
  }

  @override
  String get noSelectedCameraError =>
      'Ошибка: камера не выбрана или недоступна';

  @override
  String get takePhotoError => 'Не удалось снять фото';

  @override
  String get showError => 'Показать ошибку';

  @override
  String get switchCameraFlashError => 'Не удалось переключить режим вспышки';

  @override
  String get loadReferenceImageFailed =>
      'Не удалось загрузить эталонное изображение';

  @override
  String get referenceImageNotFound => 'Эталонное изображение не найдено';

  @override
  String get loadReferenceImageFailedIO =>
      'Произошла ошибка ввода/вывода при загрузке эталонного изображения';

  @override
  String get decryptReferenceImageNoEncryptKey =>
      'Не удалось расшифровать эталонное изображение: отсутствует ключ шифрования';

  @override
  String get decryptReferenceImageFailed =>
      'Не удалось расшифровать эталонное изображение';

  @override
  String get decryptReferenceImageInvalidKey =>
      'Не удалось расшифровать эталонное изображение: неверный ключ шифрования';

  @override
  String get imageOverlayOpacity => 'Прозрачность наложения';

  @override
  String get saveImageInvalidKey =>
      'Не удалось сохранить эталонное изображение: неверный ключ шифрования';

  @override
  String get settings => 'Настройки';

  @override
  String get settingsAppearance => 'Внешний вид';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeSystem => 'Системная';

  @override
  String get settingsThemeLight => 'Светлая';

  @override
  String get settingsThemeDark => 'Тёмная';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get settingsSystemLanguageOption => 'Системный';

  @override
  String get settingsReferenceImageBorderColor =>
      'Цвет рамки эталонного изображения';

  @override
  String get settingsBlinkComparisonPage => 'Страница сравнения';

  @override
  String get settingsCamera => 'Камера';

  @override
  String get settingsFlashByDefault => 'Включить вспышку по умолчанию';

  @override
  String get imageOverlayOpacityCaseTooltip =>
      'Вы можете изменить прозрачность наложения эталонного изображения по своему усмотрению в меню настроек выше';

  @override
  String get referenceImageBorderCaseTooltip =>
      'Цветная рамка вокруг обозначает эталонное изображение. Цвет рамки можно изменить в настройках приложения';

  @override
  String get blinkComparisonCaseTooltip =>
      'При нажатии в любом месте экрана происходит переключение между эталонным изображением и только что сделанным изображением. Быстрое переключение помогает увидеть различия в изображениях';

  @override
  String get aboutApp => 'О программе';

  @override
  String get changelog => 'История изменений';

  @override
  String get settingsCameraFullscreenMode => 'Полноэкранный режим';

  @override
  String get authorizeFailedException => 'Исключение во время авторизации';

  @override
  String get enableEncryptPromt =>
      'Хотите ли вы шифровать ваши изображения? Для этого требуется установить пароль для дополнительной защиты';

  @override
  String get enableEncryptPositiveAnswer => 'Да, установить пароль';

  @override
  String get settingsBehavior => 'Поведение';

  @override
  String get encryptionPreferenceTitle => 'Шифрование изображений';

  @override
  String get encryptionPreferenceNone => 'Нет';

  @override
  String get encryptionPreferencePassword => 'Пароль';

  @override
  String get changeCameraZoomError => 'Не удалось изменить уровень зума';

  @override
  String get settingsCameraAutofocus => 'Автофокус';

  @override
  String get noSavedPassword => 'Нет сохранённого пароля';

  @override
  String get changeCameraAutofocusError =>
      'Невозможно изменить режим автофокусировки';

  @override
  String get loadImageError => 'Не удалось загрузить изображение';

  @override
  String get databaseError => 'Ошибка базы данных';

  @override
  String get editImageProperties => 'Редактировать свойства изображения';

  @override
  String get imageProperties => 'Свойства';

  @override
  String get imageLabel => 'Метка';

  @override
  String get cameraLockOrientationError =>
      'Не удалось зафиксировать ориентацию камеры';
}
