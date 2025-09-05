import 'package:flutter/material.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';
import '../../../common/theme/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final AppLocalizations localizations;
  final IconData icon;
  final String title;
  final String subtitle;
  final String price;
  final void Function(bool isSelected) onTap;
  final bool enableTap;
  final bool isSelected;

  const CategoryCard({
    super.key,
    required this.localizations,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.subtitle,
    required this.price,
    required this.enableTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: () => enableTap || isSelected ? onTap(!isSelected) : null,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color:
              isSelected
                  ? AppColors.blue
                  : const Color.fromARGB(248, 248, 248, 248),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  maxRadius: 26,
                  backgroundColor: const Color.fromARGB(
                    255,
                    237,
                    237,
                    237,
                  ), //rgba(243, 241, 255, 1)
                  child: Icon(
                    icon,
                    color: const Color.fromARGB(255, 42, 0, 98),
                    size: 24,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: isSelected ? AppColors.white : AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: isSelected ? AppColors.white : AppColors.black,
                        fontSize: 12,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: localizations.label_service_price,
                        style: TextStyle(
                          fontSize: 12,
                          color: isSelected ? AppColors.white : AppColors.black,
                        ),
                        children: [
                          TextSpan(
                            text: price,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color:
                                  isSelected
                                      ? AppColors.white
                                      : AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Opacity(
                  opacity: isSelected ? 1.0 : 0.0,
                  child: Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      activeColor: const Color.fromARGB(248, 248, 248, 248),
                      checkColor: AppColors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
