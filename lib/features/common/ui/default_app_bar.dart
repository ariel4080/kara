import 'package:flutter/material.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';

class DefaultAppBar extends StatelessWidget {
  final AppLocalizations localizations;
  final ThemeData appTheme;
  final String userName;
  final VoidCallback logOut;

  const DefaultAppBar({
    super.key,
    required this.localizations,
    required this.appTheme,
    required this.userName,
    required this.logOut,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: 20,
          right: 20,
          bottom: 24,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localizations.appTitle,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: appTheme.colorScheme.primary,
                  ),
                ),
                TextButton.icon(
                  label: Text(
                    localizations.title_signout,
                    style: TextStyle(
                      color: appTheme.colorScheme.primary,
                      fontSize: 17,
                    ),
                  ),
                  icon: Icon(
                    Icons.logout,
                    color: appTheme.colorScheme.primary,
                    size: 28,
                  ),
                  iconAlignment: IconAlignment.end,
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: logOut,
                ),
              ],
            ),
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: localizations.label_grettings,
                    style: TextStyle(
                      fontSize: 21,
                      color: appTheme.colorScheme.primary,
                    ),
                    children: [
                      TextSpan(
                        text: userName.isNotEmpty ? ', $userName' : '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: appTheme.colorScheme.primary,
                        ),
                      ),
                      TextSpan(
                        text: '!',
                        style: TextStyle(color: appTheme.colorScheme.primary),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.notifications,
                  color: appTheme.colorScheme.primary,
                  size: 28,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
