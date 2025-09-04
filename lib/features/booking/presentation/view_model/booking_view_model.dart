import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/booking_repository_impl.dart';
import '../../domain/entities/service_category_entity.dart';

part 'booking_view_model.g.dart';

@riverpod
Future<List<ServiceCategoryEntity>> getCategories(ref) async {
  final bookingRepository = ref.watch(bookingRepositoryProvider);

  return await bookingRepository.getCategories();
}
