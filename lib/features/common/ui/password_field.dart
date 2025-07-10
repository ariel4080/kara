import 'package:flutter/material.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.localizations,
    this.controller,
    this.validator,
  });

  final AppLocalizations localizations;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: !_isPasswordVisible,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: widget.localizations.label_password,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ),
      validator: widget.validator,
    );
  }
}
