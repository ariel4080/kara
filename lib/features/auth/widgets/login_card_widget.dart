import 'package:flutter/material.dart';
import 'package:kara/features/common/widgets/kara_button_widget.dart';
import 'package:kara/features/l10n/generated/app_localizations.dart';

import '../../common/widgets/kara_divider_widget.dart';
import 'password_field_widget.dart';

class LoginCardWidget extends StatelessWidget {
  const LoginCardWidget({
    super.key,
    required this.theme,
    required this.localizations,
  });

  final AppLocalizations localizations;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              color: theme.colorScheme.primary,
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        localizations.title_login,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: localizations.label_email,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    PasswordFieldWidget(localizations: localizations),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Implement forgot password functionality here
                        },
                        child: Text(
                          localizations.label_forgot_password,
                          style: TextStyle(color: theme.colorScheme.secondary),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    KaraButtonWidget.primary(
                      label: localizations.title_login,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 16),
                    KaraDividerWidget(text: localizations.label_or,),
                    const SizedBox(height: 16),
                    KaraButtonWidget.secondary(
                      label: localizations.label_login_with_google,
                      onPressed: () {},
                      icon: const Icon(Icons.g_mobiledata),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
