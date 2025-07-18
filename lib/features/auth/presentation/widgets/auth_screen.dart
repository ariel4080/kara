import 'package:flutter/material.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';

class AuthScreen extends StatelessWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  final Widget authCard;
  final String labelBottomText;
  final String onTapButtomText;
  final VoidCallback onTapButtom;
  const AuthScreen({
    super.key,
    required this.localizations,
    required this.appTheme,
    required this.authCard,
    required this.labelBottomText,
    required this.onTapButtomText,
    required this.onTapButtom,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom,
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
                          style: appTheme.textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  authCard,
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        labelBottomText,
                        style: appTheme.textTheme.labelMedium,
                      ),
                      TextButton(
                        onPressed: onTapButtom,
                        child: Text(
                          onTapButtomText,
                          style: TextStyle(
                            color: appTheme.colorScheme.secondary,
                          ),
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
