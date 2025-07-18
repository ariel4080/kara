import 'package:flutter/material.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';
import '../../../common/utils/input_validators.dart';
import 'auth_inputs.dart';
import 'password_field.dart';

class SignUpInputs extends StatelessWidget with AuthInputs {
  final TextEditingController nameController;
  final TextEditingController passwordConfirmController;

  SignUpInputs({
    super.key,
    required AppLocalizations localizations,
    required ThemeData theme,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required this.nameController,
    required this.passwordConfirmController,
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
          controller: nameController,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: localizations.label_name,
            border: const OutlineInputBorder(),
          ),
          validator:
              (value) => InputValidators.validateName(value, localizations),
        ),
        const SizedBox(height: 16),
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
        const SizedBox(height: 16),
        PasswordField(
          localizations: localizations,
          labelText: localizations.label_confirm_password,
          controller: passwordConfirmController,
          validator:
              (value) => InputValidators.validateConfirmationPassword(
                value,
                passwordController.text,
                localizations,
              ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
