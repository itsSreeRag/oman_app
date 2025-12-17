import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_categories.dart';

class CategoriesHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height;

  CategoriesHeaderDelegate({this.height = 60});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: AppColors.white,
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        child: HomePagePopularCategories(),
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
