import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class ProductFeaturesSection extends StatelessWidget {
  const ProductFeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: const [
        _FeatureChip(icons: Icons.calendar_month, text: '2012'),
        _FeatureChip(icons: Icons.sd_storage, text: '8 GB'),
        // _FeatureChip(icons: Icons.local_gas_station, text: 'Diesel'),
      ],
    );
  }
}

class _FeatureChip extends StatelessWidget {
  final IconData icons;
  final String text;

  const _FeatureChip({required this.text, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icons, size: 16, color: AppColors.secondary),
        SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: 13)),
      ],
    );
  }
}
