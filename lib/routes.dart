import 'package:eatright/screens/createprofilepage.dart';
import 'package:eatright/screens/editProfile/editPro.dart';
import 'package:eatright/screens/generateMeal/generate.dart';
import 'package:eatright/screens/login_screen.dart';
import 'package:eatright/screens/onboarding/onboarding.dart';
import 'package:eatright/screens/settings/settings.dart';
import 'package:eatright/screens/signup_screen.dart';
import 'package:eatright/screens/splash_screen.dart';
import 'package:eatright/screens/userProfile/userProfile.dart';
import 'package:eatright/screens/welcome_screen.dart';
import 'package:eatright/screens/mainNavigationPage.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPageWidget.routeName: (context) => LoginPageWidget(),
  SignUpPageWidget.routeName: (context) => SignUpPageWidget(),
  SplashScreen.routeName: (context) => SplashScreen(),
  WelcomePageWidget.routeName: (context) => WelcomePageWidget(),
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  CreateProfilePageWidget.routeName:(context) => CreateProfilePageWidget(),
  BottomNavigation.routeName:(context) => BottomNavigation(),
  UserProfilePage.routeName:(context) => UserProfilePage(),
  SettingsScreen.routeName:(context) => SettingsScreen(),
  EditProfileScreen.routeName:(context) => EditProfileScreen(),
  GenerateMealPage.routeName:(context) => GenerateMealPage(),
};
