import 'package:flutter/material.dart';
import 'package:kara/features/l10n/generated/app_localizations.dart';
import 'navigation/app_navigation.dart';

void main() {
  runApp(const KaraApp());
}

class KaraApp extends StatelessWidget {
  const KaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppNavigation.appRouter,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
