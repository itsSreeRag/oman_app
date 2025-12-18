import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_app_bar.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_drawer.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_categories.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_list_view.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_carousel.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_popular_real_estate.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_search_bar.dart';
import 'package:ui_test_app/screens/home_page/widgets/quick_filter_list.dart';
import 'package:ui_test_app/utils/models/product_card_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            HomeAppBar(),

            HomeSearchBar(),
            HomePageCarousel(),
            TopCategoriesHeading(),

            HomeCategoriesList(),

            /// 👇 IMPORTANT FIX
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  QuickFiltersList(),

                  HomePageHorizontalList(
                    title: 'Popular in Fashion',
                    products: popularProducts,
                  ),
                  HomePageHorizontalList(
                    title: 'Popular in Electronics',
                    products: popularProducts,
                  ),
                  HomePagePopularInRealestate(),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: HomePageDrawer(),
    );
  }
}
