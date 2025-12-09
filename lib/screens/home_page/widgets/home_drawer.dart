import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/utils/models/home_drawer_model.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final items = homeDrawerItems;

    return Drawer(
      backgroundColor: AppColors.background,

      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 100,
              child: Image.asset('assets/logo (1).png'),
            ),
            SizedBox(height: 20),

            Text(
              'All Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),

            // List with sub-items
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return ExpansionTile(
                    leading: Icon(item.icons, color: AppColors.headings),

                    title: Text(
                      item.title,
                      style: TextStyle(color: AppColors.headings),
                    ),
                    children: item.subItems
                        .map(
                          (sub) => ListTile(
                            title: Text(sub),
                            onTap: () {
                              Navigator.pop(context);
                              print("Clicked → ${item.title} → $sub");
                            },
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
