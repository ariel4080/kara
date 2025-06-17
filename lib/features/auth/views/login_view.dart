import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/app_navigation.dart';
import '../../l10n/generated/app_localizations.dart';
import '../widgets/login_card_widget.dart';
import 'view_model/auth_view_model.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {

  @override
  Widget build(BuildContext context) {
    AppLocalizations? localizations = AppLocalizations.of(context);
    final ThemeData karaTheme = Theme.of(context);

    final isLoading = ref.watch(userAuthViewModel).isLoading;

    return Scaffold(
      backgroundColor: karaTheme.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom,
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
                          style: karaTheme.textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  LoginCardWidget(
                    theme: karaTheme, 
                    localizations: localizations,
                    onSignIn: logIn,
                    isLoadingSignIn: isLoading,
                    onSignInWithGoogle: null,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        localizations.label_new_user,
                        style: karaTheme.textTheme.labelMedium,
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          localizations.label_create_account,
                          style: TextStyle(color: karaTheme.colorScheme.secondary),
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
    await ref.read(userAuthViewModel.notifier).signIn(email, password);
    if(ref.read(userAuthViewModel).value != null && mounted) {
      context.go(AppNavigation.home);
    }
  }
}
