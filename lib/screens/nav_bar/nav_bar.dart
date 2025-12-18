import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/add_post/add_post.dart';
import 'package:ui_test_app/screens/app_settings_page/app_settings_page.dart';
import 'package:ui_test_app/screens/favorite/app_favorite_page.dart';
import 'package:ui_test_app/screens/home_page/home_page.dart';
import 'package:ui_test_app/screens/search_page/search_page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _currentIndex = 0;

  // Screens (without Add Post in the middle)
  final List<Widget> _screens = [
    HomePage(),
    AppChatPage(),
    AppFavoritePage(),
    AppSettingsPage(),
  ];

  final List<String> _labels = ['Home', 'Chat', 'Favorites', 'Settings'];

  // Icons for the 4 nav items (Add Post will be FAB)
  final List<IconData> _icons = [
    Icons.home,
    Icons.chat,
    Icons.favorite,
    Icons.settings,
  ];
  Widget gradientIcon({
    required IconData icon,
    required bool isActive,
    double size = 24,
  }) {
    if (!isActive) {
      return Icon(icon, size: size, color: AppColors.navBarInactive);
    }

    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.gradient, AppColors.primary],
        ).createShader(bounds);
      },
      child: Icon(icon, size: size, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(side: BorderSide(color: AppColors.white, width: 3)),
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 500),
              pageBuilder: (_, animation, __) => AddPost(),
              transitionsBuilder: (_, animation, __, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [AppColors.gradient, AppColors.primary],
            ),
          ),
          child: Icon(Icons.add, color: AppColors.white, size: 30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: _icons.length,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        splashColor: AppColors.accent.withAlpha((0.2 * 255).toInt()),
        elevation: 8,
        height: 50,

        tabBuilder: (index, isActive) {
          // final color = isActive ? AppColors.primary : AppColors.navBarInactive;

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              gradientIcon(icon: _icons[index], isActive: isActive, size: 26),
              const SizedBox(height: 4),
              gradientText(
                text: _labels[index],
                isActive: isActive,
                fontSize: 12,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget gradientText({
    required String text,
    required bool isActive,
    double fontSize = 12,
  }) {
    if (!isActive) {
      return Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: AppColors.navBarInactive,
          fontWeight: FontWeight.w400,
        ),
      );
    }

    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [AppColors.gradient, AppColors.primary],
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white, // IMPORTANT
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
