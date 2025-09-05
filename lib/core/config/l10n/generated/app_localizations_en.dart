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
  String get label_promotions => 'Promotions';

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

  @override
  String get title_something_went_wrong => 'Oops! Something went wrong';

  @override
  String label_status_error(Object errorMessage, Object httpStatus) {
    return 'Status: $httpStatus - $errorMessage';
  }

  @override
  String get label_unknow_error => 'Unknown Error';

  @override
  String get label_retry => 'Retry';

  @override
  String get label_search_settings => 'Search Settings';

  @override
  String get label_app_preferences => 'App Preferences';

  @override
  String get label_profile => 'Profile';

  @override
  String get label_notifications => 'Notifications';

  @override
  String get label_means_of_payment => 'Means of Payment';

  @override
  String get label_theme => 'Theme';

  @override
  String get label_language => 'Language';

  @override
  String get label_help_and_support => 'Support and Help';

  @override
  String get label_help_center => 'Help Center';

  @override
  String get label_frequently_asked_questions => 'Frequently Asked Questions';

  @override
  String get label_tutorials => 'Tutorials';

  @override
  String get label_other_settings => 'Other Settings';

  @override
  String get label_privacy_policy => 'Privacy Policy';

  @override
  String get label_terms_of_service => 'Terms of Service';

  @override
  String get label_share_with_friends => 'Share with Friends';

  @override
  String get label_rate_us => 'Rate Us';

  @override
  String get label_about_us => 'About Us';

  @override
  String label_version(Object version) {
    return 'Version: $version';
  }

  @override
  String get label_screen_under_construction => 'This screen is under construction';

  @override
  String get label_we_are_working => 'We are working hard to bring you this feature';

  @override
  String get label_you_have_no_appointments => 'You have no appointments registered yet!';

  @override
  String get label_add_appointment => 'Tap the \'+\' button to add an appointment.';

  @override
  String get label_add_booking => 'Book your space';

  @override
  String get label_select_service => 'Select the type of service';

  @override
  String get label_multiple_services => 'You can choose up to 3 services';

  @override
  String get label_next => 'Next';

  @override
  String label_service_duration(Object time) {
    return 'Duration: $time minutes';
  }

  @override
  String get label_service_price => 'Price: ';
}
