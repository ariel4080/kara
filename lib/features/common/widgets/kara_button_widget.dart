import 'package:flutter/material.dart';

class KaraButtonWidget extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Icon? icon;
  final bool isPrimary;

  const KaraButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    required this.isPrimary, 
    this.icon,
  });

  factory KaraButtonWidget.primary({
    required String label,
    required Function onPressed,
    Icon? icon,
  }) {
    return KaraButtonWidget(
      label: label,
      onPressed: onPressed,
      isPrimary: true,
      icon: icon,
    );
  }
  factory KaraButtonWidget.secondary({
    required String label,
    required Function onPressed,
    Icon? icon,
  }) {
    return KaraButtonWidget(
      label: label,
      onPressed: onPressed,
      isPrimary: false,
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData karaTheme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: icon == null? 
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isPrimary? karaTheme.colorScheme.secondary : karaTheme.colorScheme.primary,
            foregroundColor: isPrimary? karaTheme.colorScheme.primary : karaTheme.colorScheme.secondary,
          ),
          onPressed: () => onPressed,
          child: Text(label),
        )
        : 
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: isPrimary? karaTheme.colorScheme.secondary : karaTheme.colorScheme.primary,
            foregroundColor: isPrimary? karaTheme.colorScheme.primary : karaTheme.colorScheme.secondary,
          ),
          onPressed: () => onPressed(),
          icon: icon!,
          label: Text(label),
        ),
    );
  }
}
