import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/views/login_view.dart';
import '../features/auth/views/view_model/auth_view_model.dart';
import '../features/home/views/home_view.dart';
import '../features/splash/views/splash_view.dart';
import 'app_transitions.dart';

final appNavigationProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppNavigation.splash,
    routes: AppNavigation.routerConfig,
    redirect: (context, state) {
      (bool isAuth, String actualLocation) userValues = (
        ref.read(userAuthViewModel).value != null,
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
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const SplashView(),
        transitionsBuilder: AppTransitions(AppTransitionScreen.splash).fadeSlideTransition
      ),
    ),
    GoRoute(
      name: login,
      path: login,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const LoginView(),
        transitionDuration: const Duration(milliseconds: 500),
        transitionsBuilder: AppTransitions(AppTransitionScreen.login).fadeSlideTransition
      ),
    ),
    GoRoute(
      name: home,
      path: home,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const HomeView(),
        transitionDuration: const Duration(milliseconds: 500),
        transitionsBuilder: AppTransitions(AppTransitionScreen.home).fadeSlideTransition
      ),
    ),
  ];
}
