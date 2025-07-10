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
  String get title_login => 'Iniciar sesión';

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
  String get label_appointments => 'Citas';

  @override
  String get label_history => 'Historial';

  @override
  String get label_settings => 'Configuración';

  @override
  String label_welcome(Object label_page, Object userName) {
    return '¡Bienvenido a la vista de $label_page $userName!';
  }
}
