import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kara/features/common/utils/input_validators.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../core/navigation/app_navigation.dart';
import '../../common/mixins/auth_mixin.dart';
import '../../common/ui/default_button.dart';
import 'view_model/auth_view_model.dart';
import 'widgets/auth_screen.dart';

class ResetPasswword extends ConsumerStatefulWidget with AuthMixin {
  final AppLocalizations? localizations;
  final ThemeData appTheme;

  const ResetPasswword({super.key, this.localizations, required this.appTheme});

  @override
  ConsumerState<ResetPasswword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends ConsumerState<ResetPasswword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authViewModelProvider);
    final isLoadingResetPassword =
        authState.value?.isLoadingSignInWithPasword ?? false;

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
                            widget.localizations!.title_reset_password,
                            style: widget.appTheme.textTheme.headlineMedium
                                ?.copyWith(
                                  color: widget.appTheme.colorScheme.tertiary,
                                ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: widget.localizations!.label_email,
                            border: const OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator:
                              (value) => InputValidators.validateEmail(
                                value,
                                widget.localizations!,
                              ),
                        ),
                        const SizedBox(height: 32),
                        DefaultButton.primary(
                          label: widget.localizations!.title_reset_password,
                          onPressed:
                              () =>
                                  _formKey.currentState!.validate()
                                      ? widget.resetPassword(
                                        _emailController.text.trim(),
                                        ref,
                                        context,
                                        widget.appTheme,
                                        widget.localizations!,
                                      )
                                      : null,
                          isLoading: isLoadingResetPassword,
                        ),
                        const SizedBox(height: 16),
                        DefaultButton.secondary(
                          label: widget.localizations!.label_back,
                          onPressed: () => context.pop(),
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
      labelBottomText: widget.localizations!.label_new_user,
      onTapButtomText: widget.localizations!.label_create_account,
      onTapButtom: () => context.push(AppNavigation.signUp),
    );
  }
}
