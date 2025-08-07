import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppointmentsHeader extends StatelessWidget {
  final ThemeData appTheme;
  final String title;
  final String subtitle;
  final VoidCallback onAddAppointment;

  const AppointmentsHeader({
    super.key,
    required this.appTheme,
    required this.title,
    required this.subtitle,
    required this.onAddAppointment,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appTheme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          left: 32,
          right: 32,
          bottom: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 26,
                    color: appTheme.colorScheme.secondary,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.greyDark,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 55,
              height: 54,
              child: FloatingActionButton(
                onPressed: () {},
                shape: const CircleBorder(),
                backgroundColor: appTheme.colorScheme.secondary,
                child: Icon(
                  Icons.add,
                  color: appTheme.colorScheme.primary,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
