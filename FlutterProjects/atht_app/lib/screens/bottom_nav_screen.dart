import 'package:atht_app/constants/atht_colors.dart';
import 'package:atht_app/screens/menu/explore_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    ExploreScreen(),
    ExploreScreen(),
    ExploreScreen(),
    ExploreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AthtColors.scaffoldBgColor,
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: AthtColors.colorHintText.withOpacity(.25),
                  offset: Offset(0, 0),
                  blurRadius: 30,
                  spreadRadius: -20)
            ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: AthtColors.colorDarkBlue,
            unselectedItemColor: AthtColors.colorHintText,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            iconSize: 40,
            elevation: 2.0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore), label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cake), label: 'Applications'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline_outlined),
                  label: 'Bookmarks'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded), label: 'Profile'),
            ],
          ),
        ),
      ),
      body: SafeArea(child: pages.elementAt(_selectedIndex)),
    );
  }
}
