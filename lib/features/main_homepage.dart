
import 'package:first_project/features/bottom_navigations/code.dart';
import 'package:first_project/features/bottom_navigations/home.dart';
import 'package:first_project/features/bottom_navigations/newsfeed.dart';
import 'package:first_project/features/bottom_navigations/profile.dart';
import 'package:first_project/widgets/sidebar.dart';
import 'package:first_project/extension/bottom_nav_ext.dart';
import 'package:first_project/utils/enums.dart';
import 'package:first_project/widgets/draggable_fab.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  final _bottomScreens = [
    const AllLanguage(),
    const NewsFeedPage(),
    const CodePage(),
    const ProfilePage(),
  ];

  int selectedCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        title: const Text('CodeX'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFFEEEEEE),
      body: _bottomScreens[selectedCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF30CBF8),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        currentIndex: selectedCurrentIndex,
        onTap: (index) => setState(() => selectedCurrentIndex = index),
        items: BottomNavs.values
            .map((nav) => BottomNavigationBarItem(
                  icon: Icon(nav.icon),
                  label: nav.text,
                ))
            .toList(),
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 25),
      ),
      floatingActionButton: const PersonalHelper(),
    );
  }
}
