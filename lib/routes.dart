import 'package:flutter/widgets.dart';
import 'package:eatright/screens/profile/profile.dart';
import 'package:eatright/screens/editProfile/editPro.dart';
import 'package:eatright/screens/settings/settings.dart';
import 'package:eatright/screens/onboarding/onboarding.dart'

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  ProfileScreen.routeName: (context) => ProfileScreen(),
  EditProfileScreen.routeName: (context) => EditProfileScreen(),
  SettingsScreen.routeName: (context) => SettingsScreen(),
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
};
