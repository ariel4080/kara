import 'package:flutter/material.dart';

import '../../common/util/features_utils.dart';
import '../../common/widgets/kara_button_widget.dart';
import '../../common/widgets/kara_divider_widget.dart';
import '../../l10n/generated/app_localizations.dart';
import 'password_field_widget.dart';

class LoginCardWidget extends StatefulWidget {
  const LoginCardWidget({
    super.key,
    required this.theme,
    required this.localizations,
  });

  final AppLocalizations localizations;
  final ThemeData theme;

  @override
  State<LoginCardWidget> createState() => _LoginCardWidget();
}

class _LoginCardWidget extends State<LoginCardWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                color: widget.theme.colorScheme.primary,
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
                          widget.localizations.title_login,
                          style: widget.theme.textTheme.displayLarge?.copyWith(
                            color: widget.theme.colorScheme.tertiary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: widget.localizations.label_email,
                          border: const OutlineInputBorder(),
                        ),
                        validator:
                            (value) =>
                                FeaturesUtils.validateEmail(value, widget.localizations),
                      ),
                      const SizedBox(height: 16),
                      PasswordFieldWidget(
                        localizations: widget.localizations,
                        controller: _passwordController,
                        validator:
                            (value) =>
                                FeaturesUtils.validatePassword(value, widget.localizations),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            // Implement forgot password functionality here
                          },
                          child: Text(
                            widget.localizations.label_forgot_password,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      KaraButtonWidget.primary(
                        label: widget.localizations.title_login,
                        onPressed: _submit,
                      ),
                      const SizedBox(height: 16),
                      KaraDividerWidget(text: widget.localizations.label_or),
                      const SizedBox(height: 16),
                      KaraButtonWidget.secondary(
                        label: widget.localizations.label_login_with_google,
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
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (isValid) {
      // This is where you would handle the login logic, such as calling an API or navigating to another screen.
    }
  }
}
