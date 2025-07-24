import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kara/core/config/l10n/generated/app_localizations.dart';

import '../../../../core/navigation/app_navigation.dart';
import '../../auth/presentation/view_model/auth_view_model.dart';
import '../utils/errors.dart';

mixin AuthMixin {
  Future<void> signIn(
    String email,
    String password,
    WidgetRef ref,
    BuildContext context,
  ) async {
    await ref.read(authViewModelProvider.notifier).logIn(email, password);
    final AsyncValue<AuthState> authState = ref.read(authViewModelProvider);
    if (context.mounted) {
      if (authState.hasValue && authState.value!.user != null) {
        context.go(AppNavigation.menu);
      }
      if (authState.hasError) {
        Errors.handleAuthError(authState.error as Errors, context);
      }
    }
  }

  Future<void> signUp(
    String name,
    String email,
    String password,
    WidgetRef ref,
    BuildContext context,
  ) async {
    await ref
        .read(authViewModelProvider.notifier)
        .signUp(name, email, password);
    final AsyncValue<AuthState> authState = ref.read(authViewModelProvider);
    if (context.mounted) {
      if (authState.hasValue && authState.value!.user != null) {
        context.go(AppNavigation.menu);
      }
      if (authState.hasError) {
        Errors.handleAuthError(authState.error as Errors, context);
      }
    }
  }

  Future<void> signInWithGoogle(WidgetRef ref, BuildContext context) async {
    await ref.read(authViewModelProvider.notifier).logInWithGoogle();
    final AsyncValue<AuthState?> authState = ref.read(authViewModelProvider);
    if (context.mounted) {
      if (authState.hasValue && authState.value!.user != null) {
        context.go(AppNavigation.menu);
      }
      if (authState.error != null) {
        Errors.handleAuthError(authState.error as Errors, context);
      }
    }
  }

  Future<void> resetPassword(
    String email,
    WidgetRef ref,
    BuildContext context,
    ThemeData appTheme,
    AppLocalizations localizations,
  ) async {
    await ref.read(authViewModelProvider.notifier).resetPassword(email);
    final AsyncValue<AuthState?> authState = ref.read(authViewModelProvider);
    if (context.mounted) {
      if (authState.error != null) {
        Errors.handleAuthError(authState.error as Errors, context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(localizations.label_msj_reset(email)),
            backgroundColor: appTheme.colorScheme.secondary,
          ),
        );
        context.pop();
      }
    }
  }

  Future<void> logOut(BuildContext context, WidgetRef ref) async {
    await ref.read(authViewModelProvider.notifier).logOut();
    if (context.mounted) {
      context.go(AppNavigation.login);
    }
  }
}
