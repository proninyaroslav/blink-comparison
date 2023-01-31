// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(reason) => "Error: ${reason}";

  static String m1(email, pageUrl) =>
      "No se ha encontrado ninguna aplicación de correo electrónico. Puede copiar manualmente el error y enviarlo a ${email} o enviarlo en la página del proyecto ${pageUrl}.";

  static String m2(howMany) =>
      "${Intl.plural(howMany, one: '¿Quieres eliminar la imagen seleccionada?', other: '¿Quieres eliminar las imágenes seleccionadas?')}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'Error al eliminar la imagen', other: 'Error al eliminar algunas imágenes')}";

  static String m4(howMany) =>
      "${Intl.plural(howMany, one: 'Imagen eliminada', other: 'Imágenes eliminadas')}";

  static String m5(number) =>
      "La longitud de la contraseña no debe tener más de ${number} caracteres";

  static String m6(number) =>
      "La longitud de la contraseña debe tener al menos ${number} caracteres";

  static String m7(count) => "Seleccionado: ${count}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "IOError": MessageLookupByLibrary.simpleMessage("error de E/S"),
        "aboutApp": MessageLookupByLibrary.simpleMessage("Acerca de"),
        "accept": MessageLookupByLibrary.simpleMessage("Aceptar"),
        "add": MessageLookupByLibrary.simpleMessage("Agregar"),
        "addReferenceImageDescription": MessageLookupByLibrary.simpleMessage(
            "La lista está vacía. Añadir una imagen"),
        "appChangelogUrl": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md"),
        "appDescription": MessageLookupByLibrary.simpleMessage(
            "Simplifica la comparación de fotos de precintos de seguridad y patrones utilizando los ojos.\nMás información y también para ayudar al proyecto: https://github.com/proninyaroslav/blink-comparison"),
        "appLicense": MessageLookupByLibrary.simpleMessage(
            "Blink Comparison es software gratuito y de código abierto (FOSS), publicado bajo los términos de la Licencia pública general GNU v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
        "blinkComparisonCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Al presionar en cualquier parte de la pantalla, se alterna entre la imagen de referencia y la imagen que acaba de tomar. "),
        "cameraErrorReason": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "changelog":
            MessageLookupByLibrary.simpleMessage("registro de cambios"),
        "close": MessageLookupByLibrary.simpleMessage("Cerrar"),
        "crashDialogExtraInfo": MessageLookupByLibrary.simpleMessage(
            "Agregue información adicional y comentarios aquí:"),
        "crashDialogMoreDetails":
            MessageLookupByLibrary.simpleMessage("Más detalles"),
        "crashDialogNoEmailApp": m1,
        "crashDialogReport": MessageLookupByLibrary.simpleMessage("Informe"),
        "crashDialogSummary": MessageLookupByLibrary.simpleMessage(
            "Se produjo un error en la aplicación. "),
        "decryptReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Error al descifrar la imagen de referencia"),
        "decryptReferenceImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Error al descifrar la imagen de referencia: clave de cifrado no válida"),
        "decryptReferenceImageNoEncryptKey": MessageLookupByLibrary.simpleMessage(
            "Error al descifrar la imagen de referencia: falta la clave de cifrado"),
        "defaultNotifyChannelDescription": MessageLookupByLibrary.simpleMessage(
            "Todas las notificaciones que no son adecuadas para las otras categorías."),
        "defaultNotifyChannelTitle":
            MessageLookupByLibrary.simpleMessage("Por defecto"),
        "delete": MessageLookupByLibrary.simpleMessage("Borrar"),
        "deleteImagesDialog": m2,
        "deleteImagesFailed": m3,
        "emptyPasswordError": MessageLookupByLibrary.simpleMessage(
            "La contraseña no puede estar vacía"),
        "encryptionError":
            MessageLookupByLibrary.simpleMessage("error de cifrado"),
        "enterPassword": MessageLookupByLibrary.simpleMessage("Contraseña"),
        "enterPasswordAgain":
            MessageLookupByLibrary.simpleMessage("Contraseña de nuevo"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "foregroundNotificationChannel": MessageLookupByLibrary.simpleMessage(
            "notificación de primer plano"),
        "imageOverlayOpacity": MessageLookupByLibrary.simpleMessage(
            "Opacidad de la superposición"),
        "imageOverlayOpacityCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "Puede cambiar la opacidad de superposición de la imagen de referencia como desee en el menú de configuración de arriba"),
        "imagesDeleted": m4,
        "loadPageFailed":
            MessageLookupByLibrary.simpleMessage("Error al cargar la página"),
        "loadPasswordFailed": MessageLookupByLibrary.simpleMessage(
            "No se puede cargar la contraseña desde el almacenamiento"),
        "loadReferenceImageFailed": MessageLookupByLibrary.simpleMessage(
            "Error al cargar la imagen de referencia"),
        "loadReferenceImageFailedIO": MessageLookupByLibrary.simpleMessage(
            "Se produjo un error de E/S al cargar la imagen de referencia"),
        "loadingReferenceImage": MessageLookupByLibrary.simpleMessage(
            "Cargando y descifrando, por favor espere..."),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noSelectedCameraError": MessageLookupByLibrary.simpleMessage(
            "Error: ninguna cámara seleccionada o no disponible"),
        "openCameraError":
            MessageLookupByLibrary.simpleMessage("No se puede abrir la cámara"),
        "openLinkFailed":
            MessageLookupByLibrary.simpleMessage("No se puede abrir el enlace"),
        "pageNotFound":
            MessageLookupByLibrary.simpleMessage("Página no encontrada"),
        "passwordEmptyError": MessageLookupByLibrary.simpleMessage(
            "La contraseña no puede estar vacía"),
        "passwordMismatch":
            MessageLookupByLibrary.simpleMessage("Contraseña no coincide"),
        "passwordRepeatError": MessageLookupByLibrary.simpleMessage(
            "Por favor repita la contraseña"),
        "passwordTooLong": m5,
        "passwordTooShort": m6,
        "projectIssuesPage": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/blink-comparison/issues"),
        "referenceImageBorderCaseTooltip": MessageLookupByLibrary.simpleMessage(
            "El borde coloreado alrededor denota la imagen de referencia. "),
        "referenceImageNotFound": MessageLookupByLibrary.simpleMessage(
            "Imagen de referencia no encontrada"),
        "refresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
        "retry": MessageLookupByLibrary.simpleMessage("Intentar"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "saveImageError":
            MessageLookupByLibrary.simpleMessage("Ocurrió un error al guardar"),
        "saveImageInvalidKey": MessageLookupByLibrary.simpleMessage(
            "Error al guardar la imagen de referencia: clave de cifrado no válida"),
        "savePasswordFailed": MessageLookupByLibrary.simpleMessage(
            "No se puede guardar la contraseña"),
        "saveRefImageNotificationTitle": MessageLookupByLibrary.simpleMessage(
            "Guardando una imagen de referencia en segundo plano..."),
        "savingImageMessage":
            MessageLookupByLibrary.simpleMessage("Guardando..."),
        "selectAll": MessageLookupByLibrary.simpleMessage("Seleccionar todo"),
        "selectImage":
            MessageLookupByLibrary.simpleMessage("Seleccionar imagen"),
        "selectImagesFailed": MessageLookupByLibrary.simpleMessage(
            "No se pueden seleccionar imágenes"),
        "selectedCounter": m7,
        "setPasswordDescription": MessageLookupByLibrary.simpleMessage(
            "Establezca una contraseña. Esto es necesario para cifrar y almacenar las imágenes de referencia"),
        "settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "settingsAppearance":
            MessageLookupByLibrary.simpleMessage("Apariencia"),
        "settingsBlinkComparisonPage":
            MessageLookupByLibrary.simpleMessage("Página de comparación"),
        "settingsCamera": MessageLookupByLibrary.simpleMessage("Cámara"),
        "settingsCameraFullscreenMode":
            MessageLookupByLibrary.simpleMessage("Modo de pantalla completa"),
        "settingsFlashByDefault":
            MessageLookupByLibrary.simpleMessage("Habilitar flash por defecto"),
        "settingsLanguage": MessageLookupByLibrary.simpleMessage("Idioma"),
        "settingsReferenceImageBorderColor":
            MessageLookupByLibrary.simpleMessage(
                "Color del borde de la imagen de referencia"),
        "settingsSystemLanguageOption":
            MessageLookupByLibrary.simpleMessage("Sistema"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsThemeDark": MessageLookupByLibrary.simpleMessage("Oscuro"),
        "settingsThemeLight": MessageLookupByLibrary.simpleMessage("Claro"),
        "settingsThemeSystem": MessageLookupByLibrary.simpleMessage("Sistema"),
        "show": MessageLookupByLibrary.simpleMessage("Muestra"),
        "showError": MessageLookupByLibrary.simpleMessage("Mostrar error"),
        "signIn": MessageLookupByLibrary.simpleMessage("Registrarse"),
        "signInDescription": MessageLookupByLibrary.simpleMessage(
            "Regístrese para modificar y ver imágenes de referencia"),
        "switchCameraFlashError": MessageLookupByLibrary.simpleMessage(
            "No se pudo cambiar el modo de flash"),
        "takePhoto": MessageLookupByLibrary.simpleMessage("Toma una foto"),
        "takePhotoError":
            MessageLookupByLibrary.simpleMessage("No se puede tomar una foto"),
        "wrongPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña incorrecta"),
        "yes": MessageLookupByLibrary.simpleMessage("Sí")
      };
}
