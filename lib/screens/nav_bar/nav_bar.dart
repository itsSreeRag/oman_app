import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/add_post/add_post.dart';
import 'package:ui_test_app/screens/app_settings_page/app_settings_page.dart';
import 'package:ui_test_app/screens/favorite/app_favorite_page.dart';
import 'package:ui_test_app/screens/home_page/home_page.dart';
import 'package:ui_test_app/screens/search_page/search_page.dart';

class MyNavigationBar extends StatelessWidget {
  MyNavigationBar({super.key});

  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      // backgroundColor: Colors.grey.shade900,
      backgroundColor: AppColors.navBarBackground,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      navBarStyle: NavBarStyle.style1,
      bottomScreenMargin: 10,
    );
  }

  // ---------------------- SCREENS ------------------------
  List<Widget> _buildScreens() {
    return [
      HomePage(),
      AppSearchPage(),
      AddPost(),
      AppFavoritePage(),
      AppSettingsPage(),
    ];
  }

  // ---------------------- NAV ITEMS ----------------------
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: AppColors.navbarActive,
        inactiveColorPrimary: AppColors.navBarInactive,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ("search"),
        activeColorPrimary: AppColors.navbarActive,
        inactiveColorPrimary: AppColors.navBarInactive,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add,),
        title: ("Add Post"),
        activeColorPrimary: AppColors.accent,
        inactiveColorPrimary: AppColors.navBarInactive,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        title: ("Favorite"),
        activeColorPrimary: AppColors.navbarActive,
        inactiveColorPrimary: AppColors.navBarInactive,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Settings"),
        activeColorPrimary: AppColors.navbarActive,
        inactiveColorPrimary: AppColors.navBarInactive,
      ),
    ];
  }
}
