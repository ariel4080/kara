import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../core/navigation/app_navigation.dart';
import '../../auth/presentation/view_model/auth_view_model.dart';

class HomeScreen extends ConsumerWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  const HomeScreen({
    super.key,
    required this.localizations,
    required this.appTheme,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authViewModelProvider);
    final userName = user.value?.displayName ?? '';

    return Scaffold(
      backgroundColor: appTheme.primaryColor,
      appBar: AppBar(
        title: Text(localizations!.label_home),
        backgroundColor: appTheme.colorScheme.secondary,
        foregroundColor: appTheme.colorScheme.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => logOut(ref, context),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            localizations!.label_welcome(userName),
            style: appTheme.textTheme.displayLarge,
          ),
        ),
      ),
    );
  }

  Future<void> logOut(WidgetRef ref, BuildContext context) async {
    await ref.read(authViewModelProvider.notifier).signOut();
    if (context.mounted) {
      context.go(AppNavigation.login);
    }
  }
}
