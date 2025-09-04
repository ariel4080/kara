import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/networking/api_response.dart';
import '../../domain/entities/service_category_entity.dart';
import '../../domain/repositories/booking_repository.dart';
import '../datasources/booking_datasource.dart';
import '../models/service_category_model.dart';
import '../repositories/extensions/service_category_model_ext.dart';

part 'booking_repository_impl.g.dart';

@riverpod
BookingRepository bookingRepository(ref) {
  final bookingDatasource = ref.watch(bookingDatasourceProvider);
  return BookingRepositoryImpl(bookingDatasource);
}

class BookingRepositoryImpl implements BookingRepository {
  final BookingDatasource _bookingDatasource;

  BookingRepositoryImpl(this._bookingDatasource);

  @override
  Future<List<ServiceCategoryEntity>> getCategories() async {
    final ApiResponse<List<ServiceCategoryModel>> apiResponse =
        await _bookingDatasource.getCategories();
    return apiResponse.when(
      onSuccess:
          (SuccessApiResponse<List<ServiceCategoryModel>> response) =>
              response.body.toEntity(),
      onError:
          (ErrorApiResponse<List<ServiceCategoryModel>> error) => throw error,
    );
  }
}
