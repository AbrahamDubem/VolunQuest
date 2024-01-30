import 'package:czar_test_1/screen/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/Profile.dart';
import '../screen/Search.dart';
import '../screen/communities.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screen = [
    const HomeScreen(),
    const Search(),
    const Communities(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF228B22),
          unselectedItemColor: Colors.green.shade200,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: "Search"),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_3), label: "Communities"),
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
