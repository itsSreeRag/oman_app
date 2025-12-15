import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 110.0,
      floating: false,
      pinned: false,
      snap: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: EdgeInsets.only(top: 0, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person, color: Colors.orange, size: 20),
                          SizedBox(width: 5),
                          Text(
                            'User Name',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textDark,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down, size: 20),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Address will be here...',
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/logo (1).png',
                    height: 35,
                    width: 70,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(
                    color: AppColors.hintText.withAlpha(100),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: searchController, // optional
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter something";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Search for "Mobile"',
                    hintStyle: TextStyle(
                      color: AppColors.hintText,
                      fontSize: 14,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.iconColorPrimary,
                    ),
                    suffixIcon: Icon(Icons.mic, color: AppColors.primary),
                    border: InputBorder.none,

                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    // contentPadding: EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
        titlePadding: EdgeInsets.zero,
        centerTitle: false,
      ),
    );
  }
}
