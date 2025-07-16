import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';
import '../../../../core/navigation/app_navigation.dart';
import '../../../common/utils/input_validators.dart';
import 'auth_inputs.dart';
import 'password_field.dart';

class SignInInputs extends StatelessWidget with AuthInputs {
  SignInInputs({
    super.key,
    required AppLocalizations localizations,
    required ThemeData theme,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) {
    initValues(
      localizations: localizations,
      theme: theme,
      emailController: emailController,
      passwordController: passwordController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: localizations.label_email,
            border: const OutlineInputBorder(),
          ),
          validator:
              (value) => InputValidators.validateEmail(value, localizations),
        ),
        const SizedBox(height: 16),
        PasswordField(
          localizations: localizations,
          labelText: localizations.label_password,
          controller: passwordController,
          validator:
              (value) => InputValidators.validatePassword(value, localizations),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () => context.push(AppNavigation.resetPassword),
            child: Text(localizations.label_forgot_password),
          ),
        ),
      ],
    );
  }
}
