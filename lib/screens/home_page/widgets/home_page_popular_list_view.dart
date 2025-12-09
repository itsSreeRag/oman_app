import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/widgets/product_card.dart';

class HomePageHorizontalList extends StatelessWidget {
  final String title;
  final int length;

  const HomePageHorizontalList({
    super.key,
    required this.title,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width for responsive design
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate responsive padding
    final horizontalPadding = screenWidth > 600 ? 16.0 : 12.0;

    // Calculate responsive card height
    // final cardHeight = screenWidth > 600 ? 280.0 : 250.0;

    // Calculate responsive title font size
    final titleFontSize = screenWidth > 600 ? 24.0 : 20.0;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        // vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header with "See All" button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textDark,
                  // letterSpacing: -0.5,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to see all products
                },
                child: Row(
                  children: [
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: screenWidth > 600 ? 16 : 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color:  AppColors.primary,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Horizontal scrolling product list
          SizedBox(
            height: 271,
            child: ListView.builder(
              itemCount: length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, index) {
                return ProductCard(
                  name: "Samsung Galaxy S23",
                  price: "59999",
                  imageUrl: "assets/pexels-asphotograpy-230544.jpg",
                  location: "1900, Sidab (Muscat, Muscat)",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
