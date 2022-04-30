import 'package:eatright/routes.dart';
import 'package:eatright/screens/aboutUs/about_us.dart';
import 'package:eatright/screens/allergiesAndCuisines/components/AllergiesAndCuisines.dart';
import 'package:eatright/screens/createprofilepage.dart';
import 'package:eatright/screens/generateMeal/generate.dart';
import 'package:eatright/screens/home/home.dart';
import 'package:eatright/screens/login_screen.dart';
import 'package:eatright/screens/mainNavigationPage.dart';
import 'package:eatright/screens/signup_screen.dart';
import 'package:eatright/screens/splash_screen.dart';
import 'package:eatright/screens/weeklyUpdates/weekly_updates.dart';
import 'package:eatright/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff009688),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          headline2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          bodyText1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.grey),
          headline3: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.white), //For Buttons
          headline4: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Color(0xff009688)), //For Buttons
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
