import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kara/features/common/ui/appointments_header.dart';
import 'package:kara/features/common/ui/default_divider.dart';

import '../../auth/presentation/view_model/auth_view_model.dart';
import '../../common/mixins/auth_mixin.dart';
import '../../common/ui/appointment_info_card.dart';
import '../../common/ui/default_app_bar.dart';
import '../../menu/shared/base_model.dart';

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
            subtitle: localizations!.label_appointments_count(5),
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
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 24),
              shrinkWrap: true,
              children: [
                AppointmentsInfoCard.primary(
                  title: 'Lunes 23 de Enero 2025',
                  subtitle: '2:30 pm',
                  text: 'Dr. Ricardo Arjona',
                  appTheme: appTheme,
                  icon: Icons.health_and_safety,
                ),
                const SizedBox(height: 20),
                AppointmentsInfoCard.secondary(
                  title: 'Lunes 23 de Enero 2025',
                  subtitle: '2:30 pm',
                  text: 'Dr. Ricardo Arjona',
                  appTheme: appTheme,
                  icon: Icons.pets,
                ),
                const SizedBox(height: 20),
                AppointmentsInfoCard.secondary(
                  title: 'Lunes 23 de Enero 2025',
                  subtitle: '2:30 pm',
                  text: 'Dr. Ricardo Arjona',
                  appTheme: appTheme,
                  icon: Icons.real_estate_agent,
                ),
                const SizedBox(height: 20),
                AppointmentsInfoCard.secondary(
                  title: 'Lunes 23 de Enero 2025',
                  subtitle: '2:30 pm',
                  text: 'Dr. Ricardo Arjona',
                  appTheme: appTheme,
                  icon: Icons.health_and_safety,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
