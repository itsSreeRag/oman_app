import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    List<HomeDrawerModel> items = [
      HomeDrawerModel(title: 'Motors', icons: Icons.directions_car),
      HomeDrawerModel(title: 'Real Estate', icons: Icons.home_work_outlined),
      HomeDrawerModel(title: 'Electronics', icons: Icons.devices_other),
      HomeDrawerModel(title: 'Home & Garden', icons: Icons.chair_alt),
      HomeDrawerModel(title: 'Fashion', icons: Icons.checkroom),
      HomeDrawerModel(title: 'Sports', icons: Icons.sports_soccer),
      HomeDrawerModel(title: 'Jobs', icons: Icons.work_outline),
      HomeDrawerModel(title: 'Services', icons: Icons.miscellaneous_services),
    ];

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 100,
              child: Image.asset('assets/logo (1).png'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    leading: Icon(item.icons, color: Colors.deepOrangeAccent),
                    title: Text(item.title),
                  );
                },
                itemCount: items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeDrawerModel {
  final String title;
  final IconData icons;

  HomeDrawerModel({required this.title, required this.icons});
}