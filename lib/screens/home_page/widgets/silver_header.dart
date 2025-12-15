import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_categories.dart';
import 'package:ui_test_app/screens/home_page/widgets/quick_filter_list.dart';

class CategoriesHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height;

  CategoriesHeaderDelegate({this.height = 60});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HomePagePopularCategories(),
          SizedBox(height: 15),
          QuickFiltersList()
        ],
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