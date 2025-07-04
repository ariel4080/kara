import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/presentation/login_screen.dart';
import '../../features/menu/presentation/menu_screen.dart';
import '../../features/splash/presentation/splash_screen.dart';
import '../config/l10n/generated/app_localizations.dart';
import 'app_transitions.dart';

part 'app_navigation.g.dart';

@riverpod
GoRouter appRouter(ref) {
  return GoRouter(
    initialLocation: AppNavigation.splash,
    routes: AppNavigation.routerConfig,
  );
}

class AppNavigation {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String menu = '/menu';

  static final routerConfig = [
    GoRoute(
      name: splash,
      path: splash,
      pageBuilder:
          (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: SplashScreen(
              localizations: AppLocalizations.of(context),
              appTheme: Theme.of(context),
            ),
            transitionsBuilder:
                AppTransitions(AppTransitionScreen.splash).fadeSlideTransition,
          ),
    ),
    GoRoute(
      name: login,
      path: login,
      pageBuilder:
          (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: LoginScreen(
              localizations: AppLocalizations.of(context),
              appTheme: Theme.of(context),
            ),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder:
                AppTransitions(AppTransitionScreen.login).fadeSlideTransition,
          ),
    ),
    GoRoute(
      name: menu,
      path: menu,
      pageBuilder:
          (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: MenuScreen(
              localizations: AppLocalizations.of(context),
              appTheme: Theme.of(context),
            ),
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder:
                AppTransitions(AppTransitionScreen.home).fadeSlideTransition,
          ),
    ),
  ];
}
