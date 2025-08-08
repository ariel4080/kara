import 'package:intl/intl.dart';
import 'package:kara/features/home/data/models/appointment_model.dart';

import '../../../domain/entities/appointments_entity.dart';

extension AppointmentListExt on List<AppointmentModel> {
  List<AppointmentsEntity> toEntity() {
    return map((model) => model.toEntity()).toList();
  }
}

extension AppointmentModelExt on AppointmentModel {
  AppointmentsEntity toEntity() {
    final DateFormat formatterDate = DateFormat("EEEE d MMMM y", 'es_ES');
    final DateFormat formattertime = DateFormat("h:mm a", 'es_ES');
    return AppointmentsEntity(
      id: id,
      userId: userId,
      businessId: businessId,
      date: toBeginningOfSentenceCase(
        formatterDate.format(DateTime.parse(date)),
      ),
      time: formattertime
          .format(DateFormat('HH:mm').parse(time))
          .replaceAll('p. m.', 'p.m')
          .replaceAll('a. m.', 'a.m'),
      durationMinutes: durationMinutes,
      status: status,
      createdAt: createdAt,
      service: service.toEntity(),
      notes: notes ?? '',
    );
  }
}

extension ServiceModelExt on ServiceModel {
  ServiceEntity toEntity() {
    return ServiceEntity(
      id: id,
      name: name,
      price: price,
      currency: currency,
      icon:
          ServiceIcon.values
              .firstWhere(
                (e) => e.name == icon,
                orElse: () => ServiceIcon.service,
              )
              .icon,
    );
  }
}
