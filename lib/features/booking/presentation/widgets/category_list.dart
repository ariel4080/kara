import 'package:flutter/material.dart';

import '../../../../core/config/l10n/generated/app_localizations.dart';
import '../../domain/entities/service_category_entity.dart';
import 'category_card.dart';

class CategoryList extends StatefulWidget {
  final List<ServiceCategoryEntity> categories;
  final void Function(List<ServiceCategoryEntity> selectedList)
  onCategorySelected;
  final AppLocalizations localizations;

  const CategoryList({
    super.key,
    required this.onCategorySelected,
    required this.categories,
    required this.localizations,
  });

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final List<ServiceCategoryEntity> _selectedCategories = [];

  @override
  Widget build(BuildContext context) {
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
          itemCount: widget.categories.length,
          separatorBuilder: (context, index) => const SizedBox(height: 4),
          itemBuilder: (context, index) {
            final ServiceCategoryEntity category = widget.categories[index];
            final bool isSelected = _selectedCategories.contains(category);
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
                    _selectedCategories.add(category);
                  } else {
                    _selectedCategories.remove(category);
                  }
                });
                widget.onCategorySelected(_selectedCategories);
              },
              enableTap: _selectedCategories.length < 3,
            );
          },
        ),
      ),
    );
  }
}
