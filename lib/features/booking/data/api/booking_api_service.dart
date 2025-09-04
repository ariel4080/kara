import 'package:dio/dio.dart' show Dio, Options, RequestOptions, ResponseType;
import 'package:retrofit/retrofit.dart';

import '../models/service_category_model.dart';

part 'booking_api_service.g.dart';

@RestApi()
abstract class BookingApiService {
  factory BookingApiService(Dio dio, {String baseUrl}) = _BookingApiService;

  @GET('/categories')
  @Headers(<String, String>{'Accept-Version': '1.0.0'})
  Future<List<ServiceCategoryModel>> getCategories();
}
