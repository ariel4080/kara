import '../entities/appointments_entity.dart';

abstract class AppointmentsRepository {
  Future<List<AppointmentsEntity>> getAppointments(String userId);
}
