import 'package:eatright/screens/generateMeal/generate.dart';
import 'package:eatright/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:eatright/routes.dart';
import 'package:eatright/screens/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(99, 58, 163, 154),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          headline2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey),
          headline3: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.white), //For Buttons
          headline4: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(100, 75, 180, 171)), //For Buttons
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'EatRight',
      // home: ProfileScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: GenerateScreen.routeName,
      routes: routes,
    );
  }
}
