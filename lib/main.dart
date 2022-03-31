import 'package:flutter/material.dart';
import 'package:eatright/view/home.dart';
import 'package:eatright/view/currentmeal.dart';
import 'package:eatright/view/progress.dart';
import 'package:eatright/view/userprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EatRight App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'EatRight'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // adding the current page index for the bottom nav bar
  int _currentIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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

        items: [
          BottomNavigationBarItem(
            // 0th index of the _screen list is home page function
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            // 1st index of the _screen list is Progress Page
            label: "Progress",
            icon: Icon(Icons.bar_chart),
          ),
          BottomNavigationBarItem(
            label: "Current Meal",
            icon: Icon(Icons.food_bank),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
  // bottom bar widget end
}
