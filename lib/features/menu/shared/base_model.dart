import 'package:flutter/material.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';

mixin BaseModel {
  late final AppLocalizations? localizations;
  late final ThemeData appTheme;
  late final String labelPage;
  late final IconData icon;
  late final PageController pageController;
  late final void Function(int index) changePage;

  void initializeBaseProperties({
    required localizations,
    required appTheme,
    required labelPage,
    required icon,
    required pageController,
    required changePage,
  }) {
    this.localizations = localizations;
    this.appTheme = appTheme;
    this.labelPage = labelPage;
    this.icon = icon;
    this.pageController = pageController;
    this.changePage = changePage;
  }
}
