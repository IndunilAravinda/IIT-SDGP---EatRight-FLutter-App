import 'package:eatright/screens/login_screen.dart';
import 'package:eatright/screens/signup_screen.dart';
import 'package:eatright/screens/splash_screen.dart';
import 'package:eatright/screens/welcome_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPageWidget.routeName: (context) => LoginPageWidget(),
  SignUpPageWidget.routeName: (context) => SignUpPageWidget(),
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomePageWidget.routeName: (context) => WelcomePageWidget(),
};
