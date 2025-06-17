import '../../l10n/generated/app_localizations.dart';

class FeaturesUtils {
  static String? validateEmail(String? value, AppLocalizations localizations) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (null == value || value.isEmpty || !emailRegex.hasMatch(value)) {
      return localizations.error_email_required;
    }
    return null;
  }

  static String? validatePassword(String? value, AppLocalizations localizations) {
    final passwRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z\d]).{6,}$',
    );
    if (null == value ||
        value.isEmpty ||
        value.length < 6 ||
        !passwRegex.hasMatch(value)) {
      return localizations.error_password_required;
    }
    return null;
  }
}