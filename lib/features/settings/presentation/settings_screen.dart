import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kara/features/common/theme/app_colors.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../common/mixins/auth_mixin.dart';
import '../../menu/shared/base_model.dart';
import 'widgets/settings_option.dart';
import 'widgets/settings_section.dart';

class SettingsScreen extends ConsumerWidget with BaseModel, AuthMixin {
  late final String version;

  SettingsScreen({
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
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    version = packageInfo.version;
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: localizations!.label_search_settings,
                    prefixIcon: const Icon(Icons.search),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: AppColors.greyLight2,
                  ),
                  onChanged: (value) {},
                ),
              ),
              SettingsSection(
                title: localizations!.label_app_preferences,
                options: [
                  SettingsOption(
                    title: localizations!.label_profile,
                    icon: Icons.person,
                  ),
                  SettingsOption(
                    title: localizations!.label_notifications,
                    icon: Icons.notifications,
                  ),
                  SettingsOption(
                    title: localizations!.label_means_of_payment,
                    icon: Icons.payment,
                  ),
                  SettingsOption(
                    title: localizations!.label_theme,
                    icon: Icons.palette,
                  ),
                  SettingsOption(
                    title: localizations!.label_language,
                    icon: Icons.language,
                  ),
                ],
              ),
              SettingsSection(
                title: localizations!.label_help_and_support,
                options: [
                  SettingsOption(
                    title: localizations!.label_help_center,
                    icon: Icons.help_outline,
                  ),
                  SettingsOption(
                    title: localizations!.label_frequently_asked_questions,
                    icon: Icons.question_answer,
                  ),
                  SettingsOption(
                    title: localizations!.label_tutorials,
                    icon: Icons.video_library,
                  ),
                ],
              ),
              SettingsSection(
                title: localizations!.label_other_settings,
                options: [
                  SettingsOption(
                    title: localizations!.label_privacy_policy,
                    icon: Icons.privacy_tip,
                  ),
                  SettingsOption(
                    title: localizations!.label_terms_of_service,
                    icon: Icons.gavel,
                  ),
                  SettingsOption(
                    title: localizations!.label_share_with_friends,
                    icon: Icons.share,
                  ),
                  SettingsOption(
                    title: localizations!.label_rate_us,
                    icon: Icons.star_rate,
                  ),
                  SettingsOption(
                    title: localizations!.label_about_us,
                    icon: Icons.info_outline,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    localizations!.label_version(version),
                    style: const TextStyle(
                      color: AppColors.greyDark,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
