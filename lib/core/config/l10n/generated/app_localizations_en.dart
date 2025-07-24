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
  String get title_sigin => 'Sign In';

  @override
  String get title_signup => 'Sign Up';

  @override
  String get title_signout => 'Sign Out';

  @override
  String get title_reset_password => 'Reset Password';

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

  @override
  String get label_name => 'Name';

  @override
  String get label_confirm_password => 'Confirm Password';

  @override
  String get error_password_mismatch => 'Passwords do not match';

  @override
  String get error_value_required => 'This field is required';

  @override
  String get label_already_have_account => 'Already have an account?';

  @override
  String get label_back => 'Back';

  @override
  String label_msj_reset(Object email) {
    return 'Password reset email sent to $email';
  }

  @override
  String get label_grettings => '¡Hello';

  @override
  String get label_next_appointments => 'My Appointments';

  @override
  String label_appointments_count(Object count) {
    return '$count appointments in total';
  }
}
