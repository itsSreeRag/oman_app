import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/app_settings_page/widgets/setting_page_profile_card.dart';

class SettingPageAppBar extends StatelessWidget {
  const SettingPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      backgroundColor: AppColors.primary.withAlpha(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      pinned: false,
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: ProfileCard(),
      ),
      actions: [
        PopupMenuButton<String>(
          icon: Icon(Icons.more_vert, color: AppColors.primary),

          onSelected: (value) {
            switch (value) {
              case 'edit':
                // Navigate to edit page
                break;
              case 'help':
                // Navigate to help page
                break;
              case 'logout':
                _showLogoutDialog(context);
                break;
            }
          },
          color: AppColors.black.withAlpha(180),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 'edit',
              child: Text(
                'Edit',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textLight,
                ),
              ),
            ),
            PopupMenuItem(
              value: 'help',
              child: Text(
                'Help',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textLight,
                ),
              ),
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              value: 'logout',
              child: Text('Log out', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ],
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Log Out'),
        content: const Text('Are you sure you want to log out?'),
        actions: [
          TextButton(
            onPressed: () {},
            // onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Navigator.pop(context);
              // Perform logout
            },
            child: const Text('Log out', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
