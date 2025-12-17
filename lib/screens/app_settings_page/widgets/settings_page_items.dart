import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/about_us_page/about_us.dart';
import 'package:ui_test_app/screens/sample_page/sample_page.dart';

class SettingsPageItems extends StatelessWidget {
  const SettingsPageItems({super.key});

  @override
  Widget build(BuildContext context) {
    List<SettingsPageItemsModel> items = [
      SettingsPageItemsModel(
        title: 'Theme',
        icon: Icons.brightness_6,
        navigation: SamplePage(icon: Icons.brightness_6, title: 'Theme'),
      ),
      SettingsPageItemsModel(
        title: 'About Us',
        icon: Icons.info_outline,
        navigation: AboutUs(),
      ),
      SettingsPageItemsModel(
        title: 'Privacy policy',
        icon: Icons.privacy_tip_outlined,
        navigation: SamplePage(
          title: 'Privacy policy',
          icon: Icons.privacy_tip_outlined,
        ),
      ),
      SettingsPageItemsModel(
        title: 'Terms & conditions',
        icon: Icons.article_outlined,
        navigation: SamplePage(
          title: 'Terms & conditions',
          icon: Icons.article_outlined,
        ),
      ),
      SettingsPageItemsModel(
        title: 'Contact support',
        icon: Icons.support_agent,
        navigation: SamplePage(
          title: 'Contact support',
          icon: Icons.support_agent,
        ),
      ),
      SettingsPageItemsModel(
        title: 'Share the app',
        icon: Icons.share,
        navigation: SamplePage(title: 'Share the app', icon: Icons.share),
      ),
      SettingsPageItemsModel(
        title: 'Log Out',
        icon: Icons.logout_outlined,
        navigation: null,
      ),
    ];
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          leading: Icon(item.icon, color: Colors.deepOrangeAccent),
          title: Text(
            item.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey.shade400),
          onTap: () {
            if (item.title == 'Log Out') {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Log Out'),
                  content: const Text('Are you sure you want to log out?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Log Out',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item.navigation!),
              );
            }
          },
        );
      },
      itemCount: items.length,
    );
  }
}

class SettingsPageItemsModel {
  final String title;
  final IconData icon;
  final Widget? navigation;

  SettingsPageItemsModel({
    required this.title,
    required this.icon,
    required this.navigation,
  });
}
