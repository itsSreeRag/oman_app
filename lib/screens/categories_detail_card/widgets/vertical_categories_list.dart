import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/utils/models/popular_categories_model.dart';
import 'package:ui_test_app/widgets/categories_card.dart';

class VerticalCategoriesList extends StatelessWidget {
  final String? selectedCategory;
  final Function(String) onCategoryTap;

  const VerticalCategoriesList({
    super.key,
    required this.selectedCategory,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    final gridItems = popularCategories;
    return SizedBox(
      width: 100,
      height: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: gridItems.length,
        separatorBuilder: (context, index) => Container(height: 8),
        itemBuilder: (context, index) {
          final GridModel item = gridItems[index];
          final bool isSelected = selectedCategory == item.title;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 350),
             padding: EdgeInsets.only(left: isSelected ? 8 : 0),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              gradient: isSelected
                  ? LinearGradient(
                      colors: [
                        AppColors.primary.withAlpha(100),
                        AppColors.gradient.withAlpha(100),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : const LinearGradient(
                      colors: [Colors.transparent, Colors.transparent],
                    ),
              border: Border(
                left: BorderSide(
                  color: isSelected ? AppColors.primary : Colors.transparent,
                  width: 4,
                ),
              ),
            ),
            child: InkWell(
              onTap: () => onCategoryTap(item.title),
              child: CategoriesCard(
                imagePath: item.imagePath,
                name: item.title,
              ),
            ),
          );
        },
      ),
    );
  }
}
