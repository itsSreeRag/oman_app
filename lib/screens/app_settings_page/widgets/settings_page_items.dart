import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/about_us_page/about_us.dart';
import 'package:ui_test_app/screens/sample_page/sample_page.dart';

class SettingsPageItems extends StatelessWidget {
  const SettingsPageItems({super.key});

  @override
  Widget build(BuildContext context) {
    List<SettingsPageItemsModel> items = [
      SettingsPageItemsModel(
        title: 'Theme',
        icon: Icons.brightness_6_outlined,
        navigation: SamplePage(
          title: 'Theme',
          icon: Icons.brightness_6_outlined,
        ),
      ),

      SettingsPageItemsModel(
        title: 'About Us',
        icon: Icons.info_outline,
        navigation: AboutUs(),
      ),

      SettingsPageItemsModel(
        title: 'Privacy Policy',
        icon: Icons.privacy_tip_outlined,
        navigation: SamplePage(
          title: 'Privacy Policy',
          icon: Icons.privacy_tip_outlined,
        ),
      ),
      SettingsPageItemsModel(
        title: 'Terms & Conditions',
        icon: Icons.article_outlined,
        navigation: SamplePage(
          title: 'Terms & Conditions',
          icon: Icons.article_outlined,
        ),
      ),

      SettingsPageItemsModel(
        title: 'Contact Support',
        icon: Icons.support_agent_outlined,
        navigation: SamplePage(
          title: 'Contact Support',
          icon: Icons.support_agent_outlined,
        ),
      ),
      SettingsPageItemsModel(
        title: 'Help & FAQ',
        icon: Icons.help_outline,
        navigation: SamplePage(title: 'Help & FAQ', icon: Icons.help_outline),
      ),
      SettingsPageItemsModel(
        title: 'Report a Problem',
        icon: Icons.report_problem_outlined,
        navigation: SamplePage(
          title: 'Report a Problem',
          icon: Icons.report_problem_outlined,
        ),
      ),

      SettingsPageItemsModel(
        title: 'Notifications',
        icon: Icons.notifications_outlined,
        navigation: SamplePage(
          title: 'Notifications',
          icon: Icons.notifications_outlined,
        ),
      ),
      SettingsPageItemsModel(
        title: 'Language',
        icon: Icons.language_outlined,
        navigation: SamplePage(
          title: 'Language',
          icon: Icons.language_outlined,
        ),
      ),

      SettingsPageItemsModel(
        title: 'Rate the App',
        icon: Icons.star_rate_outlined,
        navigation: SamplePage(
          title: 'Rate the App',
          icon: Icons.star_rate_outlined,
        ),
      ),
      SettingsPageItemsModel(
        title: 'Share the App',
        icon: Icons.share_outlined,
        navigation: SamplePage(
          title: 'Share the App',
          icon: Icons.share_outlined,
        ),
      ),
    ];

    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
          child: Divider(color: Colors.grey.shade300),
        ),

        itemBuilder: (context, index) {
          final item = items[index];

          return InkWell(
            onTap: () => Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (_, animation, __) => item.navigation,
                transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Row(
                children: [
                  Icon(item.icon, color: AppColors.primary, weight: 0.05, size: 22),
                  SizedBox(width: 14),
                  Text(
                    item.title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade400,
                    size: 14,
                  ),
                ],
              ),
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
