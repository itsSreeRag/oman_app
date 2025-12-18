import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/app_settings_page/widgets/settings_page_app_bar.dart';
import 'package:ui_test_app/screens/app_settings_page/widgets/settings_page_items.dart';
import 'package:ui_test_app/screens/app_settings_page/widgets/settings_page_vertical_list.dart';

class AppSettingsPage extends StatelessWidget {
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SettingPageAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(
              bottom: kBottomNavigationBarHeight + 10,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [SettingsPageVertical(), SettingsPageItems()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
