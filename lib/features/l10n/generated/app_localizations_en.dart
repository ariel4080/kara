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
  String get label_login_with_google => 'Login with Google';

  @override
  String get label_new_user => 'New user?';

  @override
  String get label_create_account => 'Create an account';
}
