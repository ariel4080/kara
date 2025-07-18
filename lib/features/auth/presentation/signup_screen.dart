import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../core/navigation/app_navigation.dart';
import '../../common/assets.dart';
import '../../common/ui/default_button.dart';
import '../../common/ui/default_divider.dart';
import 'mixins/auth_mixin.dart';
import 'view_model/auth_view_model.dart';
import 'widgets/auth_screen.dart';
import 'widgets/signup_inputs.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  const SignUpScreen({
    super.key,
    required this.localizations,
    required this.appTheme,
  });

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> with AuthMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
  }

  void onSignUp() {
    if (_formKey.currentState?.validate() ?? false) {
      signUp(
        _nameController.text.trim(),
        _emailController.text.trim(),
        _passwordController.text.trim(),
        ref,
        context,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<AuthState?> authState = ref.watch(authViewModelProvider);
    final bool isLoadingSignInWithPassword =
        authState.value?.isLoadingSignInWithPasword ?? false;
    final bool isLoadingSignInWithGoogle =
        authState.value?.isLoadingSignInWithGoogle ?? false;

    return AuthScreen(
      localizations: widget.localizations,
      appTheme: widget.appTheme,
      authCard: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Card(
                  color: widget.appTheme.colorScheme.primary,
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.localizations!.title_signup,
                            style: widget.appTheme.textTheme.displayLarge
                                ?.copyWith(
                                  color: widget.appTheme.colorScheme.tertiary,
                                ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SignUpInputs(
                          localizations: widget.localizations!,
                          theme: widget.appTheme,
                          nameController: _nameController,
                          emailController: _emailController,
                          passwordController: _passwordController,
                          passwordConfirmController: _passwordConfirmController,
                        ),
                        const SizedBox(height: 16),
                        DefaultButton.primary(
                          label: widget.localizations!.title_signup,
                          onPressed: onSignUp,
                          isLoading: isLoadingSignInWithPassword,
                        ),
                        const SizedBox(height: 16),
                        DefaultDivider(text: widget.localizations!.label_or),
                        const SizedBox(height: 16),
                        DefaultButton.secondary(
                          label: widget.localizations!.label_join_with_google,
                          onPressed: () => signInWithGoogle(ref, context),
                          icon: SvgPicture.asset(
                            AppAssets.googleLogo,
                            width: 33,
                            height: 33,
                          ),
                          isLoading: isLoadingSignInWithGoogle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      labelBottomText: widget.localizations!.label_already_have_account,
      onTapButtomText: widget.localizations!.title_sigin,
      onTapButtom: () => context.go(AppNavigation.login),
    );
  }
}
