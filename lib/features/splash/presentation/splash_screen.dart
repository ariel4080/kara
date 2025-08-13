import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../core/navigation/app_navigation.dart';
import '../../auth/presentation/view_model/auth_view_model.dart';

class SplashScreen extends ConsumerWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  const SplashScreen({
    super.key,
    required this.localizations,
    required this.appTheme,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isAuth = ref.watch(authViewModelProvider).value?.user != null;

    Future.delayed(const Duration(seconds: 3), () async {
      if (context.mounted) {
        isAuth
            ? context.go(AppNavigation.menu)
            : context.go(AppNavigation.login);
      }
    });

    return Scaffold(
      backgroundColor: appTheme.colorScheme.secondary,
      body: Center(
        child: Text(
          localizations!.appTitle,
          style: TextStyle(
            fontSize: 55,
            color: appTheme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
