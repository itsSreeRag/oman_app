import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/categories_detail_card/widgets/sub_categories_list.dart';
import 'package:ui_test_app/screens/categories_detail_card/widgets/vertical_categories_list.dart';
import 'package:ui_test_app/utils/models/popular_categories_model.dart';

class CategoriesDetailPage extends StatefulWidget {
  final String? initialCategory;

  const CategoriesDetailPage({super.key, this.initialCategory});

  @override
  State<CategoriesDetailPage> createState() => _CategoriesDetailPageState();
}

class _CategoriesDetailPageState extends State<CategoriesDetailPage> {
  late String selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory =
        widget.initialCategory ??
        (popularCategories.isNotEmpty
            ? popularCategories[0].title
            : 'Selected Category');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        backgroundColor: AppColors.background,
      ),
      body: Row(
        children: [
          VerticalCategoriesList(
            selectedCategory: selectedCategory,
            onCategoryTap: (category) {
              setState(() {
                selectedCategory = category;
              });
            },
          ),
          Expanded(child: SubCategoriesList(categories: selectedCategory)),
        ],
      ),
    );
  }
}
