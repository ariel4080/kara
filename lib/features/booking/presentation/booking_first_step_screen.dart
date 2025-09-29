import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kara/features/common/theme/app_colors.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../core/networking/api_response.dart';
import 'view_model/booking_view_model.dart';
import 'widgets/category_error.dart';
import 'widgets/category_list.dart';
import 'widgets/category_skeleton.dart';

class BookingFirstStepScreen extends ConsumerWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  final PageController pageController;

  const BookingFirstStepScreen({
    super.key,
    this.localizations,
    required this.appTheme,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<BookingState> getCategoriesProvider = ref.watch(
      bookingViewModelProvider,
    );

    bool isEnableNextButton =
        getCategoriesProvider.hasError
            ? false
            : getCategoriesProvider.value != null
            ? getCategoriesProvider.value!.categoriesSelected.isNotEmpty
            : false;

    return getCategoriesProvider.when(
      data:
          (BookingState bookingState) => Container(
            color: appTheme.colorScheme.primary,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Text(
                      localizations!.label_select_service,
                      style: TextStyle(
                        color: appTheme.colorScheme.secondary,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Center(
                    child: Text(
                      localizations!.label_multiple_services,
                      style: const TextStyle(
                        color: AppColors.greyDark,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                CategoryList(localizations: localizations!),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isEnableNextButton
                                ? appTheme.colorScheme.secondary
                                : AppColors.greyLight,
                        foregroundColor:
                            isEnableNextButton
                                ? appTheme.colorScheme.primary
                                : AppColors.black,
                        minimumSize: const Size(343, 43),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed:
                          () =>
                              isEnableNextButton
                                  ? pageController.nextPage(
                                    duration: const Duration(
                                      milliseconds: 1000,
                                    ),
                                    curve: Curves.easeInOut,
                                  )
                                  : null,
                      child: Text(
                        localizations!.label_next,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      error:
          (error, stackTrace) => CategoryError(
            localizations: localizations!,
            errorResponse: error as ErrorApiResponse,
            isLoading: getCategoriesProvider.isLoading,
            onRetry:
                () =>
                    ref
                        .read(bookingViewModelProvider.notifier)
                        .fetchCategories(),
          ),
      loading: () => const CategorySkeleton(),
    );
  }
}
