import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/view_model/auth_view_model.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/splash/presentation/splash_screen.dart';
import '../config/l10n/generated/app_localizations.dart';
import 'app_transitions.dart';

final appNavigationProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppNavigation.splash,
    routes: AppNavigation.routerConfig,
    redirect: (context, state) {
      (bool isAuth, String actualLocation) userValues = (
        ref.read(authViewModelProvider).value != null,
        state.matchedLocation,
      );

      return switch (userValues) {
        (true, AppNavigation.login) => AppNavigation.home,
        (false, AppNavigation.login) => AppNavigation.login,
        (true, AppNavigation.home) => AppNavigation.home,
        (false, AppNavigation.home) => AppNavigation.login,
        _ => state.matchedLocation,
      };
    },
  );
});

class AppNavigation {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';

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
      name: home,
      path: home,
      pageBuilder:
          (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: HomeScreen(
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
