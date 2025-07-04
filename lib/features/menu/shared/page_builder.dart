import 'package:flutter/material.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../appointments/presentation/appointments_screen.dart';
import '../../history/presentation/history_screen.dart';
import '../../home/presentation/home_screen.dart';
import '../../settings/presentation/settings_screen.dart';

List<Widget> pageBuilder(
  AppLocalizations? localizations,
  ThemeData appTheme,
  PageController pageController,
) {
  return [
    HomeScreen(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: localizations!.label_home,
      icon: Icons.home,
      pageController: pageController,
    ),
    AppointmentsScreen(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: localizations.label_appointments,
      icon: Icons.calendar_today_rounded,
      pageController: pageController,
    ),
    HistoryScreen(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: localizations.label_history,
      icon: Icons.history,
      pageController: pageController,
    ),
    SettingsScreen(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: localizations.label_settings,
      icon: Icons.settings,
      pageController: pageController,
    ),
  ];
}
