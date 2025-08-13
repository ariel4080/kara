import 'package:flutter/material.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';
import '../../../common/ui/appointment_info_card.dart';
import '../../domain/entities/appointments_entity.dart';

class AppointmentsList extends StatelessWidget {
  final ThemeData appTheme;
  final AppLocalizations localizations;
  final List<AppointmentsEntity> appointments;

  const AppointmentsList({
    super.key,
    required this.appTheme,
    required this.localizations,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 24),
        itemCount: appointments.length,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) {
          final AppointmentsEntity appointment = appointments[index];
          if (index == 0) {
            return AppointmentsInfoCard.primary(
              title: appointment.service.name,
              subtitle: appointment.date,
              text: appointment.time,
              appTheme: appTheme,
              icon: appointment.service.icon,
            );
          } else {
            return AppointmentsInfoCard.secondary(
              title: appointment.service.name,
              subtitle: appointment.date,
              text: appointment.time,
              appTheme: appTheme,
              icon: appointment.service.icon,
            );
          }
        },
      ),
    );
  }
}
