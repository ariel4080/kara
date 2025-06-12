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
  String get label_login_with_google => 'Iniciar sesión con Google';

  @override
  String get label_or => 'O';

  @override
  String get label_new_user => '¿Eres nuevo?';

  @override
  String get label_create_account => 'Crear una cuenta';
}
