import 'package:flutter/material.dart';

class GhostButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Widget? icon;
  final bool? isLoading;
  final bool isPrimary;

  const GhostButton({
    super.key,
    required this.label,
    this.onPressed,
    required this.isPrimary,
    this.icon,
    this.isLoading,
  });

  factory GhostButton.primary({
    required String label,
    VoidCallback? onPressed,
    Icon? icon,
    bool? isLoading = false,
  }) {
    return GhostButton(
      label: label,
      onPressed: onPressed,
      isPrimary: true,
      icon: icon,
      isLoading: isLoading,
    );
  }
  factory GhostButton.secondary({
    required String label,
    VoidCallback? onPressed,
    Widget? icon,
    bool? isLoading = false,
  }) {
    return GhostButton(
      label: label,
      onPressed: onPressed,
      isPrimary: false,
      icon: icon,
      isLoading: isLoading,
    );
  }
  @override
  Widget build(BuildContext context) {
    final ThemeData appTheme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 50,
      child:
          icon == null
              ? TextButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isPrimary
                          ? appTheme.colorScheme.secondary.withValues(
                            alpha: 0.8,
                          )
                          : appTheme.colorScheme.primary,
                  foregroundColor:
                      isPrimary
                          ? appTheme.colorScheme.primary
                          : appTheme.colorScheme.secondary,
                ),
                onPressed: onPressed,
                child:
                    isLoading == true
                        ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color:
                                isPrimary
                                    ? appTheme.colorScheme.primary
                                    : appTheme.colorScheme.secondary,
                          ),
                        )
                        : Text(label),
              )
              : TextButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isPrimary
                          ? appTheme.colorScheme.secondary.withValues(
                            alpha: 0.8,
                          )
                          : appTheme.colorScheme.primary,
                  foregroundColor:
                      isPrimary
                          ? appTheme.colorScheme.primary
                          : appTheme.colorScheme.secondary,
                ),
                onPressed: onPressed,
                icon: isLoading == true ? null : icon!,
                label:
                    isLoading == true
                        ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color:
                                isPrimary
                                    ? appTheme.colorScheme.primary
                                    : appTheme.colorScheme.secondary,
                          ),
                        )
                        : Text(label),
              ),
    );
  }
}
