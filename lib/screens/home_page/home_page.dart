import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_drawer.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_list_view.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_carousel.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_page_popular_categories.dart';
import 'package:ui_test_app/screens/home_page/widgets/home_popular_real_estate.dart';
import 'package:ui_test_app/screens/home_page/widgets/location_access.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu, 
                color: AppColors.iconColorPrimary,
                size: 30,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Opens drawer
              },
            );
          },
        ),
        scrolledUnderElevation: 0,
        title: Image.asset('assets/logo (1).png', height: 50, width: 100),
        backgroundColor: AppColors.background,

        actions: [
          Icon(Icons.chat_bubble_outline, color: AppColors.iconColorPrimary),
          SizedBox(width: 5),
          Icon(Icons.notifications_outlined, color: AppColors.iconColorPrimary),
        ],
      ),
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeLocationDetails(),
              SizedBox(height: 10),
              HomePageCarousel(),
              HomePagePopularCategories(),
              HomePageHorizontalList(title: 'Popular in Fasion', length: 20),

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
