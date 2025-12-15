import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/utils/models/home_drawer_model.dart';

class CategoryFilterSection extends StatelessWidget {
  final Set<String> selectedCategories;
  final Function(String) onChanged;

  const CategoryFilterSection({
    super.key,
    required this.selectedCategories,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: homeDrawerItems.map((item) {
            final isSelected = selectedCategories.contains(item.title);
            return InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => onChanged(item.title),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primary
                      : AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      item.icons,
                      size: 18,
                      color: isSelected
                          ? AppColors.white
                          : AppColors.iconColorPrimary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      item.title,
                      style: TextStyle(
                        color: isSelected
                            ? AppColors.white
                            : AppColors.textDark,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
