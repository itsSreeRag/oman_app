import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/utils/models/product_card_model.dart';

class ProductDetailAppBar extends StatelessWidget {
  final ProductCardModel productDetails;

  const ProductDetailAppBar({super.key, required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 400,
      pinned: true,
      stretch: true,
      backgroundColor: AppColors.background,
      leading: _circleIcon(
        icon: Icons.arrow_back,
        onTap: () => Navigator.pop(context),
      ),
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      elevation: 0,
      actions: [
        _circleIcon(icon: Icons.favorite_border, onTap: () {}),
        _circleIcon(icon: Icons.share, onTap: () {}),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Image.asset(
              productDetails.imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.6, 1.0],
                  colors: [
                    AppColors.transparent,
                    AppColors.black.withAlpha(180),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circleIcon({required IconData icon, required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.black.withAlpha(120),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: Icon(icon, color: AppColors.white, size: 20),
          onPressed: onTap,
        ),
      ),
    );
  }
}
