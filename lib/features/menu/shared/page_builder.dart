import 'package:flutter/material.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../history/presentation/history_screen.dart';
import '../../home/presentation/home_screen.dart';
import '../../promotions/presentation/promotions_screen.dart';
import '../../settings/presentation/settings_screen.dart';

List<Widget> pageBuilder(
  AppLocalizations? localizations,
  ThemeData appTheme,
  PageController pageController,
  void Function(int index) changePage,
) {
  return [
    HomeScreen(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: localizations!.label_home,
      icon: Icons.home,
      pageController: pageController,
      changePage: changePage,
    ),
    HistoryScreen(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: localizations.label_history,
      icon: Icons.history,
      pageController: pageController,
      changePage: changePage,
    ),
    PromotionsScreen(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: localizations.label_promotions,
      icon: Icons.sell,
      pageController: pageController,
      changePage: changePage,
    ),
    SettingsScreen(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: localizations.label_settings,
      icon: Icons.settings,
      pageController: pageController,
      changePage: changePage,
    ),
  ];
}
