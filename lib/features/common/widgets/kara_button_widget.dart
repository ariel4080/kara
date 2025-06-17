import 'package:flutter/material.dart';

class KaraButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Icon? icon;
  final bool? isLoading;
  final bool isPrimary;

  const KaraButtonWidget({
    super.key,
    required this.label,
    this.onPressed,
    required this.isPrimary,
    this.icon,
    this.isLoading,
  });

  factory KaraButtonWidget.primary({
    required String label,
    VoidCallback? onPressed,
    Icon? icon,
    bool? isLoading = false,
  }) {
    return KaraButtonWidget(
      label: label,
      onPressed: onPressed,
      isPrimary: true,
      icon: icon,
      isLoading: isLoading,
    );
  }
  factory KaraButtonWidget.secondary({
    required String label,
    VoidCallback? onPressed,
    Icon? icon,
    bool? isLoading = false,
  }) {
    return KaraButtonWidget(
      label: label,
      onPressed: onPressed,
      isPrimary: false,
      icon: icon,
      isLoading: isLoading,
    );
  }
  @override
  Widget build(BuildContext context) {
    final ThemeData karaTheme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 50,
      child:
          icon == null
              ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isPrimary
                          ? karaTheme.colorScheme.secondary.withValues(
                            alpha: 0.8,
                          )
                          : karaTheme.colorScheme.primary,
                  foregroundColor:
                      isPrimary
                          ? karaTheme.colorScheme.primary
                          : karaTheme.colorScheme.secondary,
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
                                    ? karaTheme.colorScheme.primary
                                    : karaTheme.colorScheme.secondary,
                          ),
                        )
                        : Text(label),
              )
              : ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isPrimary
                          ? karaTheme.colorScheme.secondary.withValues(
                            alpha: 0.8,
                          )
                          : karaTheme.colorScheme.primary,
                  foregroundColor:
                      isPrimary
                          ? karaTheme.colorScheme.primary
                          : karaTheme.colorScheme.secondary,
                ),
                onPressed: onPressed,
                icon: icon!,
                label: Text(label),
              ),
    );
  }
}
