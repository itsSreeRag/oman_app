import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/categories_detail_card/categories_detail_page.dart';
import 'package:ui_test_app/screens/home_page/widgets/silver_header.dart';
import 'package:ui_test_app/widgets/categories_card.dart';
import 'package:ui_test_app/utils/models/popular_categories_model.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CategoriesHeaderDelegate(height: 90),
    );
  }
}

class TopCategoriesHeading extends StatelessWidget {
  const TopCategoriesHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
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
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 400),
                  pageBuilder: (_, animation, __) => CategoriesDetailPage(
                    initialCategory: popularCategories.isNotEmpty 
                        ? popularCategories[0].title 
                        : null,
                  ),
                  transitionsBuilder: (_, animation, __, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                ),
              );
            },
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
    );
  }
}

class HomePagePopularCategories extends StatelessWidget {
  const HomePagePopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final gridItems = popularCategories;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 8),
          height: 75,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: gridItems.length,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final GridModel item = gridItems[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 400),
                      pageBuilder: (_, animation, __) => CategoriesDetailPage(
                        initialCategory:
                            item.title,
                      ),
                      transitionsBuilder: (_, animation, __, child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                    ),
                  );
                },
                child: CategoriesCard(
                  imagePath: item.imagePath,
                  name: item.title,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
