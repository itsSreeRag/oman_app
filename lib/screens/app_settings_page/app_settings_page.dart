import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/app_settings_page/widgets/profile_detail_card.dart';
import 'package:ui_test_app/screens/app_settings_page/widgets/settings_page_items.dart';

class AppSettingsPage extends StatelessWidget {
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Settings'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ProfileDetailsCard(
              name: "John Mathew",
              email: "john.mathew123@gmail.com",
            ),
            SizedBox(height: 20),
            Expanded(child: SettingsPageItems()),
          ],
        ),
      ),
    );
  }
}
