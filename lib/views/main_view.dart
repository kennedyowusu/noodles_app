import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/constants/data.dart';
import 'package:gobe_app/views/home.dart';
import 'package:gobe_app/views/profile.dart';
import 'package:gobe_app/views/search.dart';

class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

// Screens
  final List<Widget> _screens = [
    const HomeView(),
    const SearchView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CupertinoTabBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        activeColor: primaryColor,
        inactiveColor: bodyTextColor,
        items: List.generate(
          navItems.length,
          (index) => BottomNavigationBarItem(
            icon: Image.asset(
              navItems[index]["icon"],
              height: 30,
              width: 30,
            ),
            label: navItems[index]["title"],
          ),
        ),
      ),
    );
  }
}
