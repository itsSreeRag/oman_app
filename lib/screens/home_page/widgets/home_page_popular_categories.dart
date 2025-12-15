import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/widgets/categories_card.dart';
import 'package:ui_test_app/utils/models/popular_categories_model.dart';

class HomePagePopularCategories extends StatelessWidget {
  const HomePagePopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final gridItems = popularCategories;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Top Categories for You',
                style: TextStyle(
                  fontSize: 15,
                  leadingDistribution: TextLeadingDistribution.even,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textDark,
                  letterSpacing: 0,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: AppColors.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 75,
          child: ListView.builder(padding: EdgeInsets.all(0),
            scrollDirection: Axis.horizontal,
            itemCount: gridItems.length,
            itemBuilder: (context, index) {
              final GridModel item = gridItems[index];
              return CategoriesCard(
                imagePath: item.imagePath,
                name: item.title,
              );
            },
          ),
        ),
      ],
    );
  }
}
