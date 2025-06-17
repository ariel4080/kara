import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/app_navigation.dart';
import '../../l10n/generated/app_localizations.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;
    final ThemeData karaTheme = Theme.of(context);

    Future.delayed(const Duration(seconds: 3), () {
      if(context.mounted) {
        context.go(AppNavigation.login);
      }
    });

    return Scaffold(
      backgroundColor: karaTheme.splashColor,
      body: Center(
        child: Text(
          localizations.appTitle,
          style: TextStyle(
            fontSize: 55,
            color: karaTheme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    );
  }
}