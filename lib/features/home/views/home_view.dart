import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/app_navigation.dart';
import '../../auth/views/view_model/auth_view_model.dart';
import '../../l10n/generated/app_localizations.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations? localizations = AppLocalizations.of(context);
    final ThemeData karaTheme = Theme.of(context);
    final user = ref.watch(userAuthViewModel);
    final userName = user.value?.displayName ?? '';

    return Scaffold(
      backgroundColor: karaTheme.primaryColor,
      appBar: AppBar(
        title: Text(localizations!.label_home),
        backgroundColor: karaTheme.colorScheme.secondary,
        foregroundColor: karaTheme.colorScheme.primary,
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
            localizations.label_welcome(userName),
            style: karaTheme.textTheme.displayLarge,
          ),
        ),
      ),
    );
  }

  Future<void> logOut(WidgetRef ref, BuildContext context) async {
    await ref.read(userAuthViewModel.notifier).signOut();
    if(context.mounted){
      context.go(AppNavigation.login);
    }
  }
}