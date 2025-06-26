import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../core/navigation/app_navigation.dart';

class SplashScreen extends StatelessWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  const SplashScreen({
    super.key,
    required this.localizations,
    required this.appTheme,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      if (context.mounted) {
        context.go(AppNavigation.login);
      }
    });

    return Scaffold(
      backgroundColor: appTheme.splashColor,
      body: Center(
        child: Text(
          localizations!.appTitle,
          style: TextStyle(
            fontSize: 55,
            color: appTheme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
