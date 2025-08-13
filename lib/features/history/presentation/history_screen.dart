import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/assets.dart';
import '../../common/mixins/auth_mixin.dart';
import '../../common/theme/app_colors.dart';
import '../../menu/shared/base_model.dart';

class HistoryScreen extends ConsumerWidget with BaseModel, AuthMixin {
  HistoryScreen({
    super.key,
    required localizations,
    required appTheme,
    required labelPage,
    required icon,
    required pageController,
    required changePage,
  }) {
    initializeBaseProperties(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: labelPage,
      icon: icon,
      pageController: pageController,
      changePage: changePage,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: appTheme.primaryColor,
      appBar: AppBar(
        title: Text(labelPage),
        backgroundColor: appTheme.colorScheme.secondary,
        foregroundColor: appTheme.colorScheme.primary,
        leading: IconButton(
          onPressed: () => changePage(pageController.initialPage),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => logOut(context, ref),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppAssets.constructionIcon,
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 16),
                Text(
                  localizations!.label_screen_under_construction,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: appTheme.colorScheme.tertiary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  localizations!.label_we_are_working,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.greyDark,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
