// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/blink-comparison/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/blink-comparison/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Simplifica la comparación de fotos de precintos de seguridad y patrones utilizando los ojos.\nMás información y también para ayudar al proyecto: https://github.com/proninyaroslav/blink-comparison';

  @override
  String get appLicense =>
      'Blink Comparison es software gratuito y de código abierto (FOSS), publicado bajo los términos de la Licencia pública general GNU v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get close => 'Cerrar';

  @override
  String get error => 'Error';

  @override
  String get add => 'Agregar';

  @override
  String get show => 'Muestra';

  @override
  String get delete => 'Borrar';

  @override
  String get accept => 'Aceptar';

  @override
  String get retry => 'Intentar';

  @override
  String get pageNotFound => 'Página no encontrada';

  @override
  String get setPasswordDescription =>
      'Establezca una contraseña. Esto es necesario para cifrar y almacenar las imágenes de referencia';

  @override
  String get enterPassword => 'Contraseña';

  @override
  String get enterPasswordAgain => 'Contraseña de nuevo';

  @override
  String get signIn => 'Registrarse';

  @override
  String passwordTooShort(Object number) {
    return 'La longitud de la contraseña debe tener al menos $number caracteres';
  }

  @override
  String passwordTooLong(Object number) {
    return 'La longitud de la contraseña no debe tener más de $number caracteres';
  }

  @override
  String get passwordMismatch => 'Contraseña no coincide';

  @override
  String get savePasswordFailed => 'No se puede guardar la contraseña';

  @override
  String get passwordEmptyError => 'La contraseña no puede estar vacía';

  @override
  String get passwordRepeatError => 'Por favor repita la contraseña';

  @override
  String get crashDialogSummary => 'Se produjo un error en la aplicación. ';

  @override
  String get crashDialogExtraInfo =>
      'Agregue información adicional y comentarios aquí:';

  @override
  String get crashDialogReport => 'Informe';

  @override
  String get crashDialogMoreDetails => 'Más detalles';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'No se ha encontrado ninguna aplicación de correo electrónico. Puede copiar manualmente el error y enviarlo a $email o enviarlo en la página del proyecto $pageUrl.';
  }

  @override
  String get openLinkFailed => 'No se puede abrir el enlace';

  @override
  String get signInDescription =>
      'Regístrese para modificar y ver imágenes de referencia';

  @override
  String get wrongPassword => 'Contraseña incorrecta';

  @override
  String get emptyPasswordError => 'La contraseña no puede estar vacía';

  @override
  String get loadPasswordFailed =>
      'No se puede cargar la contraseña desde el almacenamiento';

  @override
  String get addReferenceImageDescription =>
      'La lista está vacía. Añadir una imagen';

  @override
  String get takePhoto => 'Toma una foto';

  @override
  String get selectImage => 'Seleccionar imagen';

  @override
  String get savingImageMessage => 'Guardando...';

  @override
  String get selectImagesFailed => 'No se pueden seleccionar imágenes';

  @override
  String get defaultNotifyChannelTitle => 'Por defecto';

  @override
  String get defaultNotifyChannelDescription =>
      'Todas las notificaciones que no son adecuadas para las otras categorías.';

  @override
  String get foregroundNotificationChannel => 'notificación de primer plano';

  @override
  String get saveRefImageNotificationTitle =>
      'Guardando una imagen de referencia en segundo plano...';

  @override
  String get refresh => 'Actualizar';

  @override
  String get loadPageFailed => 'Error al cargar la página';

  @override
  String get saveImageError => 'Ocurrió un error al guardar';

  @override
  String get ioError => 'error de E/S';

  @override
  String get encryptionError => 'error de cifrado';

  @override
  String selectedCounter(Object count) {
    return 'Seleccionado: $count';
  }

  @override
  String deleteImagesDialog(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '¿Quieres eliminar las imágenes seleccionadas?',
      one: '¿Quieres eliminar la imagen seleccionada?',
    );
    return '$_temp0';
  }

  @override
  String imagesDeleted(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Imágenes eliminadas',
      one: 'Imagen eliminada',
    );
    return '$_temp0';
  }

  @override
  String deleteImagesFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Error al eliminar algunas imágenes',
      one: 'Error al eliminar la imagen',
    );
    return '$_temp0';
  }

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get loadingReferenceImage =>
      'Cargando/descifrando, por favor espere...';

  @override
  String get openCameraError => 'No se puede abrir la cámara';

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
      'Error: ninguna cámara seleccionada o no disponible';

  @override
  String get takePhotoError => 'No se puede tomar una foto';

  @override
  String get showError => 'Mostrar error';

  @override
  String get switchCameraFlashError => 'No se pudo cambiar el modo de flash';

  @override
  String get loadReferenceImageFailed =>
      'Error al cargar la imagen de referencia';

  @override
  String get referenceImageNotFound => 'Imagen de referencia no encontrada';

  @override
  String get loadReferenceImageFailedIO =>
      'Se produjo un error de E/S al cargar la imagen de referencia';

  @override
  String get decryptReferenceImageNoEncryptKey =>
      'Error al descifrar la imagen de referencia: falta la clave de cifrado';

  @override
  String get decryptReferenceImageFailed =>
      'Error al descifrar la imagen de referencia';

  @override
  String get decryptReferenceImageInvalidKey =>
      'Error al descifrar la imagen de referencia: clave de cifrado no válida';

  @override
  String get imageOverlayOpacity => 'Opacidad de la superposición';

  @override
  String get saveImageInvalidKey =>
      'Error al guardar la imagen de referencia: clave de cifrado no válida';

  @override
  String get settings => 'Ajustes';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeDark => 'Oscuro';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsSystemLanguageOption => 'Sistema';

  @override
  String get settingsReferenceImageBorderColor =>
      'Color del borde de la imagen de referencia';

  @override
  String get settingsBlinkComparisonPage => 'Página de comparación';

  @override
  String get settingsCamera => 'Cámara';

  @override
  String get settingsFlashByDefault => 'Habilitar flash por defecto';

  @override
  String get imageOverlayOpacityCaseTooltip =>
      'Puede cambiar la opacidad de superposición de la imagen de referencia como desee en el menú de configuración de arriba';

  @override
  String get referenceImageBorderCaseTooltip =>
      'El borde coloreado alrededor denota la imagen de referencia. ';

  @override
  String get blinkComparisonCaseTooltip =>
      'Al presionar en cualquier parte de la pantalla, se alterna entre la imagen de referencia y la imagen que acaba de tomar. ';

  @override
  String get aboutApp => 'Acerca de';

  @override
  String get changelog => 'registro de cambios';

  @override
  String get settingsCameraFullscreenMode => 'Modo de pantalla completa';

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
