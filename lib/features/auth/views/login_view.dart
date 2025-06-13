import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';
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
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          localizations!.appTitle,
                          style: karaTheme.textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  LoginCardWidget(theme: karaTheme, localizations: localizations),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        localizations.label_new_user,
                        style: karaTheme.textTheme.labelMedium,
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          localizations.label_create_account,
                          style: TextStyle(color: karaTheme.colorScheme.secondary),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
