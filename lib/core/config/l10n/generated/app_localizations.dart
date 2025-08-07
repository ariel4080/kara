import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @appTitle.
  ///
  /// In es, this message translates to:
  /// **'Kara'**
  String get appTitle;

  /// No description provided for @title_sigin.
  ///
  /// In es, this message translates to:
  /// **'Iniciar sesión'**
  String get title_sigin;

  /// No description provided for @title_signup.
  ///
  /// In es, this message translates to:
  /// **'Registrarse'**
  String get title_signup;

  /// No description provided for @title_signout.
  ///
  /// In es, this message translates to:
  /// **'Cerrar sesión'**
  String get title_signout;

  /// No description provided for @title_reset_password.
  ///
  /// In es, this message translates to:
  /// **'Restablecer contraseña'**
  String get title_reset_password;

  /// No description provided for @label_email.
  ///
  /// In es, this message translates to:
  /// **'Correo electrónico'**
  String get label_email;

  /// No description provided for @label_password.
  ///
  /// In es, this message translates to:
  /// **'Contraseña'**
  String get label_password;

  /// No description provided for @label_forgot_password.
  ///
  /// In es, this message translates to:
  /// **'¿Olvidaste tu contraseña?'**
  String get label_forgot_password;

  /// No description provided for @label_join_with_google.
  ///
  /// In es, this message translates to:
  /// **'Unirse con Google'**
  String get label_join_with_google;

  /// No description provided for @label_or.
  ///
  /// In es, this message translates to:
  /// **'O'**
  String get label_or;

  /// No description provided for @label_new_user.
  ///
  /// In es, this message translates to:
  /// **'¿Eres nuevo?'**
  String get label_new_user;

  /// No description provided for @label_create_account.
  ///
  /// In es, this message translates to:
  /// **'Crear una cuenta'**
  String get label_create_account;

  /// No description provided for @error_email_required.
  ///
  /// In es, this message translates to:
  /// **'Ingrese un correo válido'**
  String get error_email_required;

  /// No description provided for @error_password_required.
  ///
  /// In es, this message translates to:
  /// **'Ingrese una contraseña válida'**
  String get error_password_required;

  /// No description provided for @label_home.
  ///
  /// In es, this message translates to:
  /// **'Inicio'**
  String get label_home;

  /// No description provided for @label_appointments.
  ///
  /// In es, this message translates to:
  /// **'Citas'**
  String get label_appointments;

  /// No description provided for @label_history.
  ///
  /// In es, this message translates to:
  /// **'Historial'**
  String get label_history;

  /// No description provided for @label_settings.
  ///
  /// In es, this message translates to:
  /// **'Configuración'**
  String get label_settings;

  /// No description provided for @label_welcome.
  ///
  /// In es, this message translates to:
  /// **'¡Bienvenido a la vista de {label_page} {userName}!'**
  String label_welcome(Object label_page, Object userName);

  /// No description provided for @label_name.
  ///
  /// In es, this message translates to:
  /// **'Nombre'**
  String get label_name;

  /// No description provided for @label_confirm_password.
  ///
  /// In es, this message translates to:
  /// **'Confirmar contraseña'**
  String get label_confirm_password;

  /// No description provided for @error_password_mismatch.
  ///
  /// In es, this message translates to:
  /// **'Las contraseñas no coinciden'**
  String get error_password_mismatch;

  /// No description provided for @error_value_required.
  ///
  /// In es, this message translates to:
  /// **'Este campo es obligatorio'**
  String get error_value_required;

  /// No description provided for @label_already_have_account.
  ///
  /// In es, this message translates to:
  /// **'¿Ya tienes una cuenta?'**
  String get label_already_have_account;

  /// No description provided for @label_back.
  ///
  /// In es, this message translates to:
  /// **'Atrás'**
  String get label_back;

  /// No description provided for @label_msj_reset.
  ///
  /// In es, this message translates to:
  /// **'Password reset email sent to {email}'**
  String label_msj_reset(Object email);

  /// No description provided for @label_grettings.
  ///
  /// In es, this message translates to:
  /// **'¡Hola'**
  String get label_grettings;

  /// No description provided for @label_next_appointments.
  ///
  /// In es, this message translates to:
  /// **'Mis próximas citas'**
  String get label_next_appointments;

  /// No description provided for @label_appointments_count.
  ///
  /// In es, this message translates to:
  /// **'{count} citas en total'**
  String label_appointments_count(Object count);

  /// No description provided for @title_something_went_wrong.
  ///
  /// In es, this message translates to:
  /// **'¡Ups! Algo salió mal'**
  String get title_something_went_wrong;

  /// No description provided for @label_status_error.
  ///
  /// In es, this message translates to:
  /// **'Status: {httpStatus} - {errorMessage}'**
  String label_status_error(Object errorMessage, Object httpStatus);

  /// No description provided for @label_unknow_error.
  ///
  /// In es, this message translates to:
  /// **'Error desconocido'**
  String get label_unknow_error;

  /// No description provided for @label_retry.
  ///
  /// In es, this message translates to:
  /// **'Reintentar'**
  String get label_retry;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
