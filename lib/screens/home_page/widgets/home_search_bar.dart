import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SearchBarHeaderDelegate(height: 45),
    );
  }
}

class SearchBarHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height;

  SearchBarHeaderDelegate({this.height = 60});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final TextEditingController searchController = TextEditingController();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.white),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: height,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.hintText.withAlpha(100),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: searchController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter something";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Search for "Mobile"',
                  hintStyle: TextStyle(color: AppColors.hintText, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.iconColorPrimary,
                  ),
                  suffixIcon: Icon(Icons.mic, color: AppColors.primary),
                  border: InputBorder.none,

                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: AppColors.iconColorPrimary,
            ),
          ),
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
