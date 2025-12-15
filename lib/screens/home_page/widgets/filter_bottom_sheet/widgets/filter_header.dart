import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class FilterHeader extends StatelessWidget {
  const FilterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 5,
          decoration: BoxDecoration(
            color: AppColors.navBarInactive,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Icon(Icons.filter_list_rounded, color: AppColors.primary),
            SizedBox(width: 8),
            Text(
              'Filters',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.textDark,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
