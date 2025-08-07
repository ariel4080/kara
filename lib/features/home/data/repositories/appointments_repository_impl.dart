import 'package:kara/features/home/data/models/appointment_model.dart';
import 'package:kara/features/home/data/repositories/extensions/appointment_model_ext.dart';
import 'package:kara/features/home/domain/repositories/appointments_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/networking/api_response.dart';
import '../../domain/entities/appointments_entity.dart';
import '../datasources/appointments_datasource.dart';

part 'appointments_repository_impl.g.dart';

@riverpod
AppointmentsRepository appointmentsRepository(ref) {
  final appointmentsDatasource = ref.watch(appointmentsDatasourceProvider);
  return AppointmentsRepositoryImpl(appointmentsDatasource);
}

class AppointmentsRepositoryImpl implements AppointmentsRepository {
  final AppointmentsDatasource _appointmentsDatasource;

  AppointmentsRepositoryImpl(this._appointmentsDatasource);

  @override
  Future<List<AppointmentsEntity>> getAppointments(String userId) async {
    final ApiResponse<List<AppointmentModel>> apiResponse =
        await _appointmentsDatasource.getAppointments(userId);
    return apiResponse.when(
      onSuccess:
          (SuccessApiResponse<List<AppointmentModel>> response) =>
              response.body.toEntity(),
      onError: (ErrorApiResponse<List<AppointmentModel>> error) => throw error,
    );
  }
}
