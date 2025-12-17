import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class FilterActionButtons extends StatelessWidget {
  final VoidCallback onReset;
  final VoidCallback onApply;
  final bool hasSelection;

  const FilterActionButtons({
    super.key,
    required this.onReset,
    required this.onApply,
    required this.hasSelection,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: onReset,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.primary),
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            child: const Text(
              'Reset',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            onPressed: onApply,
            style: ElevatedButton.styleFrom(
              
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.white,
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            child: const Text('Apply Filters'),
          ),
        ),
      ],
    );
  }
}
