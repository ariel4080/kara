import '../entities/service_category_entity.dart';

abstract class BookingRepository {
  Future<List<ServiceCategoryEntity>> getCategories();
}
