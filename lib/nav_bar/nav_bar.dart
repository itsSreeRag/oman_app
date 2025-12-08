
import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/add_post/add_post.dart';
import 'package:ui_test_app/screens/home_page/home_page.dart';
import 'package:ui_test_app/screens/app_settings_page/app_settings_page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  List screens = [HomePage(), AddPost(), AppSettingsPage()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },

        selectedItemColor: Colors.deepOrangeAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Post'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
