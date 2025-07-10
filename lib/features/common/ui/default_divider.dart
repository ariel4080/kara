import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class DefaultDivider extends StatelessWidget {
  const DefaultDivider({
    super.key,
    this.height = 1.0,
    this.color = AppColors.greyLight,
    this.text,
  });

  final double height;
  final Color color;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: color, thickness: height)),
        text != null
            ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                text!,
                style: const TextStyle(color: AppColors.greyDark, fontSize: 16),
              ),
            )
            : const SizedBox(),
        Expanded(child: Divider(color: color, thickness: height)),
      ],
    );
  }
}
