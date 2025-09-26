import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/ui/shimmer_box.dart';

class CategorySkeleton extends StatelessWidget {
  const CategorySkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Center(child: ShimmerBox(width: 240, height: 15)),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Center(child: ShimmerBox(width: 190, height: 12)),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.only(top: 26),
            itemCount: 5,
            separatorBuilder: (context, index) => const SizedBox(height: 4),
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: const Color.fromARGB(248, 248, 248, 248),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: const CircleAvatar(
                          maxRadius: 26,
                          backgroundColor: Color.fromARGB(255, 237, 237, 237),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShimmerBox(width: 110, height: 14),
                          SizedBox(height: 8),
                          ShimmerBox(width: 150, height: 12),
                          SizedBox(height: 8),
                          ShimmerBox(width: 100, height: 12),
                        ],
                      ),
                      Opacity(
                        opacity: 0.0,
                        child: Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            value: true,
                            onChanged: (bool? value) {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            activeColor: const Color.fromARGB(
                              248,
                              248,
                              248,
                              248,
                            ),
                            checkColor: AppColors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: ShimmerBox(width: 343, height: 43),
          ),
        ),
      ],
    );
  }
}
