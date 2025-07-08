import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/app_navigation.dart';
import '../../auth/presentation/view_model/auth_view_model.dart';
import '../../menu/shared/base_model.dart';

class HistoryScreen extends ConsumerWidget with BaseModel {
  HistoryScreen({
    super.key,
    required localizations,
    required appTheme,
    required labelPage,
    required icon,
    required pageController,
  }) {
    initializeBaseProperties(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: labelPage,
      icon: icon,
      pageController: pageController,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authViewModelProvider).value?.user;
    final userName = user?.displayName ?? '';

    return Scaffold(
      backgroundColor: appTheme.primaryColor,
      appBar: AppBar(
        title: Text(labelPage),
        backgroundColor: appTheme.colorScheme.secondary,
        foregroundColor: appTheme.colorScheme.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => logOut(context, ref),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            localizations!.label_welcome(labelPage, userName),
            style: appTheme.textTheme.displayLarge,
          ),
        ),
      ),
    );
  }

  Future<void> logOut(BuildContext context, WidgetRef ref) async {
    await ref.read(authViewModelProvider.notifier).logOut();
    if (context.mounted) {
      context.go(AppNavigation.login);
    }
  }
}
