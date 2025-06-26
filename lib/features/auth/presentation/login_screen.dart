import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../core/navigation/app_navigation.dart';
import '../shared/ui/login_card.dart';
import 'view_model/auth_view_model.dart';

class LoginScreen extends ConsumerStatefulWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  const LoginScreen({
    super.key,
    required this.localizations,
    required this.appTheme,
  });

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(authViewModelProvider).isLoading;

    return Scaffold(
      backgroundColor: widget.appTheme.primaryColor,
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
                          widget.localizations!.appTitle,
                          style: widget.appTheme.textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  LoginCard(
                    theme: widget.appTheme,
                    localizations: widget.localizations!,
                    onSignIn: logIn,
                    isLoadingSignIn: isLoading,
                    onSignInWithGoogle: null,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.localizations!.label_new_user,
                        style: widget.appTheme.textTheme.labelMedium,
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          widget.localizations!.label_create_account,
                          style: TextStyle(
                            color: widget.appTheme.colorScheme.secondary,
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

  Future<void> logIn(String email, String password) async {
    await ref.read(authViewModelProvider.notifier).signIn(email, password);
    if (ref.read(authViewModelProvider).value != null && mounted) {
      context.go(AppNavigation.home);
    }
  }
}
