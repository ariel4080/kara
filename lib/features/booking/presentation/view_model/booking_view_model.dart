import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/booking_repository_impl.dart';
import '../../domain/entities/service_category_entity.dart';

part 'booking_view_model.freezed.dart';
part 'booking_view_model.g.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    @Default([]) List<ServiceCategoryEntity> categories,
    @Default([]) List<ServiceCategoryEntity> categoriesSelected,
  }) = _BookingState;
}

@Riverpod(keepAlive: true)
class BookingViewModel extends _$BookingViewModel {
  @override
  FutureOr<BookingState> build() => const BookingState();

  Future<void> fetchCategories() async {
    state = const AsyncValue.loading();
    final bookingRepository = ref.read(bookingRepositoryProvider);

    try {
      final categories = await bookingRepository.getCategories();
      state = AsyncValue.data(
        BookingState(categories: categories, categoriesSelected: []),
      );
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
      rethrow;
    }
  }

  void addCategory(ServiceCategoryEntity category) {
    final currentState = state.value!;
    final updatedSelectedCategories = List<ServiceCategoryEntity>.from(
      currentState.categoriesSelected,
    )..add(category);

    state = AsyncValue.data(
      currentState.copyWith(categoriesSelected: updatedSelectedCategories),
    );
  }

  void removeCategory(ServiceCategoryEntity category) {
    final currentState = state.value!;
    final updatedSelectedCategories = List<ServiceCategoryEntity>.from(
      currentState.categoriesSelected,
    )..remove(category);

    state = AsyncValue.data(
      currentState.copyWith(categoriesSelected: updatedSelectedCategories),
    );
  }
}
