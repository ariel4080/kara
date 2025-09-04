import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/presentation/reset_password.dart';
import '../../features/auth/presentation/signin_screen.dart';
import '../../features/auth/presentation/signup_screen.dart';
import '../../features/booking/presentation/widgets/booking_base.dart';
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
  static const String signUp = '/signUp';
  static const String resetPassword = '/reset-password';
  static const String booking = '/booking';

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
            child: SignInScreen(
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
    GoRoute(
      name: signUp,
      path: signUp,
      pageBuilder:
          (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: SignUpScreen(
              localizations: AppLocalizations.of(context),
              appTheme: Theme.of(context),
            ),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                AppTransitions(AppTransitionScreen.signUp).fadeSlideTransition,
          ),
    ),
    GoRoute(
      name: resetPassword,
      path: resetPassword,
      pageBuilder:
          (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: ResetPasswword(
              localizations: AppLocalizations.of(context),
              appTheme: Theme.of(context),
            ),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                AppTransitions(AppTransitionScreen.signUp).fadeSlideTransition,
          ),
    ),
    GoRoute(
      name: booking,
      path: booking,
      pageBuilder:
          (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: BookingBase(
              localizations: AppLocalizations.of(context),
              appTheme: Theme.of(context),
              currentStep: 0,
              steps: 4,
            ),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                AppTransitions(AppTransitionScreen.splash).fadeSlideTransition,
          ),
    ),
  ];
}
