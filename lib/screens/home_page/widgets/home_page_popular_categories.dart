import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class GridModel {
  final String title;
  final IconData icons;
  final Color? color;

  GridModel({required this.title, required this.icons, this.color});
}

class HomePagePopularCategories extends StatelessWidget {
  const HomePagePopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List<GridModel> gridItems = [
      GridModel(
        title: 'Car',
        icons: Icons.directions_car_rounded,
        color: Colors.blue.shade400,
      ),
      GridModel(
        title: 'Real Estate',
        icons: Icons.home_rounded,
        color: Colors.green.shade400,
      ),
      GridModel(
        title: 'Rental Cars',
        icons: Icons.car_rental_rounded,
        color: Colors.orange.shade400,
      ),
      GridModel(
        title: 'Classifieds',
        icons: Icons.category_rounded,
        color: Colors.purple.shade400,
      ),
      GridModel(
        title: 'Mobile',
        icons: Icons.phone_android_rounded,
        color: Colors.pink.shade400,
      ),
      GridModel(
        title: 'Community',
        icons: Icons.groups_rounded,
        color: Colors.teal.shade400,
      ),
      GridModel(
        title: 'Events',
        icons: Icons.event_rounded,
        color: Colors.red.shade400,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Categories',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondary,
                  letterSpacing: 0.5,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.85,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: gridItems.length,
            itemBuilder: (context, index) {
              final item = gridItems[index];
              return InkWell(
                onTap: () {
                  // Handle category tap
                },
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha((0.05 * 255).toInt()),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color:
                              item.color?.withAlpha((0.1 * 255).toInt()) ??
                              AppColors.primary.withAlpha((0.1 * 255).toInt()),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          item.icons,
                          color: item.color ?? AppColors.primary,
                          size: 28,
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          item.title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textDark,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
