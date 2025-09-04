import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/networking/api_response.dart';
import '../../../../core/networking/dio_client.dart';
import '../../../common/mixins/api_handler_mixin.dart';
import '../api/booking_api_service.dart';
import '../models/service_category_model.dart';

part 'booking_datasource.g.dart';

@riverpod
BookingDatasource bookingDatasource(ref) {
  final dio = ref.watch(dioClientProvider);
  return BookingDatasource(dio);
}

class BookingDatasource with ApiHandlerMixin {
  late final BookingApiService _apiService;

  BookingDatasource(Dio client) : _apiService = BookingApiService(client);

  Future<ApiResponse<List<ServiceCategoryModel>>> getCategories() async =>
      await executeApiCall(_apiService.getCategories());
}
