// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
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
  String get localeName => 'ru_RU';

  static String m0(reason) => "Ошибка: ${reason}";

  static String m1(email, pageUrl) =>
      "Приложение для отправки email не найдено. Вы можете вручную скопировать ошибку и и отправить её по адресу ${email}, или отправить на странице проекта ${pageUrl}";

  static String m2(howMany) =>
      "${Intl.plural(howMany, one: 'Вы хотите удалить выбранные изображение?', other: 'Вы хотите удалить выбранные изображения?')}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'Не удалось удалить изображение', other: 'Не удалось удалить некоторые изображения')}";

  static String m4(howMany) =>
      "${Intl.plural(howMany, one: 'Изображение удалено', other: 'Изображения удалены')}";

  static String m5(number) =>
      "Длина пароля должна быть не больше ${number} символов";

  static String m6(number) =>
      "Длина пароля должна быть не меньше ${number} символов";

  static String m7(count) => "Выбрано: ${count}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "IOError": MessageLookupByLibrary.simpleMessage("Ошибка ввода/вывода"),
        "aboutApp": MessageLookupByLibrary.simpleMessage("О программе"),
        "accept": MessageLookupByLibrary.simpleMessage("Принять"),
        "add": MessageLookupByLibrary.simpleMessage("Добавить"),
        "addReferenceImageDescription": MessageLookupByLibrary.simpleMessage(
            "Список пуст. Добавьте в него изображение"),
        "appChangelogUrl": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md"),
        "appDescription": MessageLookupByLibrary.simpleMessage(
            "Упрощает сравнение фото пломб с защитой от вскрытия и узоров с помощью ваших глаз.\nБольше информации, а также помочь проекту: https://github.com/proninyaroslav/blink-comparison"),
        "appLicense": MessageLookupByLibrary.simpleMessage(
            "Blink Comparison является свободным программным обеспечением с открытым исходным кодом (FOSS), выпущенным в соответствии с условиями лицензии GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
        "blinkComparisonCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "При нажатии в любом месте экрана происходит переключение между эталонным изображением и только что сделанным изображением. Быстрое переключение помогает увидеть различия в изображениях"),
        "cameraErrorReason": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "changelog": MessageLookupByLibrary.simpleMessage("История изменений"),
        "close": MessageLookupByLibrary.simpleMessage("Закрыть"),
        "crashDialogExtraInfo": MessageLookupByLibrary.simpleMessage(
            "Добавьте дополнительную информацию и комментарии сюда:"),
        "crashDialogMoreDetails":
            MessageLookupByLibrary.simpleMessage("Подробнее"),
        "crashDialogNoEmailApp": m1,
        "crashDialogReport": MessageLookupByLibrary.simpleMessage("Сообщить"),
        "crashDialogSummary": MessageLookupByLibrary.simpleMessage(
            "В приложении произошла ошибка. Вы можете сообщить об этом разработчикам"),
        "decryptReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Не удалось расшифровать эталонное изображение"),
        "decryptReferenceImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Не удалось расшифровать эталонное изображение: неверный ключ шифрования"),
        "decryptReferenceImageNoEncryptKey": MessageLookupByLibrary.simpleMessage(
            "Не удалось расшифровать эталонное изображение: отсутствует ключ шифрования"),
        "defaultNotifyChannelDescription": MessageLookupByLibrary.simpleMessage(
            "Все уведомления, не подходящие для других категорий"),
        "defaultNotifyChannelTitle":
            MessageLookupByLibrary.simpleMessage("По умолчанию"),
        "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "deleteImagesDialog": m2,
        "deleteImagesFailed": m3,
        "emptyPasswordError":
            MessageLookupByLibrary.simpleMessage("Пароль не может быть пустым"),
        "encryptionError":
            MessageLookupByLibrary.simpleMessage("Ошибка шифрования"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "enterPasswordAgain":
            MessageLookupByLibrary.simpleMessage("Пароль ещё раз"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "foregroundNotificationChannel":
            MessageLookupByLibrary.simpleMessage("Уведомление переднего плана"),
        "imageOverlayOpacity":
            MessageLookupByLibrary.simpleMessage("Прозрачность наложения"),
        "imageOverlayOpacityCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Вы можете изменить прозрачность наложения эталонного изображения по своему усмотрению в меню настроек выше"),
        "imagesDeleted": m4,
        "loadPageFailed": MessageLookupByLibrary.simpleMessage(
            "Не удалось загрузить страницу"),
        "loadPasswordFailed": MessageLookupByLibrary.simpleMessage(
            "Не удалось загрузить пароль из хранилища"),
        "loadReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Не удалось загрузить эталонное изображение"),
        "loadReferenceImageFailedIO": MessageLookupByLibrary.simpleMessage(
            "Произошла ошибка ввода/вывода при загрузке эталонного изображения"),
        "loadingReferenceImage": MessageLookupByLibrary.simpleMessage(
            "Загрузка и расшифровка, пожалуйста подождите..."),
        "no": MessageLookupByLibrary.simpleMessage("Нет"),
        "noSelectedCameraError": MessageLookupByLibrary.simpleMessage(
            "Ошибка: камера не выбрана или недоступна"),
        "openCameraError":
            MessageLookupByLibrary.simpleMessage("Не удалось открыть камеру"),
        "openLinkFailed":
            MessageLookupByLibrary.simpleMessage("Невозможно открыть ссылку"),
        "pageNotFound":
            MessageLookupByLibrary.simpleMessage("Страница не найдена"),
        "passwordEmptyError":
            MessageLookupByLibrary.simpleMessage("Пароль не может быть пустым"),
        "passwordMismatch":
            MessageLookupByLibrary.simpleMessage("Пароли не совпадают"),
        "passwordRepeatError": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, повторите пароль"),
        "passwordTooLong": m5,
        "passwordTooShort": m6,
        "projectIssuesPage": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/issues"),
        "referenceImageBorderCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Цветная рамка вокруг обозначает эталонное изображение. Цвет рамки можно изменить в настройках приложения"),
        "referenceImageNotFound": MessageLookupByLibrary.simpleMessage(
            "Эталонное изображение не найдено"),
        "refresh": MessageLookupByLibrary.simpleMessage("Обновить"),
        "retry": MessageLookupByLibrary.simpleMessage("Повторить"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "saveImageError": MessageLookupByLibrary.simpleMessage(
            "Во время сохранения произошла ошибка"),
        "saveImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Не удалось сохранить эталонное изображение: неверный ключ шифрования"),
        "savePasswordFailed":
            MessageLookupByLibrary.simpleMessage("Не удалось сохранить пароль"),
        "saveRefImageNotificationTitle": MessageLookupByLibrary.simpleMessage(
            "Сохранение эталонных изображений в фоне..."),
        "savingImageMessage":
            MessageLookupByLibrary.simpleMessage("Сохранение..."),
        "selectAll": MessageLookupByLibrary.simpleMessage("Выбрать все"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Выбрать изображение"),
        "selectImagesFailed": MessageLookupByLibrary.simpleMessage(
            "Невозможно выбрать изображения"),
        "selectedCounter": m7,
        "setPasswordDescription": MessageLookupByLibrary.simpleMessage(
            "Установите пароль. Это необходимо для шифрования и хранения эталонных изображений"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "settingsAppearance":
            MessageLookupByLibrary.simpleMessage("Внешний вид"),
        "settingsBlinkComparisonPage":
            MessageLookupByLibrary.simpleMessage("Страница сравнения"),
        "settingsCamera": MessageLookupByLibrary.simpleMessage("Камера"),
        "settingsCameraFullscreenMode":
            MessageLookupByLibrary.simpleMessage("Полноэкранный режим"),
        "settingsFlashByDefault": MessageLookupByLibrary.simpleMessage(
            "Включить вспышку по умолчанию"),
        "settingsLanguage": MessageLookupByLibrary.simpleMessage("Язык"),
        "settingsReferenceImageBorderColor":
            MessageLookupByLibrary.simpleMessage(
                "Цвет рамки эталонного изображения"),
        "settingsSystemLanguageOption":
            MessageLookupByLibrary.simpleMessage("Системный"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тема"),
        "settingsThemeDark": MessageLookupByLibrary.simpleMessage("Тёмная"),
        "settingsThemeLight": MessageLookupByLibrary.simpleMessage("Светлая"),
        "settingsThemeSystem":
            MessageLookupByLibrary.simpleMessage("Системная"),
        "show": MessageLookupByLibrary.simpleMessage("Показать"),
        "showError": MessageLookupByLibrary.simpleMessage("Показать ошибку"),
        "signIn": MessageLookupByLibrary.simpleMessage("Войти"),
        "signInDescription": MessageLookupByLibrary.simpleMessage(
            "Войдите, чтобы изменять и посматривать эталонные изображения"),
        "switchCameraFlashError": MessageLookupByLibrary.simpleMessage(
            "Не удалось переключить режим вспышки"),
        "takePhoto": MessageLookupByLibrary.simpleMessage("Сделать фото"),
        "takePhotoError":
            MessageLookupByLibrary.simpleMessage("Не удалось снять фото"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("Неверный пароль"),
        "yes": MessageLookupByLibrary.simpleMessage("Да")
      };
}
