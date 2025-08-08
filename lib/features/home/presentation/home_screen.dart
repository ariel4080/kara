import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kara/features/home/presentation/widgets/appointments_list.dart';

import '../../../core/networking/api_response.dart';
import '../../auth/presentation/view_model/auth_view_model.dart';
import '../../common/mixins/auth_mixin.dart';
import '../../common/ui/appointments_header.dart';
import '../../common/ui/default_app_bar.dart';
import '../../common/ui/default_divider.dart';
import '../../menu/shared/base_model.dart';
import 'view_model/appointments_view_model.dart';
import 'widgets/appointments_error.dart';

class HomeScreen extends ConsumerWidget with BaseModel, AuthMixin {
  HomeScreen({
    super.key,
    required localizations,
    required appTheme,
    required labelPage,
    required icon,
    required pageController,
  }) {
    initializeBaseProperties(
      localizations: localizations,
      appTheme: appTheme,
      labelPage: labelPage,
      icon: icon,
      pageController: pageController,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authViewModelProvider).value?.user;
    final userName = user?.displayName ?? '';

    final appointmentsList = ref.watch(getAppointmentsProvider);
    final int totalAppointments =
        appointmentsList.hasValue && !appointmentsList.hasError
            ? appointmentsList.value!.length
            : 0;

    return Scaffold(
      backgroundColor: appTheme.colorScheme.primary,
      body: Column(
        children: [
          DefaultAppBar(
            localizations: localizations!,
            appTheme: appTheme,
            userName: userName,
            logOut: () => logOut(context, ref),
          ),
          AppointmentsHeader(
            appTheme: appTheme,
            title: localizations!.label_next_appointments,
            subtitle: localizations!.label_appointments_count(
              totalAppointments,
            ),
            onAddAppointment: () {
              // Lógica para agregar una nueva cita
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: DefaultDivider(
              color: Color.fromARGB(239, 239, 239, 239),
              height: 2,
            ),
          ),
          appointmentsList.when(
            data: (appointments) {
              return AppointmentsList(
                appTheme: appTheme,
                localizations: localizations!,
                appointments: appointments,
              );
            },
            error: (error, stack) {
              return AppointmentsError(
                localizations: localizations!,
                appTheme: appTheme,
                errorResponse: error as ErrorApiResponse,
                isLoading: appointmentsList.isLoading,
                onRetry: () => ref.refresh(getAppointmentsProvider),
              );
            },
            loading:
                () => Expanded(
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: appTheme.colorScheme.secondary,
                    ),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
