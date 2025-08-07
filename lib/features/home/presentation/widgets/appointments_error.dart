import 'package:flutter/material.dart';
import 'package:kara/core/config/l10n/generated/app_localizations.dart';

import '../../../../core/networking/api_response.dart';
import '../../../common/ui/ghost_button.dart';

class AppointmentsError extends StatelessWidget {
  final AppLocalizations localizations;
  final ThemeData appTheme;
  final ErrorApiResponse errorResponse;
  final bool isLoading;
  final Function() onRetry;

  const AppointmentsError({
    super.key,
    required this.errorResponse,
    required this.isLoading,
    required this.localizations,
    required this.appTheme,
    required this.onRetry,
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
              const Icon(
                Icons.error_outline,
                size: 64,
                color: Colors.redAccent,
              ),
              const SizedBox(height: 16),
              Text(
                localizations.title_something_went_wrong,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                localizations.label_status_error(
                  errorResponse.errors?.join(', ') ??
                      localizations.label_unknow_error,
                  errorResponse.httpStatusCode,
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              GhostButton.secondary(
                label: localizations.label_retry,
                icon: const Icon(Icons.refresh),
                onPressed: onRetry,
                isLoading: isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
