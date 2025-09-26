import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';
import '../../domain/entities/service_category_entity.dart';
import '../view_model/booking_view_model.dart';
import 'category_card.dart';

class CategoryList extends ConsumerStatefulWidget {
  final AppLocalizations localizations;

  const CategoryList({super.key, required this.localizations});

  @override
  ConsumerState<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends ConsumerState<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<BookingState> bookingStateValue = ref.watch(
      bookingViewModelProvider,
    );

    final List<ServiceCategoryEntity> categories =
        bookingStateValue.value?.categories ?? [];
    final List<ServiceCategoryEntity> selectedCategories =
        bookingStateValue.value?.categoriesSelected ?? [];

    return Expanded(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.transparent,
              Colors.transparent,
              Colors.white,
            ],
            stops: [0.0, 0.1, 0.95, 1.0],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstOut,
        child: ListView.separated(
          padding: const EdgeInsets.only(top: 26),
          itemCount: categories.length,
          separatorBuilder: (context, index) => const SizedBox(height: 4),
          itemBuilder: (context, index) {
            final ServiceCategoryEntity category = categories[index];
            final bool isSelected = selectedCategories.contains(category);
            return CategoryCard(
              localizations: widget.localizations,
              title: category.name,
              subtitle: widget.localizations.label_service_duration(
                category.time,
              ),
              price: '${category.currency} ${category.price}',
              icon: category.icon,
              isSelected: isSelected,
              onTap: (bool isSelected) {
                setState(() {
                  if (isSelected) {
                    ref
                        .read(bookingViewModelProvider.notifier)
                        .addCategory(category);
                  } else {
                    ref
                        .read(bookingViewModelProvider.notifier)
                        .removeCategory(category);
                  }
                });
              },
              enableTap: selectedCategories.length < 3,
            );
          },
        ),
      ),
    );
  }
}
