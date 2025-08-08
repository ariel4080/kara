import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/networking/api_response.dart';
import '../../../../core/networking/dio_client.dart';
import '../../../common/mixins/api_handler_mixin.dart';
import '../api/appointments_api_service.dart';
import '../models/appointment_model.dart';

part 'appointments_datasource.g.dart';

@riverpod
AppointmentsDatasource appointmentsDatasource(ref) {
  final dio = ref.watch(dioClientProvider);
  return AppointmentsDatasource(dio);
}

class AppointmentsDatasource with ApiHandlerMixin {
  late final AppointmentsApiService _apiService;

  AppointmentsDatasource(Dio client)
    : _apiService = AppointmentsApiService(client);

  Future<ApiResponse<List<AppointmentModel>>> getAppointments(
    String userId,
  ) async => await executeApiCall(_apiService.getAppointments(userId));
}
