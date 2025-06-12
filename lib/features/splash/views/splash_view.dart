import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/app_navigation.dart';
import '../../l10n/generated/app_localizations.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen after the delay
      if(context.mounted) {
        context.go(AppNavigation.login); 
      }
    });
  }

  @override
  Widget build(content){
    AppLocalizations localizations = AppLocalizations.of(context)!;
    final ThemeData karaTheme = Theme.of(context);

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