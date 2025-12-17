import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class RealEstateCards extends StatelessWidget {
  final String name;
  final String price;
  final String area;
  final String bed;
  final String bath;
  final String imageUrl;

  const RealEstateCards({
    super.key,
    required this.name,
    required this.price,
    required this.area,
    required this.bed,
    required this.bath,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha((0.08 * 255).toInt()),
            blurRadius: 12,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section with overlay icons
          Stack(
            children: [
              // Property Image
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              ),

              // Gradient Overlay
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.transparent,
                        AppColors.black.withAlpha((0.3 * 255).toInt()),
                      ],
                    ),
                  ),
                ),
              ),

              // Top Right Icons ( Favorite, Menu)
              Positioned(
                top: 12,
                right: 12,
                child: Row(
                  children: [

                    // Favorite Icon
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white.withAlpha((0.9 * 255).toInt()),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: AppColors.iconColorPrimary,
                      ),
                    ),
                    SizedBox(width: 8),

                    // More Options Icon
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white.withAlpha((0.9 * 255).toInt()),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.more_vert,
                        size: 20,
                        color: AppColors.iconColorPrimary,
                      ),
                    ),
                  ],
                ),
              ),

              // Area Badge (Bottom Right on Image)
              Positioned(
                bottom: 12,
                right: 12,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withAlpha((0.95 * 255).toInt()),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '$area SQFT',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Content Section
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Property Name
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textDark,
                    letterSpacing: -0.3,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 5),

                // Property Details Row (Beds & Baths with location icon style)
                Row(
                  children: [
                    // Beds Info
                    Icon(Icons.bed_outlined, size: 18, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      bed,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),

                    Text(
                      ' • ',
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    ),

                    // Baths Info
                    Icon(
                      Icons.bathtub_outlined,
                      size: 18,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      bath,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),

                    Text(
                      ' • Location, 2.5 km',
                      style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                // Property Type and Price
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Villa, Luxury Property ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondary,
                        ),
                      ),
                      const TextSpan(
                        text: '• ',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textDark,
                        ),
                      ),
                      TextSpan(
                        text: '$price OMR',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.headings,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
