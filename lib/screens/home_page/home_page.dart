import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_drawer.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_list_view.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_carousel.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_categories.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_popular_real_estate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo (1).png', height: 50, width: 100),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_border_outlined, color: Colors.black),
          ),

          Icon(Icons.notifications, color: Colors.black),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              HomePageCarousel(),
              HomePageHorizontalList(title: 'Popular in Fasion', length: 20),
              HomePagePopularCategories(),

              HomePageHorizontalList(
                title: 'Popular in Electronics',
                length: 20,
              ),
              // HomeTextImage(),
              HomePagePopularInRealestate(),
            ],
          ),
        ),
      ),
      drawer: HomePageDrawer(),
    );
  }
}
