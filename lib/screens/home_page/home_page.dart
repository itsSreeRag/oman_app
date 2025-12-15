import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_app_bar.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_drawer.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_list_view.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_carousel.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_popular_real_estate.dart';
import 'package:ui_test_app/screens/home_page/widgets/silver_header.dart';
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
            // Carousel section
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 130,
                      child: FadeCarousel(
                        images: const [
                          'https://images.unsplash.com/photo-1506765515384-028b60a970df?w=1200&q=80',
                          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=1200&q=80',
                          'https://images.unsplash.com/photo-1496307042754-b4aa456c4a2d?w=1200&q=80',
                          'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?w=1200&q=80',
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SliverPersistentHeader(
              pinned: true,
              delegate: CategoriesHeaderDelegate(height: 180),
            ),

            // Rest of the content
            SliverToBoxAdapter(
              child: Column(
                children: [
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
