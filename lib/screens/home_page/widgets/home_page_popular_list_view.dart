import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/utils/models/product_card_model.dart';
import 'package:ui_test_app/widgets/product_card.dart';

class HomePageHorizontalList extends StatelessWidget {
  final String title;
  final List<ProductCardModel> products;

  const HomePageHorizontalList({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section header with "See All" button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textDark,
                  // letterSpacing: -0.5,
                ),
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
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
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
        // Horizontal scrolling product list
        SizedBox(
          height: 202,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 4),
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductCard(product: product);
            },
          ),
        ),
      ],
    );
  }
}
