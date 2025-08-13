import 'package:flutter/material.dart';
import 'package:kara/core/config/l10n/generated/app_localizations.dart';

import '../../../common/assets.dart';

class AppointmentsListEmpty extends StatelessWidget {
  final AppLocalizations localizations;
  final ThemeData appTheme;

  const AppointmentsListEmpty({
    super.key,
    required this.localizations,
    required this.appTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(AppAssets.warningIcon, width: 200, height: 200),
              const SizedBox(height: 16),
              Text(
                localizations.label_you_have_no_appointments,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                localizations.label_add_appointment,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
