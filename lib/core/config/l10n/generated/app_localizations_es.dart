// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Kara';

  @override
  String get title_sigin => 'Iniciar sesión';

  @override
  String get title_signup => 'Registrarse';

  @override
  String get title_signout => 'Cerrar sesión';

  @override
  String get title_reset_password => 'Restablecer contraseña';

  @override
  String get label_email => 'Correo electrónico';

  @override
  String get label_password => 'Contraseña';

  @override
  String get label_forgot_password => '¿Olvidaste tu contraseña?';

  @override
  String get label_join_with_google => 'Unirse con Google';

  @override
  String get label_or => 'O';

  @override
  String get label_new_user => '¿Eres nuevo?';

  @override
  String get label_create_account => 'Crear una cuenta';

  @override
  String get error_email_required => 'Ingrese un correo válido';

  @override
  String get error_password_required => 'Ingrese una contraseña válida';

  @override
  String get label_home => 'Inicio';

  @override
  String get label_promotions => 'Promociones';

  @override
  String get label_history => 'Historial';

  @override
  String get label_settings => 'Configuración';

  @override
  String label_welcome(Object label_page, Object userName) {
    return '¡Bienvenido a la vista de $label_page $userName!';
  }

  @override
  String get label_name => 'Nombre';

  @override
  String get label_confirm_password => 'Confirmar contraseña';

  @override
  String get error_password_mismatch => 'Las contraseñas no coinciden';

  @override
  String get error_value_required => 'Este campo es obligatorio';

  @override
  String get label_already_have_account => '¿Ya tienes una cuenta?';

  @override
  String get label_back => 'Atrás';

  @override
  String label_msj_reset(Object email) {
    return 'Password reset email sent to $email';
  }

  @override
  String get label_grettings => '¡Hola';

  @override
  String get label_next_appointments => 'Mis próximas citas';

  @override
  String label_appointments_count(Object count) {
    return '$count citas en total';
  }

  @override
  String get title_something_went_wrong => '¡Ups! Algo salió mal';

  @override
  String label_status_error(Object errorMessage, Object httpStatus) {
    return 'Status: $httpStatus - $errorMessage';
  }

  @override
  String get label_unknow_error => 'Error desconocido';

  @override
  String get label_retry => 'Reintentar';

  @override
  String get label_search_settings => 'Buscar configuración';

  @override
  String get label_app_preferences => 'Preferencias de la aplicación';

  @override
  String get label_profile => 'Perfil';

  @override
  String get label_notifications => 'Notificaciones';

  @override
  String get label_means_of_payment => 'Medios de pago';

  @override
  String get label_theme => 'Tema';

  @override
  String get label_language => 'Idioma';

  @override
  String get label_help_and_support => 'Soporte y ayuda';

  @override
  String get label_help_center => 'Centro de ayuda';

  @override
  String get label_frequently_asked_questions => 'Preguntas frecuentes';

  @override
  String get label_tutorials => 'Tutoriales';

  @override
  String get label_other_settings => 'Otras configuraciones';

  @override
  String get label_privacy_policy => 'Política de privacidad';

  @override
  String get label_terms_of_service => 'Términos de servicio';

  @override
  String get label_share_with_friends => 'Compartir con amigos';

  @override
  String get label_rate_us => 'Califícanos';

  @override
  String get label_about_us => 'Acerca de nosotros';

  @override
  String label_version(Object version) {
    return 'Versión: $version';
  }

  @override
  String get label_screen_under_construction => 'Esta pantalla está en construcción';

  @override
  String get label_we_are_working => 'Estamos trabajando arduamente para traerte esta función';

  @override
  String get label_you_have_no_appointments => '¡Aún no tienes citas registradas!';

  @override
  String get label_add_appointment => 'Haz tap en el botón de \'+\' para agregar una cita.';

  @override
  String get label_add_booking => 'Agenda tu espacio';

  @override
  String get label_select_service => 'Selecciona el tipo de servicio';

  @override
  String get label_multiple_services => 'Puedes elegir hasta 3 citas';

  @override
  String get label_next => 'Siguiente';

  @override
  String label_service_duration(Object time) {
    return 'Duracion: $time minutos';
  }

  @override
  String get label_service_price => 'Precio: ';
}
