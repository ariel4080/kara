import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../core/navigation/app_navigation.dart';
import '../../common/ui/login_card.dart';
import 'view_model/auth_view_model.dart';

class LoginScreen extends ConsumerWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  const LoginScreen({
    super.key,
    required this.localizations,
    required this.appTheme,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AuthState?> authState = ref.watch(authViewModelProvider);
    final bool isLoadingSignInWithPassword =
        authState.value?.isLoadingSignInWithPasword ?? false;
    final bool isLoadingSignInWithGoogle =
        authState.value?.isLoadingSignInWithGoogle ?? false;

    return Scaffold(
      backgroundColor: appTheme.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          localizations!.appTitle,
                          style: appTheme.textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  LoginCard(
                    theme: appTheme,
                    localizations: localizations!,
                    onSignIn:
                        (email, password) =>
                            logIn(email, password, context, ref),
                    isLoadingSignIn: isLoadingSignInWithPassword,
                    onSignInWithGoogle: () => logInWithGoogle(context, ref),
                    isLoadingSignInWithGoogle: isLoadingSignInWithGoogle,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        localizations!.label_new_user,
                        style: appTheme.textTheme.labelMedium,
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          localizations!.label_create_account,
                          style: TextStyle(
                            color: appTheme.colorScheme.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> logIn(
    String email,
    String password,
    BuildContext context,
    WidgetRef ref,
  ) async {
    await ref.read(authViewModelProvider.notifier).logIn(email, password);
    final AsyncValue<AuthState> authState = ref.read(authViewModelProvider);
    if (context.mounted) {
      if (authState.hasValue && authState.value!.user != null) {
        context.go(AppNavigation.menu);
      }
      if (authState.hasError) {
        handleError(authState.error as FirebaseAuthException, context);
      }
    }
  }

  Future<void> logInWithGoogle(BuildContext context, WidgetRef ref) async {
    await ref.read(authViewModelProvider.notifier).logInWithGoogle();
    final AsyncValue<AuthState?> authState = ref.read(authViewModelProvider);
    if (context.mounted) {
      if (authState.hasValue && authState.value!.user != null) {
        context.go(AppNavigation.menu);
      }
      if (authState.error != null) {
        handleError(authState.error as FirebaseAuthException, context);
      }
    }
  }

  handleError(FirebaseAuthException error, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: Text('${error.code}: ${error.message!}'),
      ),
    );
  }
}
