import 'package:eatright/screens/generateMeal/generate.dart';
import 'package:eatright/screens/home/home.dart';
import 'package:eatright/screens/progress/progress.dart';
import 'package:eatright/screens/userProfile/userProfile.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _counter = 0;

  // adding the current page index for the bottom nav bar
  int _currentIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // list of interfaces for the bottom nav bar
  final List _screens = [
    HomePage(),
    ProgressPage(),
    GenerateMealPage(),
    UserProfilePage()
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

// bottombar widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //bottom bar features

        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 15,
        unselectedFontSize: 12,
        iconSize: 30,

        // bottom bar nav items

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            // 0th index of the _screen list is home page function
            label: "Home",
            icon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
            // 1st index of the _screen list is Progress Page
            label: "Progress",
            icon: Icon(Icons.bar_chart),
          ),
          const BottomNavigationBarItem(
            label: "Current Meal",
            icon: Icon(Icons.food_bank),
          ),
          const BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
  // bottom bar widget end
}