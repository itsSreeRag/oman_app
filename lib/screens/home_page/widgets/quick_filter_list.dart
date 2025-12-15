import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class QuickFiltersList extends StatelessWidget {
  const QuickFiltersList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_QuickFilterItem> filters = [
      _QuickFilterItem(title: 'Filter', icon: Icons.tune),
      _QuickFilterItem(title: 'Sort', icon: Icons.sort),
      _QuickFilterItem(title: 'Near Me', icon: Icons.location_on_outlined),
      _QuickFilterItem(title: 'Top Rated', icon: Icons.star_border),
      _QuickFilterItem(title: 'Offers', icon: Icons.local_offer_outlined),
      _QuickFilterItem(title: 'New', icon: Icons.fiber_new),
    ];

    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: filters.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final item = filters[index];

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.hintText.withAlpha(150),
                width: 1.5,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(item.icon, size: 18, color: AppColors.iconColorPrimary),
                const SizedBox(width: 6),
                Text(
                  item.title,
                  style: const TextStyle(
                    color: AppColors.textDark,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _QuickFilterItem {
  final String title;
  final IconData icon;

  const _QuickFilterItem({required this.title, required this.icon});
}
