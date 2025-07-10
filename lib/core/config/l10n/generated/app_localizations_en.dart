// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Kara';

  @override
  String get title_login => 'Login';

  @override
  String get label_email => 'Email';

  @override
  String get label_password => 'Password';

  @override
  String get label_forgot_password => 'Forgot your password?';

  @override
  String get label_join_with_google => 'Join with Google';

  @override
  String get label_or => 'Or';

  @override
  String get label_new_user => 'New user?';

  @override
  String get label_create_account => 'Create an account';

  @override
  String get error_email_required => 'Please enter a valid email';

  @override
  String get error_password_required => 'Please enter a valid password';

  @override
  String get label_home => 'Home';

  @override
  String get label_appointments => 'Appointments';

  @override
  String get label_history => 'History';

  @override
  String get label_settings => 'Settings';

  @override
  String label_welcome(Object label_page, Object userName) {
    return 'Welcome to the $label_page View $userName!';
  }
}
