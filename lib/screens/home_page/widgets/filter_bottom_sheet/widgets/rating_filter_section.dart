import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class RatingFilterSection extends StatelessWidget {
  final String? selectedRating;
  final Function(String) onChanged;

  const RatingFilterSection({
    super.key,
    required this.selectedRating,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Minimum Rating',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          children: ['5', '4', '3', '2', '1'].map((rating) {
            final isSelected = selectedRating == rating;
            return InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => onChanged(rating),
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  gradient: isSelected
                      ? LinearGradient(
                          colors: [AppColors.gradient, AppColors.primary],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                      : LinearGradient(
                          colors: [
                            AppColors.cardBackground,
                            AppColors.cardBackground,
                          ],
                        ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: isSelected ? AppColors.white : Colors.amber,
                      size: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$rating & above',
                      style: TextStyle(
                        color: isSelected
                            ? AppColors.white
                            : AppColors.textDark,
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
