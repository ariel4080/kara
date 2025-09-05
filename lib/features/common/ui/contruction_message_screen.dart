import 'package:flutter/material.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../assets.dart';
import '../theme/app_colors.dart';

class ConstructionMessageScreen extends StatelessWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;

  const ConstructionMessageScreen({
    super.key,
    this.localizations,
    required this.appTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppAssets.constructionIcon, width: 200, height: 200),
            const SizedBox(height: 16),
            Text(
              localizations!.label_screen_under_construction,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: appTheme.colorScheme.tertiary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              localizations!.label_we_are_working,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: AppColors.greyDark),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
