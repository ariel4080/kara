import 'package:flutter/material.dart';
import 'package:kara/features/l10n/generated/app_localizations.dart';

import '../widgets/login_card_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations? localizations = AppLocalizations.of(context);
    final ThemeData karaTheme = Theme.of(context);

    return Scaffold(
      backgroundColor: karaTheme.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  localizations!.appTitle,
                  style: TextStyle(
                    fontSize: 32,
                    color: karaTheme.colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            LoginCardWidget(theme: karaTheme, localizations: localizations,),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    localizations.label_new_user,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      // Implement navigation to sign up view here
                    },
                    child: Text(
                      localizations.label_create_account,
                      style: TextStyle(color: karaTheme.colorScheme.secondary),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
