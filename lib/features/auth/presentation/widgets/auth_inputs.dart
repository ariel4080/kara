import 'package:flutter/material.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';

mixin AuthInputs {
  late final AppLocalizations localizations;
  late final ThemeData theme;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  void initValues({
    required AppLocalizations localizations,
    required ThemeData theme,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) {
    this.localizations = localizations;
    this.theme = theme;
    this.emailController = emailController;
    this.passwordController = passwordController;
  }
}
