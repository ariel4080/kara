import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kara/features/common/theme/app_colors.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import 'view_model/booking_view_model.dart';
import 'widgets/category_list.dart';

class BookingFirstStepScreen extends ConsumerStatefulWidget {
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
  ConsumerState<BookingFirstStepScreen> createState() =>
      _BookingFirstStepScreenState();
}

class _BookingFirstStepScreenState
    extends ConsumerState<BookingFirstStepScreen> {
  bool isEnableNextButton = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ref.watch(getCategoriesProvider.future),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.blue),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              '${widget.localizations!.label_unknow_error}: ${snapshot.error}',
            ),
          );
        } else if (snapshot.hasData) {
          final categories = snapshot.data!;
          if (categories.isEmpty) {
            return Center(
              child: Text(widget.localizations!.title_something_went_wrong),
            );
          } else {
            return Container(
              color: widget.appTheme.colorScheme.primary,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Text(
                        widget.localizations!.label_select_service,
                        style: TextStyle(
                          color: widget.appTheme.colorScheme.secondary,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Center(
                      child: Text(
                        widget.localizations!.label_multiple_services,
                        style: const TextStyle(
                          color: AppColors.greyDark,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  CategoryList(
                    categories: categories,
                    onCategorySelected: (selectedList) {
                      setState(() {
                        isEnableNextButton = selectedList.isNotEmpty;
                      });
                    },
                    localizations: widget.localizations!,
                  ),
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
                                  ? widget.appTheme.colorScheme.secondary
                                  : AppColors.greyLight,
                          foregroundColor:
                              isEnableNextButton
                                  ? widget.appTheme.colorScheme.primary
                                  : AppColors.black,
                          minimumSize: const Size(343, 43),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed:
                            () =>
                                isEnableNextButton
                                    ? widget.pageController.nextPage(
                                      duration: const Duration(
                                        milliseconds: 1000,
                                      ),
                                      curve: Curves.easeInOut,
                                    )
                                    : null,
                        child: Text(
                          widget.localizations!.label_next,
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
            );
          }
        } else {
          return Center(
            child: Text(widget.localizations!.title_something_went_wrong),
          );
        }
      },
    );
  }
}
