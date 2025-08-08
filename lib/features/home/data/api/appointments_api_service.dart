import 'package:dio/dio.dart' show Dio, Options, RequestOptions, ResponseType;
import 'package:retrofit/retrofit.dart';

import '../models/appointment_model.dart';

part 'appointments_api_service.g.dart';

@RestApi()
abstract class AppointmentsApiService {
  factory AppointmentsApiService(Dio dio, {String baseUrl}) =
      _AppointmentsApiService;

  @GET('/user/{userId}/appointments')
  @Headers(<String, String>{'Accept-Version': '1.0.0'})
  Future<List<AppointmentModel>> getAppointments(@Path('userId') String userId);
}
