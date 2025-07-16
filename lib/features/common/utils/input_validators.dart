import '../../../core/config/l10n/generated/app_localizations.dart';

class InputValidators {
  static String? validateEmail(String? value, AppLocalizations localizations) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (null == value || value.isEmpty || !emailRegex.hasMatch(value)) {
      return localizations.error_email_required;
    }
    return null;
  }

  static String? validatePassword(
    String? value,
    AppLocalizations localizations,
  ) {
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

  static String? validateConfirmationPassword(
    String? value,
    String? password,
    AppLocalizations localizations,
  ) {
    String? validPassword = validatePassword(value, localizations);
    return validPassword ??
        (value != password ? localizations.error_password_mismatch : null);
  }

  static String? validateName(String? value, AppLocalizations localizations) {
    if (null == value || value.isEmpty) {
      return localizations.error_value_required;
    }
    return null;
  }
}
