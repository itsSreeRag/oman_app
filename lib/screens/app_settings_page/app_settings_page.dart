import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/about_us_page/about_us.dart';

class AppSettingsPage extends StatelessWidget {
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<SettingsPageItemsModel> items = [
      SettingsPageItemsModel(
        title: 'Profile info',
        icon: Icons.person,
        navigation: AboutUs(),
      ),
      SettingsPageItemsModel(
        title: 'Theme',
        icon: Icons.brightness_6,
        navigation: AboutUs(),
      ),
      SettingsPageItemsModel(
        title: 'About Us',
        icon: Icons.info_outline,
        navigation: AboutUs(),
      ),
      SettingsPageItemsModel(
        title: 'Privacy policy',
        icon: Icons.privacy_tip_outlined,
        navigation: AboutUs(),
      ),
      SettingsPageItemsModel(
        title: 'Terms & conditions',
        icon: Icons.article_outlined,
        navigation: AboutUs(),
      ),
      SettingsPageItemsModel(
        title: 'Contact support',
        icon: Icons.support_agent,
        navigation: AboutUs(),
      ),
      SettingsPageItemsModel(
        title: 'Share the app',
        icon: Icons.share,
        navigation: AboutUs(),
      ),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page'), centerTitle: true),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Icon(item.icon, color: Colors.deepOrangeAccent),
            title: Text(
              item.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => item.navigation),
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}

class SettingsPageItemsModel {
  final String title;
  final IconData icon;
  final Widget navigation;

  SettingsPageItemsModel({
    required this.title,
    required this.icon,
    required this.navigation,
  });
}
