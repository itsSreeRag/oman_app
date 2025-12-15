import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/utils/models/product_card_model.dart';

class ProductCard extends StatelessWidget {
  final ProductCardModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // Product Image
            Image.asset(
              product.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Dark gradient overlay at bottom
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.transparent,
                      AppColors.black.withAlpha(200),
                    ],
                  ),
                ),
              ),
            ),
            // Heart icon
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white.withAlpha((0.9 * 255).toInt()),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withAlpha((0.1 * 255).toInt()),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(6),
                child: Icon(
                  Icons.favorite_border,
                  size: 18,
                  color: AppColors.iconColorPrimary,
                ),
              ),
            ),

            // Bottom content (Offer text)
            Positioned(
              bottom: 12,
              left: 12,
              right: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${product.price} OMR ',
                    style: TextStyle(
                      color: AppColors.headings,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      height: 1.1,
                    ),
                  ),
                  Text(
                    product.location,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
