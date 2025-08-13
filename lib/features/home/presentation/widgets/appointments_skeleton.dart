import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/ui/shimmer_box.dart';

class AppointmentsSkeleton extends StatelessWidget {
  const AppointmentsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 24),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Card(
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              surfaceTintColor:
                  index == 0 ? AppColors.white : AppColors.greyDark,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerBox(width: 110, height: 12),
                        SizedBox(height: 8),
                        ShimmerBox(width: 194, height: 16),
                        SizedBox(height: 8),
                        ShimmerBox(width: 50, height: 12),
                      ],
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: CircleAvatar(
                        maxRadius: 26,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
