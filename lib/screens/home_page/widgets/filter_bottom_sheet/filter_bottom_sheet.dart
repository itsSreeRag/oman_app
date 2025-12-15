import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'widgets/filter_header.dart';
import 'widgets/category_filter_section.dart';
import 'widgets/rating_filter_section.dart';
import 'widgets/filter_action_buttons.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet>
    with SingleTickerProviderStateMixin {
  final Set<String> selectedCategories = {};
  String? selectedRating;

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void resetFilters() {
    setState(() {
      selectedCategories.clear();
      selectedRating = null;
    });
  }

  void applyFilters() {
    Navigator.pop(context, {
      'categories': selectedCategories.toList(),
      'rating': selectedRating,
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FilterHeader(),

            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CategoryFilterSection(
                      selectedCategories: selectedCategories,
                      onChanged: (value) {
                        setState(() {
                          selectedCategories.contains(value)
                              ? selectedCategories.remove(value)
                              : selectedCategories.add(value);
                        });
                      },
                    ),

                    const SizedBox(height: 24),

                    RatingFilterSection(
                      selectedRating: selectedRating,
                      onChanged: (rating) {
                        setState(() {
                          selectedRating = selectedRating == rating
                              ? null
                              : rating;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            FilterActionButtons(
              hasSelection:
                  selectedCategories.isNotEmpty || selectedRating != null,
              onReset: resetFilters,
              onApply: applyFilters,
            ),
          ],
        ),
      ),
    );
  }
}
