import 'package:flutter/material.dart';
import 'package:eatright/view/currentmeal.dart';
import 'package:eatright/view/progress.dart';
import 'package:eatright/view/userprofile.dart';

class HomePage extends StatefulWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Home"),
  //     ),
  //   );
  // }

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  // index of screens
  int _counter = 0;

  // adding the current page index for the bottom nav bar
  int _currentIndex = 0;

  // list of interfaces for the bottom nav bar
  List _screens = [
    HomePage(),
    ProgressPage(),
    CurrentMealPage(),
    UserProfile()
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
// bottombar widget

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: _screens[_currentIndex],
  //     bottomNavigationBar: BottomNavigationBar(
  //       //bottom bar features

  //       type: BottomNavigationBarType.fixed,
  //       currentIndex: _currentIndex,
  //       onTap: _updateIndex,
  //       selectedItemColor: Colors.blue[700],
  //       selectedFontSize: 15,
  //       unselectedFontSize: 12,
  //       iconSize: 30,

  //       // bottom bar nav items

  //       items: [
  //         BottomNavigationBarItem(
  //           // 0th index of the _screen list is home page function
  //           label: "Home",
  //           icon: Icon(Icons.home),
  //         ),
  //         BottomNavigationBarItem(
  //           // 1st index of the _screen list is Progress Page
  //           label: "Progress",
  //           icon: Icon(Icons.bar_chart),
  //         ),
  //         BottomNavigationBarItem(
  //           label: "Current Meal",
  //           icon: Icon(Icons.food_bank),
  //         ),
  //         BottomNavigationBarItem(
  //           label: "Profile",
  //           icon: Icon(Icons.account_circle),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  // bottom bar widget end
}
