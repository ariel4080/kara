import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppointmentsInfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String text;
  final IconData icon;
  final ThemeData appTheme;
  final bool isPrimary;

  const AppointmentsInfoCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.appTheme,
    required this.icon,
    required this.isPrimary,
  });

  const AppointmentsInfoCard.primary({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.appTheme,
    required this.icon,
  }) : isPrimary = true;

  const AppointmentsInfoCard.secondary({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.appTheme,
    required this.icon,
  }) : isPrimary = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: appTheme.colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      shadowColor: isPrimary ? const Color.fromARGB(255, 89, 15, 201) : null,
      elevation: isPrimary ? 3.0 : null,
      surfaceTintColor:
          isPrimary ? appTheme.colorScheme.primary : AppColors.greyDark,
      margin: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: appTheme.colorScheme.tertiary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: appTheme.colorScheme.tertiary,
                    fontSize: 16,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: appTheme.colorScheme.tertiary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              maxRadius: 28,
              backgroundColor: const Color.fromARGB(
                23,
                8,
                0,
                165,
              ), //rgba(243, 241, 255, 1)
              child: Icon(
                icon,
                color: appTheme.colorScheme.secondary,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
